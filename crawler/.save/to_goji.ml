type element =
  | Constructor of (string * ty * string) list * comment
  | Field of string * ty * comment
  | Method of string * (string * ty * string) list * (ty * string list) * comment
and ty =
  | Number
  | String
  | Bool
  | Object of string
  | Function of ty list * ty
  | Array of ty
  | Unknown of string
  | Record of (string * ty * comment) list
and obj = string * comment * element list
and comment = string list
