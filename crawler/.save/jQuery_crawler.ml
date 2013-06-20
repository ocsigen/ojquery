open Xml_utils

type jQuery_func =
  string (* Jquery func name *) * signature list
and signature = argument list * string (* doc*)
and argument = string (*name of the element*) * string (*type of the element*)

let is_signature e = is_element e "signature"

let is_argument e = is_element e "argument"

let extract_methods i =
  let extract_type_and_return = function
    | `El_start ((_, _), ((_, _), _)::((_, _), d)::((_, _), f)::_) -> (d,f)
    | _ -> failwith ("Entry expected at line "^(string_of_int
                                                 (fst (Xmlm.pos i)))) in

  let create_argument (a, b) c = (a, b, c) in

  let extract_argument_name  = function
    | (_, ((_, a), b)::((_, c), d)::_) -> (b, d)
    | _ -> failwith ("Argument expected at line "^(string_of_int
                                                    (fst (Xmlm.pos i)))) in

  let extract_description i = if (go_to_node_leveled i "desc") then
      (skip i;
       match (Xmlm.input i) with
       | `Data s -> skip i; s
       | _ -> failwith
                ("Descr expected at line "^(string_of_int (fst (Xmlm.pos i)))))
    else
      failwith
        ("Descr expected at line "^(string_of_int (fst (Xmlm.pos i))))in

  let extract_argument i =
    match (Xmlm.input i) with
    | `El_start e -> create_argument (extract_argument_name e)
                       (extract_description i)
    | _ -> failwith ("Argument expected at line "^(string_of_int
                                                    (fst (Xmlm.pos i)))) in

  let rec extract_arguments i arg_list =
    if (go_to_upper_node i "argument") then
      (extract_arguments i ((extract_argument i)::arg_list))
    else
      arg_list in

  let rec create_signatures entry i list =
    let build_method (a, b) l = (a, l, (b, []), []) in
    if (go_to_upper_node i "signature") then
      (skip i;
       create_signatures entry i (build_method entry
                                    (extract_arguments i [])::list))
    else
      list in
  if (go_to_node_leveled i "entry") then
    create_signatures (extract_type_and_return (Xmlm.input i)) i []
  else
    failwith "Bad file motherhugger"

let rec print_methods =
  let rec print_args = function
    | [] -> print_endline "Over"
    | (a, b, c)::d -> print_endline
                        ("\tArgument "^a^" de type "^b^" avec la doc :"^c);
                      print_args d in
  function
  | [] -> ()
  | (a, l, (b, []), [])::d -> print_endline ("Fonction "^a^" retournant "^b^" prennant en argument :");
      print_args l;
      print_methods d
  | _ -> failwith "Unexpected method"


let _ =
  let id ic =
    let i = Xmlm.make_input (`Channel ic) in
    print_methods (extract_methods i) in
  id (open_in "add.xml")
