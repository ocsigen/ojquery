open Xmlm

let is_same_string str1 str2 =
  let test = function
  | 0 -> true
  | _ -> false in
  test (String.compare str1 str2)

let skip i = ignore (input i)

let rec skip_to_end i = match (input i) with
  | `El_end -> ()
  | _ -> skip_to_end i

let get_name_from_tag ((a, b), _) = b

let is_element ((_, name), _) s = is_same_string name s

let rec go_to_node i s = match (peek i) with
  | `El_start e -> if (is_element e s)
      then ()
      else (skip i ;
      go_to_node i s)
  | _ -> skip i;
      go_to_node i s

let rec goToNodeLeveled i s = function
  | 0 -> false
  | d -> (match (peek i) with
      | `El_start e -> if (is_element e s)
          then true
          else (skip i;
                goToNodeLeveled i s (d + 1))
      | `El_end -> skip i;
          goToNodeLeveled i s (d - 1)
      | _ -> skip i;
          goToNodeLeveled i s d)

let go_to_node_leveled i s =
  goToNodeLeveled i s 1

let go_to_upper_node i s =
  goToNodeLeveled i s 2

let print_line i = print_endline
    ("Current pos in xml : "^(string_of_int
                                (fst (pos i)))^"/"^(string_of_int
                                                      (snd (pos i))))
