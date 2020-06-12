#!/usr/bin/env bash

main() {
  cd $@/lib
  find . -type f -name '*.a' | sort | sed 's,^./,        ", ; s/$/",/'
}
main $@
