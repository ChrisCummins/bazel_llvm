#!/usr/bin/env bash

main() {
  cd $@/bin
  find . -type f -executable | sort | sed 's,^./,        ", ; s/$/",/'
}
main $@
