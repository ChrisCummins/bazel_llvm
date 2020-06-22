# `bazel_llvm`: LLVM libraries and binaries for bazel

[![Build Status](https://travis-ci.org/ChrisCummins/bazel_llvm.svg?branch=master)](https://travis-ci.org/ChrisCummins/bazel_llvm)


## Overview

Pre-built [LLVM releases](https://releases.llvm.org/download.html) use
as dependencies in bazel projects:

 * `@llvm//<version>` provides a `cc_library` that can be used as
   `dep` for C++ apps in bazel that link against LLVM.
 * `@llvm//<vesion>:<bin>` provides pre-built LLVM binaries, e.g.
   `@llvm//10.0.0:clang` provides clang 10 binary. This can be used as
   a `data` dep of scripts.

Supported compiler / OS versions:

 * Ubuntu Linux 18.04 with clang / gcc >= 7.
 * macOS >= 10.15.

## Getting Started

Add the following to your WORKSPACE file:

```py
http_archive(
    name = "llvm",
    strip_prefix = "bazel_llvm-<stable-commit>",
    urls = ["https://github.com/ChrisCummins/bazel_llvm/archive/<stable-commit>.tar.gz"],
)

load("@llvm//tools/bzl:deps.bzl", "llvm_deps")
llvm_deps()
```

In your BUILD files, reference `@llvm//<version>:<target>`:

```py
# Link against LLVM 10.0.0 as a regular C++ dependency:
cc_library(
    name = "my_lib",
    srcs = ["my_lib.cc"],
    copts = ["-std=c++14", "-fno-rtti"],  # required
    deps = ["@llvm//10.0.0"],
)

# Use pre-compiled opt as a data dependency:
sh_binary(
    name = "my_script",
    srcs = ["my_script.sh"],
    data = ["@llvm//10.0.0:opt"],
)
```

See the [examples](examples/) directory for further usage.


## Known issues

* This uses LLVM releases archives, which are Release builds without
  assertions enabled. To use a debug build, or one with assertions
  enabled, you would need to provide your own build archive and update
  the archives in [tools/bzl/deps.bzl](tools/bzl/deps.bzl).


## Work-in-progress: building from source

I have tried a couple of times to get LLVM to build from source as a
`cmake_external()` target using `rules_foreign_cc`. I have yet to get
it to work. There seems to be conflicts between the bazel build
environment and the build environment that LLVM usually expects.

You can see my latest attempt
[here](https://github.com/ChrisCummins/bazel_llvm/blob/2d657e1c258db825cd66ae709898beb1324709b7/10.0.0/BUILD#L8-L432).
I have a working Debug build on macOS, but now I get double-defined
static variable errors when I link against it from a `cc_library()`. I
don't have the patience to figure out enough about LLVM/Bazel build
internals to crack it. If you want to give it a go, build:

```sh
$ bazel build @llvm//10.0.0:debug --sandbox_debug
```

Patches welcome! ❤️
