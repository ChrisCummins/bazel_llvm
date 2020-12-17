# LLVM 10.0.0.
package(default_visibility = ["//visibility:public"])

licenses(["notice"])

# This filegroup is a glob of the clang source tree.
filegroup(
    name = "clang_src",
    srcs = ["@clang-10.0.0//:all"],
)

filegroup(
    name = "clang_readme",
    srcs = ["@clang-10.0.0//:readme"],
)

# This filegroup is a glob of the LLVM source tree.
filegroup(
    name = "llvm_readme",
    srcs = ["@llvm-10.0.0//:readme"],
)

filegroup(
    name = "llvm_src",
    srcs = ["@llvm-10.0.0//:all"],
)

##### Begin work-in-progress for rules_foreign_cc build of LLVM:

# load("@rules_foreign_cc//tools/build_defs:cmake.bzl", "cmake_external")

# # Build a debug version of LLVM 10.0.0 from source.
# cmake_external(
#     name = "debug",
#     # Generated using: ./scripts/make_binaries.sh /path/to/local/llvm
#     binaries = [
#         "bugpoint",
#         "c-index-test",
#         "clang-10",
#         "clang-apply-replacements",
#         "clang-change-namespace",
#         "clang-check",
#         "clang-doc",
#         "clang-extdef-mapping",
#         "clang-format",
#         "clang-import-test",
#         "clang-include-fixer",
#         "clang-move",
#         "clang-offload-bundler",
#         "clang-offload-wrapper",
#         "clang-query",
#         "clang-refactor",
#         "clang-rename",
#         "clang-reorder-fields",
#         "clang-scan-deps",
#         "clang-tidy",
#         "clangd",
#         "clangd-xpc-test-client",
#         "diagtool",
#         "dsymutil",
#         "find-all-symbols",
#         "git-clang-format",
#         "hmaptool",
#         "llc",
#         "lli",
#         "llvm-ar",
#         "llvm-as",
#         "llvm-bcanalyzer",
#         "llvm-c-test",
#         "llvm-cat",
#         "llvm-cfi-verify",
#         "llvm-config",
#         "llvm-cov",
#         "llvm-cvtres",
#         "llvm-cxxdump",
#         "llvm-cxxfilt",
#         "llvm-cxxmap",
#         "llvm-diff",
#         "llvm-dis",
#         "llvm-dwarfdump",
#         "llvm-dwp",
#         "llvm-elfabi",
#         "llvm-exegesis",
#         "llvm-extract",
#         "llvm-ifs",
#         "llvm-jitlink",
#         "llvm-link",
#         "llvm-lipo",
#         "llvm-lto",
#         "llvm-lto2",
#         "llvm-mc",
#         "llvm-mca",
#         "llvm-modextract",
#         "llvm-mt",
#         "llvm-nm",
#         "llvm-objcopy",
#         "llvm-objdump",
#         "llvm-opt-report",
#         "llvm-pdbutil",
#         "llvm-profdata",
#         "llvm-rc",
#         "llvm-readobj",
#         "llvm-reduce",
#         "llvm-rtdyld",
#         "llvm-size",
#         "llvm-split",
#         "llvm-stress",
#         "llvm-strings",
#         "llvm-symbolizer",
#         "llvm-tblgen",
#         "llvm-undname",
#         "llvm-xray",
#         "mlir-cpu-runner",
#         "mlir-opt",
#         "mlir-tblgen",
#         "mlir-translate",
#         "modularize",
#         "obj2yaml",
#         "opt",
#         "pp-trace",
#         "sancov",
#         "sanstats",
#         "scan-build",
#         "scan-view",
#         "set-xcode-analyzer",
#         "verify-uselistorder",
#         "yaml2obj",
#     ],
#     cache_entries = {
#         # Projects can include: clang, clong-tools-extra, polly, compiler-rt
#         "LLVM_ENABLE_PROJECTS": "clang;clang-tools-extra;mlir",
#         # Available release types: Debug, Release, RelWithDebInfo, MinSizeRel
#         "CMAKE_BUILD_TYPE": "Debug",
#         "LLVM_ENABLE_ASSERTIONS": "On",
#         "LLVM_TOOL_POLLY_BUILD": "On",
#     },
#     # Use ninja to build. Ninja is parallelized so there will be churn when
#     # bazel is running a parallel build where this is one of the targets. Ideally,
#     # there would be a mechanism to specify that this target should be built
#     # on its own, but I'm not aware of anything like that.
#     cmake_options = ["-G Ninja"],
#     env_vars = select({
#         "//:darwin": {
#             # Don't use the bazel compiler wrappers as they cause cmake to
#             # complain about a missing libatomic.
#             "CC": "/Library/Developer/CommandLineTools/usr/bin/cc",
#             "CXX": "/Library/Developer/CommandLineTools/usr/bin/c++",
#             # Set the -w flag to suppress all warnings. This isn't required, but is
#             # convenient for reducing noise when finding the fault if the build fails.
#             "CFLAGS": "-w",
#             "CXXFLAGS": "-w",
#         },
#         "//conditions:default": {
#             # Set the -w flag to suppress all warnings. This isn't required, but is
#             # convenient for reducing noise when finding the fault if the build fails.
#             "CFLAGS": "-w",
#             "CXXFLAGS": "-w",
#         },
#     }),
#     lib_source = "@llvm-10.0.0-src//:all",
#     linkopts = [
#         # TODO: Output of llvm-config --ldflags
#     ],
#     make_commands = [
#         "ninja",
#         "ninja install",
#     ],
#     # Generated using: ./scripts/make_shared_libraries.sh /path/to/local/llvm
#     shared_libraries = [
#         "libClangdXPCLib.dylib",
#         "libLTO.dylib",
#         "libRemarks.dylib",
#         "libcblas.dylib",
#         "libcblas_interface.dylib",
#         "libclang-cpp.dylib",
#         "libclang.dylib",
#         "libmlir_runner_utils.dylib",
#     ],
#     # Generated using: ./scripts/make_static_libraries.sh /path/to/local/llvm
#     static_libraries = [
#         "libLLVMAArch64AsmParser.a",
#         "libLLVMAArch64CodeGen.a",
#         "libLLVMAArch64Desc.a",
#         "libLLVMAArch64Disassembler.a",
#         "libLLVMAArch64Info.a",
#         "libLLVMAArch64Utils.a",
#         "libLLVMAMDGPUAsmParser.a",
#         "libLLVMAMDGPUCodeGen.a",
#         "libLLVMAMDGPUDesc.a",
#         "libLLVMAMDGPUDisassembler.a",
#         "libLLVMAMDGPUInfo.a",
#         "libLLVMAMDGPUUtils.a",
#         "libLLVMARMAsmParser.a",
#         "libLLVMARMCodeGen.a",
#         "libLLVMARMDesc.a",
#         "libLLVMARMDisassembler.a",
#         "libLLVMARMInfo.a",
#         "libLLVMARMUtils.a",
#         "libLLVMAggressiveInstCombine.a",
#         "libLLVMAnalysis.a",
#         "libLLVMAsmParser.a",
#         "libLLVMAsmPrinter.a",
#         "libLLVMBPFAsmParser.a",
#         "libLLVMBPFCodeGen.a",
#         "libLLVMBPFDesc.a",
#         "libLLVMBPFDisassembler.a",
#         "libLLVMBPFInfo.a",
#         "libLLVMBinaryFormat.a",
#         "libLLVMBitReader.a",
#         "libLLVMBitWriter.a",
#         "libLLVMBitstreamReader.a",
#         "libLLVMCFGuard.a",
#         "libLLVMCodeGen.a",
#         "libLLVMCore.a",
#         "libLLVMCoroutines.a",
#         "libLLVMCoverage.a",
#         "libLLVMDWARFLinker.a",
#         "libLLVMDebugInfoCodeView.a",
#         "libLLVMDebugInfoDWARF.a",
#         "libLLVMDebugInfoGSYM.a",
#         "libLLVMDebugInfoMSF.a",
#         "libLLVMDebugInfoPDB.a",
#         "libLLVMDemangle.a",
#         "libLLVMDlltoolDriver.a",
#         "libLLVMExecutionEngine.a",
#         "libLLVMFrontendOpenMP.a",
#         "libLLVMFuzzMutate.a",
#         "libLLVMGlobalISel.a",
#         "libLLVMHexagonAsmParser.a",
#         "libLLVMHexagonCodeGen.a",
#         "libLLVMHexagonDesc.a",
#         "libLLVMHexagonDisassembler.a",
#         "libLLVMHexagonInfo.a",
#         "libLLVMIRReader.a",
#         "libLLVMInstCombine.a",
#         "libLLVMInstrumentation.a",
#         "libLLVMInterpreter.a",
#         "libLLVMJITLink.a",
#         "libLLVMLTO.a",
#         "libLLVMLanaiAsmParser.a",
#         "libLLVMLanaiCodeGen.a",
#         "libLLVMLanaiDesc.a",
#         "libLLVMLanaiDisassembler.a",
#         "libLLVMLanaiInfo.a",
#         "libLLVMLibDriver.a",
#         "libLLVMLineEditor.a",
#         "libLLVMLinker.a",
#         "libLLVMMC.a",
#         "libLLVMMCA.a",
#         "libLLVMMCDisassembler.a",
#         "libLLVMMCJIT.a",
#         "libLLVMMCParser.a",
#         "libLLVMMIRParser.a",
#         "libLLVMMLIRTableGen.a",
#         "libLLVMMSP430AsmParser.a",
#         "libLLVMMSP430CodeGen.a",
#         "libLLVMMSP430Desc.a",
#         "libLLVMMSP430Disassembler.a",
#         "libLLVMMSP430Info.a",
#         "libLLVMMipsAsmParser.a",
#         "libLLVMMipsCodeGen.a",
#         "libLLVMMipsDesc.a",
#         "libLLVMMipsDisassembler.a",
#         "libLLVMMipsInfo.a",
#         "libLLVMNVPTXCodeGen.a",
#         "libLLVMNVPTXDesc.a",
#         "libLLVMNVPTXInfo.a",
#         "libLLVMObjCARCOpts.a",
#         "libLLVMObject.a",
#         "libLLVMObjectYAML.a",
#         "libLLVMOption.a",
#         "libLLVMOrcError.a",
#         "libLLVMOrcJIT.a",
#         "libLLVMPasses.a",
#         "libLLVMPowerPCAsmParser.a",
#         "libLLVMPowerPCCodeGen.a",
#         "libLLVMPowerPCDesc.a",
#         "libLLVMPowerPCDisassembler.a",
#         "libLLVMPowerPCInfo.a",
#         "libLLVMProfileData.a",
#         "libLLVMRISCVAsmParser.a",
#         "libLLVMRISCVCodeGen.a",
#         "libLLVMRISCVDesc.a",
#         "libLLVMRISCVDisassembler.a",
#         "libLLVMRISCVInfo.a",
#         "libLLVMRISCVUtils.a",
#         "libLLVMRemarks.a",
#         "libLLVMRuntimeDyld.a",
#         "libLLVMScalarOpts.a",
#         "libLLVMSelectionDAG.a",
#         "libLLVMSparcAsmParser.a",
#         "libLLVMSparcCodeGen.a",
#         "libLLVMSparcDesc.a",
#         "libLLVMSparcDisassembler.a",
#         "libLLVMSparcInfo.a",
#         "libLLVMSupport.a",
#         "libLLVMSymbolize.a",
#         "libLLVMSystemZAsmParser.a",
#         "libLLVMSystemZCodeGen.a",
#         "libLLVMSystemZDesc.a",
#         "libLLVMSystemZDisassembler.a",
#         "libLLVMSystemZInfo.a",
#         "libLLVMTableGen.a",
#         "libLLVMTarget.a",
#         "libLLVMTextAPI.a",
#         "libLLVMTransformUtils.a",
#         "libLLVMVectorize.a",
#         "libLLVMWebAssemblyAsmParser.a",
#         "libLLVMWebAssemblyCodeGen.a",
#         "libLLVMWebAssemblyDesc.a",
#         "libLLVMWebAssemblyDisassembler.a",
#         "libLLVMWebAssemblyInfo.a",
#         "libLLVMWindowsManifest.a",
#         "libLLVMX86AsmParser.a",
#         "libLLVMX86CodeGen.a",
#         "libLLVMX86Desc.a",
#         "libLLVMX86Disassembler.a",
#         "libLLVMX86Info.a",
#         "libLLVMX86Utils.a",
#         "libLLVMXCoreCodeGen.a",
#         "libLLVMXCoreDesc.a",
#         "libLLVMXCoreDisassembler.a",
#         "libLLVMXCoreInfo.a",
#         "libLLVMXRay.a",
#         "libLLVMipo.a",
#         "libMLIRAffineOps.a",
#         "libMLIRAffineToStandard.a",
#         "libMLIRAnalysis.a",
#         "libMLIRDialect.a",
#         "libMLIREDSC.a",
#         "libMLIREDSCInterface.a",
#         "libMLIRExecutionEngine.a",
#         "libMLIRFxpMathOps.a",
#         "libMLIRGPU.a",
#         "libMLIRGPUtoCUDATransforms.a",
#         "libMLIRGPUtoNVVMTransforms.a",
#         "libMLIRGPUtoROCDLTransforms.a",
#         "libMLIRGPUtoSPIRVTransforms.a",
#         "libMLIRIR.a",
#         "libMLIRJitRunner.a",
#         "libMLIRLLVMIR.a",
#         "libMLIRLinalg.a",
#         "libMLIRLinalgToLLVM.a",
#         "libMLIRLoopOps.a",
#         "libMLIRLoopToStandard.a",
#         "libMLIRLoopsToGPU.a",
#         "libMLIRMlirOptLib.a",
#         "libMLIRNVVMIR.a",
#         "libMLIROptMain.a",
#         "libMLIRParser.a",
#         "libMLIRPass.a",
#         "libMLIRQuantOps.a",
#         "libMLIRQuantizerFxpMathConfig.a",
#         "libMLIRQuantizerSupport.a",
#         "libMLIRQuantizerTransforms.a",
#         "libMLIRROCDLIR.a",
#         "libMLIRSDBM.a",
#         "libMLIRSPIRV.a",
#         "libMLIRSPIRVSerialization.a",
#         "libMLIRSPIRVTestPasses.a",
#         "libMLIRSPIRVTransforms.a",
#         "libMLIRStandardOps.a",
#         "libMLIRStandardToLLVM.a",
#         "libMLIRStandardToSPIRVTransforms.a",
#         "libMLIRSupport.a",
#         "libMLIRTargetLLVMIR.a",
#         "libMLIRTargetLLVMIRModuleTranslation.a",
#         "libMLIRTargetNVVMIR.a",
#         "libMLIRTargetROCDLIR.a",
#         "libMLIRTestDialect.a",
#         "libMLIRTestIR.a",
#         "libMLIRTestPass.a",
#         "libMLIRTestTransforms.a",
#         "libMLIRTransformUtils.a",
#         "libMLIRTransforms.a",
#         "libMLIRTranslateClParser.a",
#         "libMLIRTranslation.a",
#         "libMLIRVectorOps.a",
#         "libMLIRVectorToLLVM.a",
#         "libMLIRVectorToLoops.a",
#         "libclangARCMigrate.a",
#         "libclangAST.a",
#         "libclangASTMatchers.a",
#         "libclangAnalysis.a",
#         "libclangApplyReplacements.a",
#         "libclangBasic.a",
#         "libclangChangeNamespace.a",
#         "libclangCodeGen.a",
#         "libclangCrossTU.a",
#         "libclangDaemon.a",
#         "libclangDaemonTweaks.a",
#         "libclangDependencyScanning.a",
#         "libclangDirectoryWatcher.a",
#         "libclangDoc.a",
#         "libclangDriver.a",
#         "libclangDynamicASTMatchers.a",
#         "libclangEdit.a",
#         "libclangFormat.a",
#         "libclangFrontend.a",
#         "libclangFrontendTool.a",
#         "libclangHandleCXX.a",
#         "libclangHandleLLVM.a",
#         "libclangIncludeFixer.a",
#         "libclangIncludeFixerPlugin.a",
#         "libclangIndex.a",
#         "libclangLex.a",
#         "libclangMove.a",
#         "libclangParse.a",
#         "libclangQuery.a",
#         "libclangReorderFields.a",
#         "libclangRewrite.a",
#         "libclangRewriteFrontend.a",
#         "libclangSema.a",
#         "libclangSerialization.a",
#         "libclangStaticAnalyzerCheckers.a",
#         "libclangStaticAnalyzerCore.a",
#         "libclangStaticAnalyzerFrontend.a",
#         "libclangTidy.a",
#         "libclangTidyAbseilModule.a",
#         "libclangTidyAndroidModule.a",
#         "libclangTidyBoostModule.a",
#         "libclangTidyBugproneModule.a",
#         "libclangTidyCERTModule.a",
#         "libclangTidyCppCoreGuidelinesModule.a",
#         "libclangTidyDarwinModule.a",
#         "libclangTidyFuchsiaModule.a",
#         "libclangTidyGoogleModule.a",
#         "libclangTidyHICPPModule.a",
#         "libclangTidyLLVMModule.a",
#         "libclangTidyLinuxKernelModule.a",
#         "libclangTidyMPIModule.a",
#         "libclangTidyMiscModule.a",
#         "libclangTidyModernizeModule.a",
#         "libclangTidyObjCModule.a",
#         "libclangTidyOpenMPModule.a",
#         "libclangTidyPerformanceModule.a",
#         "libclangTidyPlugin.a",
#         "libclangTidyPortabilityModule.a",
#         "libclangTidyReadabilityModule.a",
#         "libclangTidyUtils.a",
#         "libclangTidyZirconModule.a",
#         "libclangTooling.a",
#         "libclangToolingASTDiff.a",
#         "libclangToolingCore.a",
#         "libclangToolingInclusions.a",
#         "libclangToolingRefactoring.a",
#         "libclangToolingSyntax.a",
#         "libclangTransformer.a",
#         "libclangdXpcJsonConversions.a",
#         "libclangdXpcTransport.a",
#         "libfindAllSymbols.a",
#     ],
#     # Manual tag to disable this broken rule from matching wildcards.
#     tags = ["manual"],
#     working_directory = "llvm",
# )
#
# filegroup(
#     name = "all_files",
#     srcs = select({
#         "//:darwin": ["@clang-llvm-10.0.0-x86_64-apple-darwin//:all_files"],
#         "//conditions:default": ["@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:all_files"],
#     }),
# )

##### End work-in-progress for rules_foreign_cc build of LLVM.

# copts = ["-std=c++14", "-fno-exceptions", "-fno-rtti"]
cc_library(
    name = "10.0.0",
    data = select({
        "//:darwin": ["@clang-llvm-10.0.0-x86_64-apple-darwin//:libdir"],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:libdir",
        ],
    }),
    linkopts = select({
        # llvm-config --ldflags
        "//:darwin": [
            "-Wl,-rpath,$(location @clang-llvm-10.0.0-x86_64-apple-darwin//:libdir)/",
            "-L$(location @clang-llvm-10.0.0-x86_64-apple-darwin//:libdir)/",
            "-Wl,-search_paths_first",
            "-Wl,-headerpad_max_install_names",
        ],
        "//conditions:default": [
            "-Wl,-rpath,$(location @clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:libdir)/",
            "-L$(location @clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:libdir)/",
        ],
    }) + select({
        # llvm-config --system-libs
        "//:darwin": [
            "-lz",
            "-lcurses",
            "-lm",
            "-lxml2",
        ],
        "//conditions:default": [
            "-lrt",
            "-ldl",
            "-ltinfo",
            "-lpthread",
            "-lm",
        ],
    }) + [
        # clang libs
        "-lclangARCMigrate",
        "-lclangFrontend",
        "-lclangFrontendTool",
        "-lclangDriver",
        "-lclangSerialization",
        "-lclangCodeGen",
        "-lclangParse",
        "-lclangSema",
        "-lclangRewriteFrontend",
        "-lclangRewrite",
        "-lclangStaticAnalyzerFrontend",
        "-lclangStaticAnalyzerCheckers",
        "-lclangStaticAnalyzerCore",
        "-lclangAnalysis",
        "-lclangEdit",
        "-lclangAST",
        "-lclangASTMatchers",
        "-lclangLex",
        "-lclangBasic",
        "-lclangTooling",
        "-lclangToolingCore",
        # llvm-config --libs
        "-lLLVMXRay",
        "-lLLVMWindowsManifest",
        "-lLLVMTableGen",
        "-lLLVMSymbolize",
        "-lLLVMDebugInfoPDB",
        "-lLLVMOrcJIT",
        "-lLLVMOrcError",
        "-lLLVMJITLink",
        "-lLLVMObjectYAML",
        "-lLLVMMCA",
        "-lLLVMLTO",
        "-lLLVMPasses",
        "-lLLVMObjCARCOpts",
        "-lLLVMLineEditor",
        "-lLLVMLibDriver",
        "-lLLVMInterpreter",
        "-lLLVMFuzzMutate",
        "-lLLVMFrontendOpenMP",
        "-lLLVMMCJIT",
        "-lLLVMExecutionEngine",
        "-lLLVMRuntimeDyld",
        "-lLLVMDWARFLinker",
        "-lLLVMDlltoolDriver",
        "-lLLVMOption",
        "-lLLVMDebugInfoGSYM",
        "-lLLVMCoverage",
        "-lLLVMCoroutines",
        "-lLLVMXCoreDisassembler",
        "-lLLVMXCoreCodeGen",
        "-lLLVMXCoreDesc",
        "-lLLVMXCoreInfo",
        "-lLLVMX86Disassembler",
        "-lLLVMX86AsmParser",
        "-lLLVMX86CodeGen",
        "-lLLVMX86Desc",
        "-lLLVMX86Utils",
        "-lLLVMX86Info",
        "-lLLVMWebAssemblyDisassembler",
        "-lLLVMWebAssemblyCodeGen",
        "-lLLVMWebAssemblyDesc",
        "-lLLVMWebAssemblyAsmParser",
        "-lLLVMWebAssemblyInfo",
        "-lLLVMSystemZDisassembler",
        "-lLLVMSystemZCodeGen",
        "-lLLVMSystemZAsmParser",
        "-lLLVMSystemZDesc",
        "-lLLVMSystemZInfo",
        "-lLLVMSparcDisassembler",
        "-lLLVMSparcCodeGen",
        "-lLLVMSparcAsmParser",
        "-lLLVMSparcDesc",
        "-lLLVMSparcInfo",
        "-lLLVMRISCVDisassembler",
        "-lLLVMRISCVCodeGen",
        "-lLLVMRISCVAsmParser",
        "-lLLVMRISCVDesc",
        "-lLLVMRISCVUtils",
        "-lLLVMRISCVInfo",
        "-lLLVMPowerPCDisassembler",
        "-lLLVMPowerPCCodeGen",
        "-lLLVMPowerPCAsmParser",
        "-lLLVMPowerPCDesc",
        "-lLLVMPowerPCInfo",
        "-lLLVMNVPTXCodeGen",
        "-lLLVMNVPTXDesc",
        "-lLLVMNVPTXInfo",
        "-lLLVMMSP430Disassembler",
        "-lLLVMMSP430CodeGen",
        "-lLLVMMSP430AsmParser",
        "-lLLVMMSP430Desc",
        "-lLLVMMSP430Info",
        "-lLLVMMipsDisassembler",
        "-lLLVMMipsCodeGen",
        "-lLLVMMipsAsmParser",
        "-lLLVMMipsDesc",
        "-lLLVMMipsInfo",
        "-lLLVMLanaiDisassembler",
        "-lLLVMLanaiCodeGen",
        "-lLLVMLanaiAsmParser",
        "-lLLVMLanaiDesc",
        "-lLLVMLanaiInfo",
        "-lLLVMHexagonDisassembler",
        "-lLLVMHexagonCodeGen",
        "-lLLVMHexagonAsmParser",
        "-lLLVMHexagonDesc",
        "-lLLVMHexagonInfo",
        "-lLLVMBPFDisassembler",
        "-lLLVMBPFCodeGen",
        "-lLLVMBPFAsmParser",
        "-lLLVMBPFDesc",
        "-lLLVMBPFInfo",
        "-lLLVMARMDisassembler",
        "-lLLVMARMCodeGen",
        "-lLLVMARMAsmParser",
        "-lLLVMARMDesc",
        "-lLLVMARMUtils",
        "-lLLVMARMInfo",
        "-lLLVMAMDGPUDisassembler",
        "-lLLVMAMDGPUCodeGen",
        "-lLLVMMIRParser",
        "-lLLVMipo",
        "-lLLVMInstrumentation",
        "-lLLVMVectorize",
        "-lLLVMLinker",
        "-lLLVMIRReader",
        "-lLLVMAsmParser",
        "-lLLVMAMDGPUAsmParser",
        "-lLLVMAMDGPUDesc",
        "-lLLVMAMDGPUUtils",
        "-lLLVMAMDGPUInfo",
        "-lLLVMAArch64Disassembler",
        "-lLLVMMCDisassembler",
        "-lLLVMAArch64CodeGen",
        "-lLLVMCFGuard",
        "-lLLVMGlobalISel",
        "-lLLVMSelectionDAG",
        "-lLLVMAsmPrinter",
        "-lLLVMDebugInfoDWARF",
        "-lLLVMCodeGen",
        "-lLLVMTarget",
        "-lLLVMScalarOpts",
        "-lLLVMInstCombine",
        "-lLLVMAggressiveInstCombine",
        "-lLLVMTransformUtils",
        "-lLLVMBitWriter",
        "-lLLVMAnalysis",
        "-lLLVMProfileData",
        "-lLLVMObject",
        "-lLLVMTextAPI",
        "-lLLVMBitReader",
        "-lLLVMCore",
        "-lLLVMRemarks",
        "-lLLVMBitstreamReader",
        "-lLLVMAArch64AsmParser",
        "-lLLVMMCParser",
        "-lLLVMAArch64Desc",
        "-lLLVMMC",
        "-lLLVMDebugInfoCodeView",
        "-lLLVMDebugInfoMSF",
        "-lLLVMBinaryFormat",
        "-lLLVMAArch64Utils",
        "-lLLVMAArch64Info",
        "-lLLVMSupport",
        "-lLLVMDemangle",
    ],
    deps = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:headers",
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:libs",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:headers",
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:static_libs",
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:LLVMPolly",
        ],
    }),
)

# Generated filegroups, see ./scripts/make_llvm_10.0.0_wrapper_scripts.sh.

sh_binary(
    name = "bugpoint",
    srcs = ["bugpoint.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:bugpoint",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:bugpoint",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "c-index-test",
    srcs = ["c-index-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:c-index-test",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:c-index-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang",
    srcs = ["clang.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang++",
    srcs = ["clang++.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang++",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang++",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-10",
    srcs = ["clang-10.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-10",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-10",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-apply-replacements",
    srcs = ["clang-apply-replacements.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-apply-replacements",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-apply-replacements",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-change-namespace",
    srcs = ["clang-change-namespace.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-change-namespace",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-change-namespace",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-check",
    srcs = ["clang-check.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-check",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-check",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-cl",
    srcs = ["clang-cl.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-cl",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-cl",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-cpp",
    srcs = ["clang-cpp.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-cpp",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-cpp",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-doc",
    srcs = ["clang-doc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-doc",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-doc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-extdef-mapping",
    srcs = ["clang-extdef-mapping.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-extdef-mapping",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-extdef-mapping",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-format",
    srcs = ["clang-format.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-format",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-format",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-import-test",
    srcs = ["clang-import-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-import-test",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-import-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-include-fixer",
    srcs = ["clang-include-fixer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-include-fixer",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-include-fixer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-move",
    srcs = ["clang-move.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-move",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-move",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-offload-bundler",
    srcs = ["clang-offload-bundler.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-offload-bundler",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-offload-bundler",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-offload-wrapper",
    srcs = ["clang-offload-wrapper.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-offload-wrapper",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-offload-wrapper",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-query",
    srcs = ["clang-query.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-query",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-query",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-refactor",
    srcs = ["clang-refactor.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-refactor",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-refactor",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-rename",
    srcs = ["clang-rename.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-rename",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-rename",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-reorder-fields",
    srcs = ["clang-reorder-fields.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-reorder-fields",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-reorder-fields",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-scan-deps",
    srcs = ["clang-scan-deps.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-scan-deps",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-scan-deps",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clang-tidy",
    srcs = ["clang-tidy.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clang-tidy",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clang-tidy",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "clangd",
    srcs = ["clangd.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:clangd",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:clangd",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "diagtool",
    srcs = ["diagtool.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:diagtool",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:diagtool",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "dsymutil",
    srcs = ["dsymutil.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:dsymutil",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:dsymutil",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "find-all-symbols",
    srcs = ["find-all-symbols.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:find-all-symbols",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:find-all-symbols",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "git-clang-format",
    srcs = ["git-clang-format.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:git-clang-format",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:git-clang-format",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "hmaptool",
    srcs = ["hmaptool.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:hmaptool",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:hmaptool",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "ld.lld",
    srcs = ["ld.lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:ld.lld",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:ld.lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "ld64.lld",
    srcs = ["ld64.lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:ld64.lld",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:ld64.lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llc",
    srcs = ["llc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llc",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lld",
    srcs = ["lld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:lld",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:lld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lld-link",
    srcs = ["lld-link.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:lld-link",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:lld-link",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "lli",
    srcs = ["lli.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:lli",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:lli",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-addr2line",
    srcs = ["llvm-addr2line.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-addr2line",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-addr2line",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-ar",
    srcs = ["llvm-ar.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-ar",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-ar",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-as",
    srcs = ["llvm-as.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-as",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-as",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-bcanalyzer",
    srcs = ["llvm-bcanalyzer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-bcanalyzer",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-bcanalyzer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-c-test",
    srcs = ["llvm-c-test.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-c-test",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-c-test",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cat",
    srcs = ["llvm-cat.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cat",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cat",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cfi-verify",
    srcs = ["llvm-cfi-verify.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cfi-verify",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cfi-verify",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-config",
    srcs = ["llvm-config.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-config",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-config",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cov",
    srcs = ["llvm-cov.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cov",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cov",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cvtres",
    srcs = ["llvm-cvtres.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cvtres",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cvtres",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cxxdump",
    srcs = ["llvm-cxxdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cxxdump",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cxxdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cxxfilt",
    srcs = ["llvm-cxxfilt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cxxfilt",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cxxfilt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-cxxmap",
    srcs = ["llvm-cxxmap.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-cxxmap",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-cxxmap",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-diff",
    srcs = ["llvm-diff.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-diff",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-diff",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dis",
    srcs = ["llvm-dis.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-dis",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-dis",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dlltool",
    srcs = ["llvm-dlltool.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-dlltool",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-dlltool",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dwarfdump",
    srcs = ["llvm-dwarfdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-dwarfdump",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-dwarfdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-dwp",
    srcs = ["llvm-dwp.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-dwp",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-dwp",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-elfabi",
    srcs = ["llvm-elfabi.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-elfabi",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-elfabi",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-exegesis",
    srcs = ["llvm-exegesis.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-exegesis",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-exegesis",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-extract",
    srcs = ["llvm-extract.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-extract",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-extract",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-ifs",
    srcs = ["llvm-ifs.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-ifs",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-ifs",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-install-name-tool",
    srcs = ["llvm-install-name-tool.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-install-name-tool",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-install-name-tool",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-jitlink",
    srcs = ["llvm-jitlink.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-jitlink",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-jitlink",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lib",
    srcs = ["llvm-lib.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-lib",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-lib",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-link",
    srcs = ["llvm-link.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-link",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-link",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lipo",
    srcs = ["llvm-lipo.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-lipo",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-lipo",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lto",
    srcs = ["llvm-lto.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-lto",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-lto",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-lto2",
    srcs = ["llvm-lto2.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-lto2",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-lto2",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mc",
    srcs = ["llvm-mc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-mc",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-mc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mca",
    srcs = ["llvm-mca.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-mca",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-mca",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-modextract",
    srcs = ["llvm-modextract.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-modextract",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-modextract",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-mt",
    srcs = ["llvm-mt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-mt",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-mt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-nm",
    srcs = ["llvm-nm.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-nm",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-nm",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-objcopy",
    srcs = ["llvm-objcopy.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-objcopy",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-objcopy",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-objdump",
    srcs = ["llvm-objdump.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-objdump",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-objdump",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-opt-report",
    srcs = ["llvm-opt-report.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-opt-report",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-opt-report",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-pdbutil",
    srcs = ["llvm-pdbutil.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-pdbutil",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-pdbutil",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-profdata",
    srcs = ["llvm-profdata.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-profdata",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-profdata",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-ranlib",
    srcs = ["llvm-ranlib.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-ranlib",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-ranlib",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-rc",
    srcs = ["llvm-rc.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-rc",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-rc",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-readelf",
    srcs = ["llvm-readelf.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-readelf",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-readelf",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-readobj",
    srcs = ["llvm-readobj.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-readobj",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-readobj",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-reduce",
    srcs = ["llvm-reduce.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-reduce",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-reduce",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-rtdyld",
    srcs = ["llvm-rtdyld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-rtdyld",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-rtdyld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-size",
    srcs = ["llvm-size.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-size",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-size",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-split",
    srcs = ["llvm-split.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-split",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-split",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-stress",
    srcs = ["llvm-stress.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-stress",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-stress",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-strings",
    srcs = ["llvm-strings.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-strings",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-strings",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-strip",
    srcs = ["llvm-strip.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-strip",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-strip",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-symbolizer",
    srcs = ["llvm-symbolizer.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-symbolizer",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-symbolizer",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-tblgen",
    srcs = ["llvm-tblgen.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-tblgen",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-tblgen",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-undname",
    srcs = ["llvm-undname.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-undname",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-undname",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "llvm-xray",
    srcs = ["llvm-xray.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:llvm-xray",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:llvm-xray",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "modularize",
    srcs = ["modularize.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:modularize",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:modularize",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "obj2yaml",
    srcs = ["obj2yaml.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:obj2yaml",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:obj2yaml",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "opt",
    srcs = ["opt.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:opt",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:opt",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "pp-trace",
    srcs = ["pp-trace.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:pp-trace",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:pp-trace",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "sancov",
    srcs = ["sancov.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:sancov",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:sancov",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "sanstats",
    srcs = ["sanstats.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:sanstats",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:sanstats",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "scan-build",
    srcs = ["scan-build.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:scan-build",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:scan-build",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "scan-view",
    srcs = ["scan-view.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:scan-view",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:scan-view",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "verify-uselistorder",
    srcs = ["verify-uselistorder.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:verify-uselistorder",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:verify-uselistorder",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "wasm-ld",
    srcs = ["wasm-ld.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:wasm-ld",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:wasm-ld",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_binary(
    name = "yaml2obj",
    srcs = ["yaml2obj.sh"],
    data = select({
        "//:darwin": [
            "@clang-llvm-10.0.0-x86_64-apple-darwin//:yaml2obj",
        ],
        "//conditions:default": [
            "@clang-llvm-10.0.0-x86_64-linux-gnu-centos7//:yaml2obj",
        ],
    }),
    deps = [
        "@bazel_tools//tools/bash/runfiles",
    ],
)
