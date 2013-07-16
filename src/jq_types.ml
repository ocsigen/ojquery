type nth_index =
  | Int of int
  | Odd
  | Even
  | Equation of string

let string_of_nth_index = function
  | Int i -> string_of_int i
  | Odd -> "odd"
  | Even -> "even"
  | Equation s -> s

let inject_nth_index i = JavaScript.Inject.string (string_of_nth_index i)
