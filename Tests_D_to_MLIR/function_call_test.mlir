

module {
  func @_D18function_call_test3sumFiiZi(%arg0: i32, %arg1: i32) {
    %0 = "std.addi"(%arg1, %arg0) : (i32, i32) -> i32
    "std.return"(%0) : (i32) -> ()
  }
  func @_Dmain() {
    %0 = "std.constant"() {value = 0 : i32} : () -> i32
    %1 = "std.constant"() {value = 1 : i32} : () -> i32
    %2 = "std.call"(%0, %1) {callee = @_D18function_call_test3sumFiiZi} : (i32, i32) -> i32
    %3 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%3) : (i32) -> ()
  }
}
