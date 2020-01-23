

module {
  func @_D9loop_test4callFZi() {
    %0 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%0) : (i32) -> ()
  }
  func @_Dmain() {
    %0 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.br"()[^bb4] : () -> ()
  ^bb1:	// pred: ^bb2
    %1 = "std.constant"() {value = 1 : i32} : () -> i32
    %2 = "std.addi"(%0, %1) : (i32, i32) -> i32
    "std.br"()[^bb4] : () -> ()
  ^bb2:	// pred: ^bb4
    %3 = "std.call"() {callee = @_D9loop_test4callFZi} : () -> i32
    "std.br"()[^bb1] : () -> ()
  ^bb3:	// pred: ^bb4
    %4 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%4) : (i32) -> ()
  ^bb4:	// 2 preds: ^bb0, ^bb1
    %5 = "std.constant"() {value = 10 : i32} : () -> i32
    %6 = "std.cmpi"(%0, %5) {predicate = 2 : i64} : (i32, i32) -> i1
    "std.cond_br"(%6)[^bb2, ^bb3] : (i1) -> ()
  }
}
