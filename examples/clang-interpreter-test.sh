#!/usr/bin/env bash
set -euo pipefail

main() {
  set -x
  echo 'int main() {return 2-2;}' | "$1" -xc -
}
main $@
