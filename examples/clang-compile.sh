#!/usr/bin/env bash
#
# Usage: ./clang-compile.sh /path/to/clang
set -euo pipefail

main() {
  local clang="$1"

  set -x
  echo 'int main() {}' | $clang -xc -c -emit-llvm -S - -o -
}
main $@
