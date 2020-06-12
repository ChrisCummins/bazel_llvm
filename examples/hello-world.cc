// A simple program which requires linking against LLVM.
#include "llvm/Support/raw_ostream.h"

int main(int argc, char** argv) {
  llvm::errs() << "Hello, LLVM!\n";
  return 0;
}
