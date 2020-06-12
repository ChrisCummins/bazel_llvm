workspace(name = "llvm")

load("@llvm//tools/bzl:deps.bzl", "llvm_deps")

llvm_deps()

##### Begin work-in-progress for rules_foreign_cc build of LLVM:
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Rule repository. Note that I am using a fork which removes the default
# cmake options that are set by bazel.
http_archive(
    name = "rules_foreign_cc",
    sha256 = "dd2ccc6ad7227d36586f6bb3efe9bdf8b2b247bd420e36fdc19345369057d991",
    strip_prefix = "rules_foreign_cc-660ed328733bbc38e03f4b4949f05a14e3eaea4e",
    url = "https://github.com/ChrisCummins/rules_foreign_cc/archive/660ed328733bbc38e03f4b4949f05a14e3eaea4e.zip",
)

load("@rules_foreign_cc//:workspace_definitions.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies([])

all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

# The source code of LLVM 10.0.0
http_archive(
    name = "llvm-10.0.0-src",
    build_file_content = all_content,
    sha256 = "b81c96d2f8f40dc61b14a167513d87c0d813aae0251e06e11ae8a4384ca15451",
    strip_prefix = "llvm-project-llvmorg-10.0.0",
    urls = ["https://github.com/llvm/llvm-project/archive/llvmorg-10.0.0.tar.gz"],
)
