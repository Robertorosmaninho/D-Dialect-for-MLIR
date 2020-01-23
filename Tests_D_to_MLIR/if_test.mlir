

module {
  func @_Dmain() {
    %0 = "std.constant"() {value = 10 : i32} : () -> i32
    %1 = "std.constant"() {value = 5 : i32} : () -> i32
    %2 = "std.constant"() {value = 0 : i32} : () -> i32
    %3 = "std.cmpi"(%0, %1) {predicate = 4 : i64} : (i32, i32) -> i1
    "std.cond_br"(%3)[^bb1, ^bb2] : (i1) -> ()
  ^bb1:	// pred: ^bb0
    %4 = "std.addi"(%1, %0) : (i32, i32) -> i32
    "std.br"()[^bb3] : () -> ()
  ^bb2:	// pred: ^bb0
    %5 = "std.addi"(%2, %0) : (i32, i32) -> i32
    "std.br"()[^bb3] : () -> ()
  ^bb3:	// 2 preds: ^bb1, ^bb2
    %6 = "std.cmpi"(%0, %1) {predicate = 0 : i64} : (i32, i32) -> i1
    "std.cond_br"(%6)[^bb4, ^bb5] : (i1) -> ()
  ^bb4:	// pred: ^bb3
    %7 = "std.constant"() {value = 1 : i32} : () -> i32
    %8 = "std.addi"(%0, %7) : (i32, i32) -> i32
    "std.br"()[^bb6] : () -> ()
  ^bb5:	// pred: ^bb3
    %9 = "std.constant"() {value = 0 : i32} : () -> i32
    %10 = "std.cmpi"(%0, %9) {predicate = 1 : i64} : (i32, i32) -> i1
    "std.cond_br"(%10)[^bb7, ^bb8] : (i1) -> ()
  ^bb6:	// 2 preds: ^bb4, ^bb8
    %11 = "std.cmpi"(%0, %1) {predicate = 0 : i64} : (i32, i32) -> i1
    "std.cond_br"(%11)[^bb9, ^bb10] : (i1) -> ()
  ^bb7:	// pred: ^bb5
    %12 = "std.constant"() {value = 1 : i32} : () -> i32
    %13 = "std.subi"(%1, %12) : (i32, i32) -> i32
    "std.br"()[^bb8] : () -> ()
  ^bb8:	// 2 preds: ^bb5, ^bb7
    "std.br"()[^bb6] : () -> ()
  ^bb9:	// pred: ^bb6
    %14 = "std.constant"() {value = 0 : i32} : () -> i32
    %15 = "std.cmpi"(%0, %14) {predicate = 0 : i64} : (i32, i32) -> i1
    "std.cond_br"(%15)[^bb11, ^bb12] : (i1) -> ()
  ^bb10:	// 2 preds: ^bb6, ^bb12
    %16 = "std.constant"() {value = 1 : i32} : () -> i32
    %17 = "std.addi"(%1, %16) : (i32, i32) -> i32
    %18 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%18) : (i32) -> ()
  ^bb11:	// pred: ^bb9
    %19 = "std.constant"() {value = 1 : i32} : () -> i32
    %20 = "std.addi"(%0, %19) : (i32, i32) -> i32
    "std.br"()[^bb12] : () -> ()
  ^bb12:	// 2 preds: ^bb9, ^bb11
    "std.br"()[^bb10] : () -> ()
  }
}
