# Examples of using LLVM.

sh_test(
    name = "clang-compile-3.8.0",
    srcs = ["clang-compile.sh"],
    data = ["@llvm//3.8.0:clang"],
    args = ["$(location @llvm//3.8.0:clang)"],
)

sh_test(
    name = "clang-compile-6.0.0",
    srcs = ["clang-compile.sh"],
    data = ["@llvm//6.0.0:clang"],
    args = ["$(location @llvm//6.0.0:clang)"],
)

sh_test(
    name = "clang-compile-10.0.0",
    srcs = ["clang-compile.sh"],
    data = ["@llvm//10.0.0:clang"],
    args = ["$(location @llvm//10.0.0:clang)"],
)

sh_test(
    name = "clang-compile-13.0.0",
    srcs = ["clang-compile.sh"],
    data = ["@llvm//13.0.0:clang"],
    args = ["$(location @llvm//13.0.0:clang)"],
)

cc_binary(
    name = "clang-interpreter-10.0.0",
    srcs = ["clang-interpreter.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//10.0.0"],
)

sh_test(
    name = "clang-interpreter-test-10.0.0",
    srcs = ["clang-interpreter-test.sh"],
    data = [":clang-interpreter-10.0.0"],
    args = ["$(location :clang-interpreter-10.0.0)"],
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
    name = "hello-world-3.8.0",
    srcs = ["hello-world.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
        "-D__STDC_CONSTANT_MACROS",
        "-D__STDC_LIMIT_MACROS",
    ],
    deps = ["@llvm//3.8.0"],
)

cc_test(
    name = "hello-world-6.0.0",
    srcs = ["hello-world.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//6.0.0"],
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

cc_test(
    name = "hello-world-13.0.0",
    srcs = ["hello-world.cc"],
    copts = [
        "-std=c++14",
        "-fno-exceptions",
        "-fno-rtti",
    ],
    deps = ["@llvm//13.0.0"],
)
