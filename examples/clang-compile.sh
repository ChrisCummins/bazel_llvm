#!/usr/bin/env bash
# Test compiling an object file from an input.
set -euo pipefail

main() {
  set -x
  echo 'int main() {}' | "$1" -xc - -c
}
main $@
