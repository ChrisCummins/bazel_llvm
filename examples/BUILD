# Examples of using LLVM.

sh_test(
    name = "clang-compile-10.0.0",
    srcs = ["clang-compile.sh"],
    data = ["@llvm//10.0.0:clang"],
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

cc_binary(
    name = "clang-interpreter",
    srcs = ["clang-interpreter.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//10.0.0"],
)

sh_test(
    name = "clang-interpreter-test",
    srcs = ["clang-interpreter-test.sh"],
    data = [":clang-interpreter"],
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

cc_test(
    name = "fibonacci_10.0.0",
    srcs = ["fibonacci.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//10.0.0"],
)

cc_library(
    name = "hello-pass-10.0.0",
    srcs = ["hello-pass.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//10.0.0"],
)

cc_test(
    name = "hello-world-10.0.0",
    srcs = ["hello-world.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//10.0.0"],
)
