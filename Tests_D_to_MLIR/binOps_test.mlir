

module {
  func @_Dmain() {
    %0 = "std.constant"() {value = 12 : i64} : () -> i64
    %1 = "std.constant"() {value = 13 : i16} : () -> i16
    %2 = "std.sexti"(%1) : (i16) -> i32
    %3 = "std.sexti"(%2) : (i32) -> i64
    %4 = "std.addi"(%0, %3) : (i64, i64) -> i64
    %5 = "std.constant"() {value = 10 : i32} : () -> i32
    %6 = "std.constant"() {value = 5.000000e+00 : f32} : () -> f32
    %7 = "std.constant"() {value = 1 : i1} : () -> i1
    %8 = "std.constant"() {value = 9.9248098590329867 : f64} : () -> f64
    %9 = "std.trunci"(%5) : (i32) -> f32
    %10 = "std.addf"(%9, %6) : (f32, f32) -> f32
    %11 = "std.trunci"(%5) : (i32) -> f64
    %12 = "std.addf"(%8, %11) : (f64, f64) -> f64
    %13 = "std.trunci"(%6) : (f32) -> i32
    %14 = "std.muli"(%5, %13) : (i32, i32) -> i32
    %15 = "std.fpext"(%6) : (f32) -> f64
    %16 = "std.mulf"(%15, %8) : (f64, f64) -> f64
    %17 = "std.fptrunc"(%16) : (f64) -> f32
    %18 = "std.trunci"(%6) : (f32) -> i32
    %19 = "std.divi_signed"(%5, %18) : (i32, i32) -> i32
    %20 = "std.divf"(%8, %8) : (f64, f64) -> f64
    %21 = "std.fptrunc"(%20) : (f64) -> f32
    %22 = "std.constant"() {value = 1 : i32} : () -> i32
    %23 = "std.subi"(%5, %22) : (i32, i32) -> i32
    %24 = "std.remi_signed"(%5, %23) : (i32, i32) -> i32
    %25 = "std.constant"() {value = 0 : i32} : () -> i32
    %26 = "std.and"(%5, %25) : (i32, i32) -> i32
    %27 = "std.constant"() {value = 1 : i32} : () -> i32
    %28 = "std.addi"(%5, %27) : (i32, i32) -> i32
    %29 = "std.trunci"(%6) : (f32) -> i32
    %30 = "std.or"(%29, %25) : (i32, i32) -> i32
    %31 = "std.constant"() {value = 0 : i1} : () -> i1
    %32 = "std.sexti"(%7) : (i1) -> i32
    %33 = "std.xor"(%32, %25) : (i32, i32) -> i32
    %34 = "std.constant"() {value = 1.000000e+00 : f32} : () -> f32
    %35 = "std.subf"(%6, %34) : (f32, f32) -> f32
    %36 = "std.constant"() {value = 1 : i32} : () -> i32
    %37 = "std.addi"(%5, %36) : (i32, i32) -> i32
    %38 = "std.constant"() {value = 2.000000e+00 : f32} : () -> f32
    %39 = "std.subf"(%6, %38) : (f32, f32) -> f32
    %40 = "std.constant"() {value = 4.000000e+00 : f64} : () -> f64
    %41 = "std.divf"(%8, %40) : (f64, f64) -> f64
    %42 = "std.and"(%23, %25) : (i32, i32) -> i32
    %43 = "std.or"(%24, %25) : (i32, i32) -> i32
    %44 = "std.xor"(%25, %25) : (i32, i32) -> i32
    %45 = "std.fpext"(%6) : (f32) -> f64
    %46 = "std.divf"(%8, %45) : (f64, f64) -> f64
    %47 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%47) : (i32) -> ()
  }
}
