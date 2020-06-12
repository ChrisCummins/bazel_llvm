#!/usr/bin/env bash
# Create a wrapper script for an LLVM binary and add the coresponding BUILD entry.
set -euo pipefail

main() {
  local version="$1"
  local binary="$2"

  local script=$version/$binary.sh
  local llvm_buildfile=llvm.BUILD
  local buildfile=$version/BUILD

  cat <<EOF >$script
#!/usr/bin/env bash
# Wrapper script to run LLVM binary.

# --- begin runfiles.bash initialization v2 ---
# Copy-pasted from the Bazel Bash runfiles library v2.
f=bazel_tools/tools/bash/runfiles/runfiles.bash
source "\${RUNFILES_DIR:-/dev/null}/\$f" 2>/dev/null ||
  source "\$(grep -sm1 "^\$f " "\${RUNFILES_MANIFEST_FILE:-/dev/null}" | cut -f2- -d' ')" 2>/dev/null ||
  source "\$0.runfiles/\$f" 2>/dev/null ||
  source "\$(grep -sm1 "^\$f " "\$0.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null ||
  source "\$(grep -sm1 "^\$f " "\$0.exe.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null ||
  {
    echo >&2 "ERROR: cannot find \$f"
    exit 1
  }
f=
# --- end runfiles.bash initialization v2 ---

set -e
if [[ -n \$(rlocation clang-llvm-$version-x86_64-apple-darwin/bin/$binary) ]]; then
  \$(rlocation clang-llvm-$version-x86_64-apple-darwin/bin/$binary) "$@"
elif [[ -n \$(rlocation clang-llvm-$version-x86_64-linux-gnu-ubuntu-18.04/bin/$binary) ]]; then
  \$(rlocation clang-llvm-$version-x86_64-linux-gnu-ubuntu-18.04/bin/$binary) "$@"
else
  echo "clang not found!" >&2
  exit 1
fi
EOF
  chmod +x $script

  cat <<EOF >>$llvm_buildfile

filegroup(
    name = "$binary",
    srcs = ["bin/$binary"],
)
EOF
}

cat <<EOF >>$buildfile

sh_binary(
    name = "$binary",
    srcs = ["$binary.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:$binary",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04//:$binary",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)
EOF
main $@
