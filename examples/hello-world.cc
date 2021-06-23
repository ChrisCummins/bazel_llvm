// A simple program which requires linking against LLVM.
#include "llvm/Support/raw_ostream.h"

int main(int argc, char** argv) {
  llvm::errs() << "Hello, LLVM " << LLVM_VERSION_STRING << "!\n";
  return 0;
}
