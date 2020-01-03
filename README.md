# MLIR Support for D Programming Language 

## Background

The Multi-Level Intermediate Representation(MLIR) is a project that aims to define a flexible and extensible intermediate representation(IR) that will unify the infrastructure required to execute high performance machine learning models in TensorFlow and similar ML frameworks. To achieve its goals, MLIR introduces notions from the polyhedral domain as first class concepts and the notion of dialects. These dialects consist in a set of defined operations that makes the levels of optimizations more flexible than the usual source code, LLVM IR and machine code. Each dialect can be visualized as a new level of IR. Each new level enables some optimizations that may not be available at other levels. GPU is one of the Dialects available in MLIR today, this dialect provides middle-level abstractions for launching GPU kernels following a programming model similar to that of CUDA or OpenCL. Some other examples of dialects are Affine, Vector and LLVM IR.

## Introduction

The goal of this project is to provide LDC with a new level of abstraction to support the integration of the MLIR into the D ecosystem. This project will lead to the incorporation of new optimizations into the D programming language. The addition of new optimizations will be possible due to the levels of intermediate representation provided by the MLIR infrastructure. Ultimately, we shall generate XLA for use with TensorFlow. Thus, although an MLIR representation will be useful specifically for Machine Learning programs written in D, other programs may also benefit from the MLIR features to gain performance due the polyhedral concept implemented by MLIR to use some analysis and optmizations such as loop optimizations across kernels (fusion, loop interchange, tiling, etc) and high-performance in matrix multiplication. To complete these tasks, this project aims to create a D Dialect of MLIR, which will be closer to the D source code. Consequently, we will be able to use language specific optimizations such as GC2Stack in D at dialect level. We shall ensure the necessary infrastructure to port this D dialect of MLIR to other dialects, so that more optimizations might be available to improve the runtime of D programs. This portabilitiy will

## Milestones

1. Compilation of D through the LLVM dialect of MLIR:
  - Build and set up with the newest versions available: LLVM(10.0.0svn), MLIR, LDC(1.17.0) and DMD(v2.087.1).
  - A systematic review about D, LDC and MLIR source code.
  - Model all core IR structures in LLVM: Instructions, Globals, Modules, etc.
  - Traverse the AST of D to emit MLIR code.
  - Run tests, fix bugs, write documentation
     
2. Build the D dialect:
 - Finish the implementation of AST traversing to MLIR.
 - Implement D operations as D Dialect operations.
 - Register D dialect as MLIR Dialect
 - Run tests, fix bugs, write documentation.
 
3. Concatenate D and Standard Dialects and Lowering to LLVM:
 - Finish the implementation of D Dialect Operation
 - Refine D Dialect to support D specific constraints.
 - Expose instructions and operations to D.
 - Translate D Dialect into LLVM Dialect.
 - Run tests, fix bugs, write documentation.

4. Expand the D dialect and Optimize the code generated:
 - Add new operations to support better D codes.
 - Apply optimizations as DeadCodeElimiations and analysis like place arguments into blocks to ensure SSA stability.
 - Run benchmarks to compare the performance of D and D+MLIR optimizations.
 
 All code has been develped [here](https://github.com/Robertorosmaninho/ldc)
