## Setup LLVM, MLIR, LDC

### Getting MLIR with Clang
```
git clone https://github.com/llvm/llvm-project.git
git clone https://github.com/tensorflow/mlir llvm-project/llvm/projects/mlir
mkdir llvm-project/build && cd llvm-project/build
cmake -G Ninja ../llvm -DLLVM_ENABLE_PROJECTS="clang;libcxx;licxxabi" [-DCMAKE_BUILD_TYPE=RelWithDebInfo] -DLLVM_BUILD_EXAMPLES=ON -DLLVM_TARGETS_TO_BUILD="host"
cmake --build . --target check-mlir [-- -j #cores]
[cmake --build . --target clang [-- -j #cores]]
```
### Getting LDC
Using a patch for compile LDC to LLVM 10
```
git clone https://github.com/Robertorosmaninho/ldc.git
cd ldc
git checkout fix-llvm-10
export DMD=/path/to/your/dmd2/bin/dmd
mkdir build && cd build
cmake -G Ninja -DLLVM_CONFIG=/path/to/llvm/build/bin/llvm-config ..
ninja
sudo ninja install
```
