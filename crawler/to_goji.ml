open Printf

type element =
  | Constructor of (string * ty * string) list * comment
  | Field of string * ty * comment
  | Method of string * (string * ty * string) list * (ty * string list) * comment
and ty =
  | Number
  | String
  | Bool
  | Obj of string
  | Fun of ty list * ty
  | Array of ty
  | Unknown of string
  | Rec of (string * ty * comment) list
and obj = string * comment * element list
and comment = string list

let prerry_print fp name elements =
  let reserved = [
    "and" ; "let" ; "type" ; "class" ; "as" ; "assert" ; "begin" ; "class" ;
    "constraint" ; "do" ; "while" ; "for" ; "done" ; "while" ; "for" ; "downto" ;
    "for" ; "else" ; "if" ; "end" ; "exception" ; "external" ;
    "false" ; "for" ; "fun" ; "function" ; "functor" ; "if" ; "in" ; "let" ;
    "include" ; "inherit" ; "inherit!" ; "initializer" ; "lazy" ; "let" ; "match" ;
    "method" ; "method!" ; "module" ; "mutable" ; "new" ; "object" ; "of" ; "type" ;
    "exception" ; "open" ; "or" ; "private" ; "rec" ; "let" ; "sig" ; "struct" ;
    "then" ; "if" ; "to" ; "for" ; "true" ; "try" ; "type" ; "val" ;
    "val!" ; "virtual" ; "when" ; "while" ; "with" ; "match" ; "try"
  ] in
  let mangle js_name =
    let res = Buffer.create (2 * String.length js_name) in
    for i = 0 to String.length js_name - 1 do
      match js_name.[i], js_name.[max 0 (i - 1)] with
      | 'A'..'Z' as c, ('A'..'Z' | '_') -> Buffer.add_char res (Char.lowercase c)
      | 'A'..'Z' as c, _ -> Buffer.add_char res '_' ; Buffer.add_char res (Char.lowercase c)
      | ('_' | '$'), _ -> Buffer.add_char res '_'
      | ('|' | '/'), _ -> Buffer.add_string res "_or_"
      | ('.'), _ -> Buffer.add_string res "_dot"
      | c, _ when Char.code c >= 128  -> Buffer.add_string res "_what"
      | c, _ -> Buffer.add_char res c
    done ;
    let res = Buffer.contents res in
    if List.mem res reserved then "_" ^ res else res
  in
  let mangle_cap js_name =
    let res = String.capitalize (mangle js_name) in
    if res.[0] = '_' then "M" ^ res else res
  in
  let print_comment fp lines =
    if lines = [] then
      fprintf fp "Nodoc"
    else
      fprintf fp "Doc %S" (List.fold_left (fun r l -> (if r = "" then r else r ^ "\n") ^ String.trim l) "" lines)
  in
  let rec print_type root fp ty =
    match ty with
    | Fun (args, ret) -> fprintf fp "Value [%s, Fun ([], None)]" root (* (fun fp -> List.iter (fprintf fp "%a ;" print_type)) args print_type ret *)
    | Rec l ->
        fprintf fp "Record [ %a ]"
          (fun fp ls -> List.iter (fun (n, ty, com) -> fprintf fp "%S, %a, %a ;"
	                                               (mangle n) (print_type ("Field (Root, \"" ^ n ^ "\")")) ty print_comment com) ls) l
    | Array ty -> fprintf fp "Value [%s, Array (%a)]" root (print_type "Root") ty
    | Number -> fprintf fp "Value [%s, Float]" root
    | String -> fprintf fp "Value [%s, String]" root
    | Bool -> fprintf fp "Value [%s, Bool]" root
    | Obj "unknown" -> fprintf fp "Value [%s, Abbrv ([], Some [], \"js\")]" root
    | Unknown ty -> fprintf fp "Value [%s, Abbrv ([], Some [], \"js\")(* Type : %s *)]" root ty
    | Obj n when n = name -> fprintf fp "Value [%s, Abbrv ([], None, \"t\")]" root
    | Obj n -> fprintf fp "Value [%s, Abbrv ([], Some [%S], \"t\")]" root (mangle_cap n)
  in
  let rec print_params i fp = function
    | [] -> ()
    | (n, ty, com) :: tl ->
      let aty, com =
	if Str.(string_match (regexp "#optional *\\(.*\\)") com 0) then
	  "Optional", Str.matched_group 1 com
	else
	  "Labeled", com
      in
      fprintf fp "%s (%S, %a, %a)%s%a"
	aty
	(mangle n)
	(print_type ("Arg " ^ string_of_int i)) ty
	print_comment [com]
	(if tl = [] then "" else " ;\n              ")
	(print_params (i + 1)) tl
  in
  fprintf fp "    Module \n" ;
  fprintf fp "    (%S, Nodoc, [\n" (mangle_cap name) ;
  fprintf fp "      Type ([], \"t\", Nodoc, Extern (Global %S)) ;\n" name ;
  let nty = ref 0 in
  let fresh () = incr nty ; sprintf "genty_%x" !nty in
  List.iter
    (fun elt ->
      match elt with
      | Method (name, params, ((Rec _) as t, doc), comment) ->
          let nty = fresh () in
            fprintf fp "      Type ([], %S, Nodoc, Intern (%a)) ;\n"
              nty
              (print_type "Root") t ;
            fprintf fp "      Method (([], None, \"t\"), { ocaml_name = %S ; js_name = %S },\n            %a,\n            [ %a ],\n            Some (Value [Root, Abbrv ([], None, %S)], %a)) ;\n"
              (mangle name) name
              print_comment comment
              (print_params 0) params
              nty
              print_comment doc
      | Method (name, params, (Unknown "unknown", _), comment) ->
          fprintf fp "      Method (([], None, \"t\"), { ocaml_name = %S ; js_name = %S },\n            %a,\n            [ %a ],\n            None) ;\n"
            (mangle name) name
            print_comment comment
            (print_params 0) params
      | Method (name, params, (ret, doc), comment) ->
          fprintf fp "      Method (([], None, \"t\"), { ocaml_name = %S ; js_name = %S },\n            %a,\n            [ %a ],\n            Some (%a, %a)) ;\n"
            (mangle name) name
            print_comment comment
            (print_params 0) params (print_type "Root") ret
            print_comment doc
      | Field (name, ty, comment) ->
          fprintf fp "      Attribute (([], None, \"t\"), { ocaml_name = %S ; js_name = %S },\n            %a,\n            %a) ;\n"
            (mangle name) name
            print_comment comment
            (print_type "Root") ty
      | Constructor (params, comment) ->
          fprintf fp "      Constructor (([], None, \"t\"), \"make\",\n            %a, [ %a ]) ;\n"
            print_comment comment
            (print_params 0) params)
    (List.sort compare elements) ;
  fprintf fp "    ]) ;\n"

let module_name = ref "none"

let dummy_tree tree = [
    Constructor ([("foo", Number, "foo doc") ; ("bar", Bool, "bar doc")], ["Ctor"; "doc"]);
    Field ("attr_a", (Obj "object_of_attr_a"), ["attr_a"; "doc"]) ;
  ]

exception Not_a_valid_flag

(*let () =
  let open Arg in
  let opts = [
    ("name", Set_string module_name, "set the module name")
  ] in
  let () = Arg.parse opts (fun flag -> raise Not_a_valid_flag) "usage: TODO" in
  let atree = dummy_tree () in
  prerry_print stdout !module_name atree
*)
