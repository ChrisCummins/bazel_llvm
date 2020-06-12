#!/usr/bin/env bash
# Usage: ./scripts/make_filegroups.sh /path/to/llvm/install

main() {
  local build="$1"

  for f in $(find $1/bin \( -type f -o -type l \) -printf '%f\n' | sort); do
    cat <<EOF

filegroup(
    name = "$f",
    srcs = ["bin/$f"],
)
EOF
  done
}
main $@
