#!/usr/bin/env bash

main() {
  cd $@/lib
  find . -type f -name '*.dylib' -o -name '*.so' | sort | sed 's,^./,        ", ; s/$/",/'
}
main $@
