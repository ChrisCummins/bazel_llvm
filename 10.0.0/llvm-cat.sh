#!/usr/bin/env bash
# Wrapper script to run LLVM binary.

# --- begin runfiles.bash initialization v2 ---
# Copy-pasted from the Bazel Bash runfiles library v2.
f=bazel_tools/tools/bash/runfiles/runfiles.bash
source "${RUNFILES_DIR:-/dev/null}/$f" 2>/dev/null ||
  source "$(grep -sm1 "^$f " "${RUNFILES_MANIFEST_FILE:-/dev/null}" | cut -f2- -d' ')" 2>/dev/null ||
  source "$0.runfiles/$f" 2>/dev/null ||
  source "$(grep -sm1 "^$f " "$0.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null ||
  source "$(grep -sm1 "^$f " "$0.exe.runfiles_manifest" | cut -f2- -d' ')" 2>/dev/null ||
  {
    echo >&2 "ERROR: cannot find $f"
    exit 1
  }
f=
# --- end runfiles.bash initialization v2 ---

set -e
if [[ -n $(rlocation clang-llvm-10.0.0-x86_64-apple-darwin/bin/llvm-cat) ]]; then
  $(rlocation clang-llvm-10.0.0-x86_64-apple-darwin/bin/llvm-cat) "$@"
elif [[ -n $(rlocation clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/llvm-cat) ]]; then
  $(rlocation clang-llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/llvm-cat) "$@"
else
  echo "clang not found!" >&2
  exit 1
fi
