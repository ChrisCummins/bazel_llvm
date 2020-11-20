# Build file for LLVM release archives.

package(default_visibility = ["//visibility:public"])

load("@llvm//tools/bzl:macros.bzl", "cc_remap_library")

filegroup(
    name = "all_files",
    srcs = glob(["**"]),
)

filegroup(
    name = "libdir",
    srcs = [
        ":LLVMPolly",
        "lib",
    ],
)

cc_library(
    name = "headers",
    hdrs = glob([
        # LLVM uses some funky header extensions.
        "include/**/*.h",
        "include/**/*.inc",
        "include/**/*.def",
        "include/**/*.gen",
    ]),
    includes = ["include"],
)

# Add the "lib" prefix to LLVMPolly so that the
# bazel-generated -lLLVMPolly flag works.
cc_remap_library(
    name = "LLVMPolly",
    src = "lib/LLVMPolly.so",
    dst = "lib/libLLVMPolly.so",
)

cc_library(
    name = "shared_libs",
    srcs = [
        "lib/libLTO.so",
        "lib/libRemarks.so",
        "lib/libarcher.so",
        "lib/libc++.so",
        "lib/libc++abi.so",
        "lib/libclang.so",
        "lib/libclang-cpp.so",
        "lib/libgomp.so",
        "lib/libiomp5.so",
        "lib/libomp.so",
        "lib/libomptarget.so",
        "lib/libunwind.so",
    ],
)

cc_library(
    name = "static_libs",
    srcs = glob(["lib/*.a"]),
)

# Generated targets for binaries. See ./scripts/make_wrapper_script.sh

filegroup(
    name = "bugpoint",
    srcs = ["bin/bugpoint"],
)

filegroup(
    name = "c-index-test",
    srcs = ["bin/c-index-test"],
)

filegroup(
    name = "clang",
    srcs = ["bin/clang"],
)

filegroup(
    name = "clang++",
    srcs = ["bin/clang++"],
)

filegroup(
    name = "clang-10",
    srcs = ["bin/clang-10"],
)

filegroup(
    name = "clang-apply-replacements",
    srcs = ["bin/clang-apply-replacements"],
)

filegroup(
    name = "clang-change-namespace",
    srcs = ["bin/clang-change-namespace"],
)

filegroup(
    name = "clang-check",
    srcs = ["bin/clang-check"],
)

filegroup(
    name = "clang-cl",
    srcs = ["bin/clang-cl"],
)

filegroup(
    name = "clang-cpp",
    srcs = ["bin/clang-cpp"],
)

filegroup(
    name = "clang-doc",
    srcs = ["bin/clang-doc"],
)

filegroup(
    name = "clang-extdef-mapping",
    srcs = ["bin/clang-extdef-mapping"],
)

filegroup(
    name = "clang-format",
    srcs = ["bin/clang-format"],
)

filegroup(
    name = "clang-import-test",
    srcs = ["bin/clang-import-test"],
)

filegroup(
    name = "clang-include-fixer",
    srcs = ["bin/clang-include-fixer"],
)

filegroup(
    name = "clang-move",
    srcs = ["bin/clang-move"],
)

filegroup(
    name = "clang-offload-bundler",
    srcs = ["bin/clang-offload-bundler"],
)

filegroup(
    name = "clang-offload-wrapper",
    srcs = ["bin/clang-offload-wrapper"],
)

filegroup(
    name = "clang-query",
    srcs = ["bin/clang-query"],
)

filegroup(
    name = "clang-refactor",
    srcs = ["bin/clang-refactor"],
)

filegroup(
    name = "clang-rename",
    srcs = ["bin/clang-rename"],
)

filegroup(
    name = "clang-reorder-fields",
    srcs = ["bin/clang-reorder-fields"],
)

filegroup(
    name = "clang-scan-deps",
    srcs = ["bin/clang-scan-deps"],
)

filegroup(
    name = "clang-tidy",
    srcs = ["bin/clang-tidy"],
)

filegroup(
    name = "clangd",
    srcs = ["bin/clangd"],
)

filegroup(
    name = "diagtool",
    srcs = ["bin/diagtool"],
)

filegroup(
    name = "dsymutil",
    srcs = ["bin/dsymutil"],
)

filegroup(
    name = "find-all-symbols",
    srcs = ["bin/find-all-symbols"],
)

filegroup(
    name = "git-clang-format",
    srcs = ["bin/git-clang-format"],
)

filegroup(
    name = "hmaptool",
    srcs = ["bin/hmaptool"],
)

filegroup(
    name = "ld.lld",
    srcs = ["bin/ld.lld"],
)

filegroup(
    name = "ld64.lld",
    srcs = ["bin/ld64.lld"],
)

filegroup(
    name = "llc",
    srcs = ["bin/llc"],
)

filegroup(
    name = "lld",
    srcs = ["bin/lld"],
)

filegroup(
    name = "lld-link",
    srcs = ["bin/lld-link"],
)

filegroup(
    name = "lli",
    srcs = ["bin/lli"],
)

filegroup(
    name = "llvm-addr2line",
    srcs = ["bin/llvm-addr2line"],
)

filegroup(
    name = "llvm-ar",
    srcs = ["bin/llvm-ar"],
)

filegroup(
    name = "llvm-as",
    srcs = ["bin/llvm-as"],
)

filegroup(
    name = "llvm-bcanalyzer",
    srcs = ["bin/llvm-bcanalyzer"],
)

filegroup(
    name = "llvm-c-test",
    srcs = ["bin/llvm-c-test"],
)

filegroup(
    name = "llvm-cat",
    srcs = ["bin/llvm-cat"],
)

filegroup(
    name = "llvm-cfi-verify",
    srcs = ["bin/llvm-cfi-verify"],
)

filegroup(
    name = "llvm-config",
    srcs = ["bin/llvm-config"],
)

filegroup(
    name = "llvm-cov",
    srcs = ["bin/llvm-cov"],
)

filegroup(
    name = "llvm-cvtres",
    srcs = ["bin/llvm-cvtres"],
)

filegroup(
    name = "llvm-cxxdump",
    srcs = ["bin/llvm-cxxdump"],
)

filegroup(
    name = "llvm-cxxfilt",
    srcs = ["bin/llvm-cxxfilt"],
)

filegroup(
    name = "llvm-cxxmap",
    srcs = ["bin/llvm-cxxmap"],
)

filegroup(
    name = "llvm-diff",
    srcs = ["bin/llvm-diff"],
)

filegroup(
    name = "llvm-dis",
    srcs = ["bin/llvm-dis"],
)

filegroup(
    name = "llvm-dlltool",
    srcs = ["bin/llvm-dlltool"],
)

filegroup(
    name = "llvm-dwarfdump",
    srcs = ["bin/llvm-dwarfdump"],
)

filegroup(
    name = "llvm-dwp",
    srcs = ["bin/llvm-dwp"],
)

filegroup(
    name = "llvm-elfabi",
    srcs = ["bin/llvm-elfabi"],
)

filegroup(
    name = "llvm-exegesis",
    srcs = ["bin/llvm-exegesis"],
)

filegroup(
    name = "llvm-extract",
    srcs = ["bin/llvm-extract"],
)

filegroup(
    name = "llvm-ifs",
    srcs = ["bin/llvm-ifs"],
)

filegroup(
    name = "llvm-install-name-tool",
    srcs = ["bin/llvm-install-name-tool"],
)

filegroup(
    name = "llvm-jitlink",
    srcs = ["bin/llvm-jitlink"],
)

filegroup(
    name = "llvm-lib",
    srcs = ["bin/llvm-lib"],
)

filegroup(
    name = "llvm-link",
    srcs = ["bin/llvm-link"],
)

filegroup(
    name = "llvm-lipo",
    srcs = ["bin/llvm-lipo"],
)

filegroup(
    name = "llvm-lto",
    srcs = ["bin/llvm-lto"],
)

filegroup(
    name = "llvm-lto2",
    srcs = ["bin/llvm-lto2"],
)

filegroup(
    name = "llvm-mc",
    srcs = ["bin/llvm-mc"],
)

filegroup(
    name = "llvm-mca",
    srcs = ["bin/llvm-mca"],
)

filegroup(
    name = "llvm-modextract",
    srcs = ["bin/llvm-modextract"],
)

filegroup(
    name = "llvm-mt",
    srcs = ["bin/llvm-mt"],
)

filegroup(
    name = "llvm-nm",
    srcs = ["bin/llvm-nm"],
)

filegroup(
    name = "llvm-objcopy",
    srcs = ["bin/llvm-objcopy"],
)

filegroup(
    name = "llvm-objdump",
    srcs = ["bin/llvm-objdump"],
)

filegroup(
    name = "llvm-opt-report",
    srcs = ["bin/llvm-opt-report"],
)

filegroup(
    name = "llvm-pdbutil",
    srcs = ["bin/llvm-pdbutil"],
)

filegroup(
    name = "llvm-profdata",
    srcs = ["bin/llvm-profdata"],
)

filegroup(
    name = "llvm-ranlib",
    srcs = ["bin/llvm-ranlib"],
)

filegroup(
    name = "llvm-rc",
    srcs = ["bin/llvm-rc"],
)

filegroup(
    name = "llvm-readelf",
    srcs = ["bin/llvm-readelf"],
)

filegroup(
    name = "llvm-readobj",
    srcs = ["bin/llvm-readobj"],
)

filegroup(
    name = "llvm-reduce",
    srcs = ["bin/llvm-reduce"],
)

filegroup(
    name = "llvm-rtdyld",
    srcs = ["bin/llvm-rtdyld"],
)

filegroup(
    name = "llvm-size",
    srcs = ["bin/llvm-size"],
)

filegroup(
    name = "llvm-split",
    srcs = ["bin/llvm-split"],
)

filegroup(
    name = "llvm-stress",
    srcs = ["bin/llvm-stress"],
)

filegroup(
    name = "llvm-strings",
    srcs = ["bin/llvm-strings"],
)

filegroup(
    name = "llvm-strip",
    srcs = ["bin/llvm-strip"],
)

filegroup(
    name = "llvm-symbolizer",
    srcs = ["bin/llvm-symbolizer"],
)

filegroup(
    name = "llvm-tblgen",
    srcs = ["bin/llvm-tblgen"],
)

filegroup(
    name = "llvm-undname",
    srcs = ["bin/llvm-undname"],
)

filegroup(
    name = "llvm-xray",
    srcs = ["bin/llvm-xray"],
)

filegroup(
    name = "modularize",
    srcs = ["bin/modularize"],
)

filegroup(
    name = "obj2yaml",
    srcs = ["bin/obj2yaml"],
)

filegroup(
    name = "opt",
    srcs = ["bin/opt"],
)

filegroup(
    name = "pp-trace",
    srcs = ["bin/pp-trace"],
)

filegroup(
    name = "sancov",
    srcs = ["bin/sancov"],
)

filegroup(
    name = "sanstats",
    srcs = ["bin/sanstats"],
)

filegroup(
    name = "scan-build",
    srcs = ["bin/scan-build"],
)

filegroup(
    name = "scan-view",
    srcs = ["bin/scan-view"],
)

filegroup(
    name = "verify-uselistorder",
    srcs = ["bin/verify-uselistorder"],
)

filegroup(
    name = "wasm-ld",
    srcs = ["bin/wasm-ld"],
)

filegroup(
    name = "yaml2obj",
    srcs = ["bin/yaml2obj"],
)
