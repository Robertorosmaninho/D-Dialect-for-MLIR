

module {
  func @_Dmain() {
    %0 = "std.constant"() {value = dense<[1, 2, 3, 4, 5]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "std.constant"() {value = 0 : i32} : () -> i32
    "std.return"(%1) : (i32) -> ()
  }
}
