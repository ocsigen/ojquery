open JavaScript

let alloc_args nb =
  Array.make nb (Ops.constant "undefined"), ref []

let push_arg args arg =
  snd args := arg :: !(snd args)

let set_arg args idx arg =
  (fst args).(idx) <- arg

let get_arg args idx =
  (fst args).(idx)

let build_args args =
  Array.concat [
    fst args ;
    Array.of_list (List.rev !(snd args)) ;
  ]

let ensure_block_var n =
  let v = Ops.global n in
  if Ops.equals (Ops.constant "undefined") v then
    let b = Ops.obj [| |] in
    Ops.set_global n b ; b
  else v

let ensure_block_res res =
  let v = !res in
  if Ops.equals (Ops.constant "undefined") v then
    let b = Ops.obj [| |] in
    res := b ; b
  else v

let ensure_block_arg args idx =
  let v = (fst args).(idx) in
  if Ops.equals (Ops.constant "undefined") v then
    let b = Ops.obj [| |] in
    (fst args).(idx) <- b ; b
  else v

let ensure_block_field o f =
  let v = Ops.get o f in
  if Ops.equals (Ops.constant "undefined") v then
    let b = Ops.obj [| |] in
    Ops.set o f b ; b
  else v

type t = any

let inject_t = Inject.identity
let extract_t = Extract.identity

let jQ s = Js.Unsafe.fun_call
    (Js.Unsafe.variable "jQuery") [|Js.Unsafe.inject (Js.string s)|]

let jQelt e = Js.Unsafe.fun_call (Js.Unsafe.variable "jQuery")
    [| Js.Unsafe.inject e |]

let js_jQ s = Js.Unsafe.fun_call
    (Js.Unsafe.variable "jQuery") [|Js.Unsafe.inject (Js.string s)|]

let js_jQelt e = Js.Unsafe.fun_call (Js.Unsafe.variable "jQuery")
    [| Js.Unsafe.inject e |]


let add obj  elements  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity elements) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add obj  html  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string html) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add obj  selector context  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity context) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add_back obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "addBack" (build_args args) in
  extract_t res

let add_class obj  class_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string class_name) ;
  let res = Ops.call_method obj "addClass" (build_args args) in
  extract_t res

let add_class obj  function_index__current_class_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index__current_class_) ;
  let res = Ops.call_method obj "addClass" (build_args args) in
  extract_t res

let after obj  content content  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t content) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let after obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let ajax_complete obj  handler_event___xmlhttp_request__ajax_options_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event___xmlhttp_request__ajax_options_) ;
  let res = Ops.call_method obj "ajaxComplete" (build_args args) in
  extract_t res

let ajax_error obj  handler_event__jq_xhr__ajax_settings__thrown_error_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event__jq_xhr__ajax_settings__thrown_error_) ;
  let res = Ops.call_method obj "ajaxError" (build_args args) in
  extract_t res

let ajax_send obj  handler_event__jq_xhr__ajax_options_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event__jq_xhr__ajax_options_) ;
  let res = Ops.call_method obj "ajaxSend" (build_args args) in
  extract_t res

let ajax_start obj  handler__  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler__) ;
  let res = Ops.call_method obj "ajaxStart" (build_args args) in
  extract_t res

let ajax_stop obj  handler__  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler__) ;
  let res = Ops.call_method obj "ajaxStop" (build_args args) in
  extract_t res

let ajax_success obj  handler_event___xmlhttp_request__ajax_options_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event___xmlhttp_request__ajax_options_) ;
  let res = Ops.call_method obj "ajaxSuccess" (build_args args) in
  extract_t res

let all obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "all" (build_args args) in
  extract_t res

let and_self obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "andSelf" (build_args args) in
  extract_t res

let animate obj  properties  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t properties) ;
  let res = Ops.call_method obj "animate" (build_args args) in
  extract_t res

let animate obj  properties  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t properties) ;
  let res = Ops.call_method obj "animate" (build_args args) in
  extract_t res

let animated obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "animated" (build_args args) in
  extract_t res

let append obj  content content  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t content) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append obj  function_index__html_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index__html_) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append_to obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "appendTo" (build_args args) in
  extract_t res

let attr obj  attribute_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string attribute_name) ;
  let res = Ops.call_method obj "attr" (build_args args) in
  Extract.string res

let attribute_contains obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeContains" (build_args args) in
  extract_t res

let attribute_contains_prefix obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeContainsPrefix" (build_args args) in
  extract_t res

let attribute_contains_word obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeContainsWord" (build_args args) in
  extract_t res

let attribute_ends_with obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeEndsWith" (build_args args) in
  extract_t res

let attribute_equals obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeEquals" (build_args args) in
  extract_t res

let attribute_has obj  attribute  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string attribute) ;
  let res = Ops.call_method obj "attributeHas" (build_args args) in
  extract_t res

let attribute_multiple obj  attribute_filter1 attribute_filter2 attribute_filter_n  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.string attribute_filter1) ;
  set_arg args 1  (Inject.string attribute_filter2) ;
  set_arg args 2  (inject_t attribute_filter_n) ;
  let res = Ops.call_method obj "attributeMultiple" (build_args args) in
  extract_t res

let attribute_not_equal obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeNotEqual" (build_args args) in
  extract_t res

let attribute_starts_with obj  attribute value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string attribute) ;
  set_arg args 1  (Inject.string value) ;
  let res = Ops.call_method obj "attributeStartsWith" (build_args args) in
  extract_t res

let before obj  content content  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t content) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let before obj  _function  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _function) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let bind obj  event_type event_data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t event_data) ;
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let bind obj  event_type event_data prevent_bubble  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t event_data) ;
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 2  (Inject.bool prevent_bubble) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let bind obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t events) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let blur obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let blur obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let blur obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let button obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "button" (build_args args) in
  extract_t res

let change obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let change obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let change obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let checkbox obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "checkbox" (build_args args) in
  extract_t res

let checked obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "checked" (build_args args) in
  extract_t res

let child obj  parent child  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.string child) ;
  set_arg args 0  (Inject.string parent) ;
  let res = Ops.call_method obj "child" (build_args args) in
  extract_t res

let children obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "children" (build_args args) in
  extract_t res

let _class obj  _class  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string _class) ;
  let res = Ops.call_method obj "class" (build_args args) in
  extract_t res

let clear_queue obj  queue_name  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t queue_name) ;
  let res = Ops.call_method obj "clearQueue" (build_args args) in
  extract_t res

let click obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let click obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let click obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let clone obj  with_data_and_events deep_with_data_and_events  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t deep_with_data_and_events) ;
  set_arg args 0  (inject_t with_data_and_events) ;
  let res = Ops.call_method obj "clone" (build_args args) in
  extract_t res

let clone obj  with_data_and_events  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t with_data_and_events) ;
  let res = Ops.call_method obj "clone" (build_args args) in
  extract_t res

let closest obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest obj  selector context  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t context) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let contains obj  text  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string text) ;
  let res = Ops.call_method obj "contains" (build_args args) in
  extract_t res

let contents obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "contents" (build_args args) in
  extract_t res

let context obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "context" (build_args args) in
  extract_t res

let css obj  property_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string property_name) ;
  let res = Ops.call_method obj "css" (build_args args) in
  Extract.string res

let css obj  property_names  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) property_names
    ) ;
  let res = Ops.call_method obj "css" (build_args args) in
  Extract.string res

let data obj  key value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string key) ;
  set_arg args 1  (inject_t value) ;
  let res = Ops.call_method obj "data" (build_args args) in
  extract_t res

let data obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "data" (build_args args) in
  extract_t res

let dblclick obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let dblclick obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let dblclick obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let delay obj  duration queue_name  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.int duration) ;
  set_arg args 1  (inject_t queue_name) ;
  let res = Ops.call_method obj "delay" (build_args args) in
  extract_t res

let delegate obj  selector event_type event_data handler_event_object_  =
  let args = alloc_args 4 in
  set_arg args 2  (inject_t event_data) ;
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 3  (inject_t handler_event_object_) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let delegate obj  selector event_type handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let delegate obj  selector events  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t events) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let dequeue obj  queue_name  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t queue_name) ;
  let res = Ops.call_method obj "dequeue" (build_args args) in
  extract_t res

let descendant obj  ancestor descendant  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string ancestor) ;
  set_arg args 1  (Inject.string descendant) ;
  let res = Ops.call_method obj "descendant" (build_args args) in
  extract_t res

let detach obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "detach" (build_args args) in
  extract_t res

let die obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let die obj  event_type handler  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 1  (inject_t handler) ;
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let die obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t events) ;
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let disabled obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "disabled" (build_args args) in
  extract_t res

let each obj  function_index___element_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index___element_) ;
  let res = Ops.call_method obj "each" (build_args args) in
  extract_t res

let element obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string element) ;
  let res = Ops.call_method obj "element" (build_args args) in
  extract_t res

let empty obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "empty" (build_args args) in
  extract_t res

let empty obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "empty" (build_args args) in
  extract_t res

let enabled obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "enabled" (build_args args) in
  extract_t res

let _end obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "end" (build_args args) in
  extract_t res

let eq obj  _index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int _index) ;
  let res = Ops.call_method obj "eq" (build_args args) in
  extract_t res

let eq obj  _index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int _index) ;
  let res = Ops.call_method obj "eq" (build_args args) in
  extract_t res

let eq obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.float index) ;
  let res = Ops.call_method obj "eq" (build_args args) in
  extract_t res

let eq obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int index) ;
  let res = Ops.call_method obj "eq" (build_args args) in
  extract_t res

let error obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "error" (build_args args) in
  extract_t res

let error obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "error" (build_args args) in
  extract_t res

let even obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "even" (build_args args) in
  extract_t res

let event_dotcurrent_target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.currentTarget" (build_args args) in
  extract_t res

let event_dotdata obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.data" (build_args args) in
  extract_t res

let event_dotdelegate_target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.delegateTarget" (build_args args) in
  extract_t res

let event_dotis_default_prevented obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.isDefaultPrevented" (build_args args) in
  Extract.bool res

let event_dotis_immediate_propagation_stopped obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.isImmediatePropagationStopped" (build_args args) in
  Extract.bool res

let event_dotis_propagation_stopped obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.isPropagationStopped" (build_args args) in
  Extract.bool res

let event_dotmeta_key obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.metaKey" (build_args args) in
  Extract.bool res

let event_dotnamespace obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.namespace" (build_args args) in
  Extract.string res

let event_dotpage_x obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.pageX" (build_args args) in
  Extract.float res

let event_dotpage_y obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.pageY" (build_args args) in
  Extract.float res

let event_dotrelated_target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.relatedTarget" (build_args args) in
  extract_t res

let event_dotresult obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.result" (build_args args) in
  extract_t res

let event_dotstop_immediate_propagation obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.stopImmediatePropagation" (build_args args) in
  extract_t res

let event_dotstop_propagation obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.stopPropagation" (build_args args) in
  extract_t res

let event_dottarget obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.target" (build_args args) in
  extract_t res

let event_dottime_stamp obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.timeStamp" (build_args args) in
  Extract.float res

let event_dottype obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.type" (build_args args) in
  Extract.string res

let event_dotwhich obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.which" (build_args args) in
  Extract.float res

let fade_in obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeIn" (build_args args) in
  extract_t res

let fade_in obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeIn" (build_args args) in
  extract_t res

let fade_in obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeIn" (build_args args) in
  extract_t res

let fade_out obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeOut" (build_args args) in
  extract_t res

let fade_out obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeOut" (build_args args) in
  extract_t res

let fade_out obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeOut" (build_args args) in
  extract_t res

let fade_to obj  duration opacity complete  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t complete) ;
  set_arg args 0  (inject_t duration) ;
  set_arg args 1  (Inject.float opacity) ;
  let res = Ops.call_method obj "fadeTo" (build_args args) in
  extract_t res

let fade_to obj  duration opacity easing complete  =
  let args = alloc_args 4 in
  set_arg args 3  (inject_t complete) ;
  set_arg args 0  (inject_t duration) ;
  set_arg args 2  (Inject.string easing) ;
  set_arg args 1  (Inject.float opacity) ;
  let res = Ops.call_method obj "fadeTo" (build_args args) in
  extract_t res

let fade_toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeToggle" (build_args args) in
  extract_t res

let fade_toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "fadeToggle" (build_args args) in
  extract_t res

let file obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "file" (build_args args) in
  extract_t res

let filter obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let find obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "find" (build_args args) in
  extract_t res

let find obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "find" (build_args args) in
  extract_t res

let find obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "find" (build_args args) in
  extract_t res

let finish obj  queue  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string queue) ;
  let res = Ops.call_method obj "finish" (build_args args) in
  extract_t res

let first obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "first" (build_args args) in
  extract_t res

let first obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "first" (build_args args) in
  extract_t res

let first_child obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "first-child" (build_args args) in
  extract_t res

let first_of_type obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "first-of-type" (build_args args) in
  extract_t res

let focus obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focus obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focus obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focus obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focusin obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focusin" (build_args args) in
  extract_t res

let focusin obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focusin" (build_args args) in
  extract_t res

let focusout obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focusout" (build_args args) in
  extract_t res

let focusout obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "focusout" (build_args args) in
  extract_t res

let get obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int index) ;
  let res = Ops.call_method obj "get" (build_args args) in
  extract_t res

let gt obj  _index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int _index) ;
  let res = Ops.call_method obj "gt" (build_args args) in
  extract_t res

let gt obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.float index) ;
  let res = Ops.call_method obj "gt" (build_args args) in
  extract_t res

let has obj  contained  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity contained) ;
  let res = Ops.call_method obj "has" (build_args args) in
  extract_t res

let has obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "has" (build_args args) in
  extract_t res

let has obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "has" (build_args args) in
  extract_t res

let has_class obj  class_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string class_name) ;
  let res = Ops.call_method obj "hasClass" (build_args args) in
  Extract.bool res

let header obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "header" (build_args args) in
  extract_t res

let height obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "height" (build_args args) in
  Extract.int res

let hidden obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "hidden" (build_args args) in
  extract_t res

let hide obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "hide" (build_args args) in
  extract_t res

let hide obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "hide" (build_args args) in
  extract_t res

let hide obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "hide" (build_args args) in
  extract_t res

let hide obj  duration  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t duration) ;
  let res = Ops.call_method obj "hide" (build_args args) in
  extract_t res

let hover obj  handler_in_event_object_ handler_out_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t handler_in_event_object_) ;
  set_arg args 1  (inject_t handler_out_event_object_) ;
  let res = Ops.call_method obj "hover" (build_args args) in
  extract_t res

let html obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "html" (build_args args) in
  Extract.string res

let id obj  id  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string id) ;
  let res = Ops.call_method obj "id" (build_args args) in
  extract_t res

let image obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "image" (build_args args) in
  extract_t res

let index obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.float res

let index obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t element) ;
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.float res

let index obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.float res

let inner_height obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "innerHeight" (build_args args) in
  Extract.int res

let inner_width obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "innerWidth" (build_args args) in
  Extract.int res

let input obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "input" (build_args args) in
  extract_t res

let insert_after obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "insertAfter" (build_args args) in
  extract_t res

let insert_before obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "insertBefore" (build_args args) in
  extract_t res

let is obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let j_query obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query obj  element_array  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) element_array
    ) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _object) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query obj  selector context  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t context) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query_dotajax obj  settings  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t settings) ;
  let res = Ops.call_method obj "jQuery.ajax" (build_args args) in
  extract_t res

let j_query_dotajax obj  url settings  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t settings) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "jQuery.ajax" (build_args args) in
  extract_t res

let j_query_dotajax_prefilter obj  data_types handler_options__original_options__jq_xhr_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t data_types) ;
  set_arg args 1  (inject_t handler_options__original_options__jq_xhr_) ;
  let res = Ops.call_method obj "jQuery.ajaxPrefilter" (build_args args) in
  extract_t res

let j_query_dotajax_setup obj  options  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t options) ;
  let res = Ops.call_method obj "jQuery.ajaxSetup" (build_args args) in
  extract_t res

let j_query_dotajax_transport obj  data_type handler_options__original_options__jq_xhr_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string data_type) ;
  set_arg args 1  (inject_t handler_options__original_options__jq_xhr_) ;
  let res = Ops.call_method obj "jQuery.ajaxTransport" (build_args args) in
  extract_t res

let j_query_dotbrowser obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.browser" (build_args args) in
  extract_t res

let j_query_dotcontains obj  container contained  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity contained) ;
  set_arg args 0  (Inject.identity container) ;
  let res = Ops.call_method obj "jQuery.contains" (build_args args) in
  Extract.bool res

let j_query_dotcss_hooks obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.cssHooks" (build_args args) in
  extract_t res

let j_query_dotdata obj  element key value  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.identity element) ;
  set_arg args 1  (Inject.string key) ;
  set_arg args 2  (inject_t value) ;
  let res = Ops.call_method obj "jQuery.data" (build_args args) in
  extract_t res

let j_query_dotdequeue obj  element queue_name  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity element) ;
  set_arg args 1  (inject_t queue_name) ;
  let res = Ops.call_method obj "jQuery.dequeue" (build_args args) in
  extract_t res

let j_query_doteach obj  collection callback_index_in_array__value_of_element_  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t callback_index_in_array__value_of_element_) ;
  set_arg args 0  (inject_t collection) ;
  let res = Ops.call_method obj "jQuery.each" (build_args args) in
  extract_t res

let j_query_doterror obj  message  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string message) ;
  let res = Ops.call_method obj "jQuery.error" (build_args args) in
  extract_t res

let j_query_dotextend obj  deep target object1 object_n  =
  let args = alloc_args 4 in
  set_arg args 0  (inject_t deep) ;
  set_arg args 2  (inject_t object1) ;
  set_arg args 3  (inject_t object_n) ;
  set_arg args 1  (inject_t target) ;
  let res = Ops.call_method obj "jQuery.extend" (build_args args) in
  extract_t res

let j_query_dotextend obj  target object1 object_n  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t object1) ;
  set_arg args 2  (inject_t object_n) ;
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "jQuery.extend" (build_args args) in
  extract_t res

let j_query_dotfn_dotextend obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _object) ;
  let res = Ops.call_method obj "jQuery.fn.extend" (build_args args) in
  extract_t res

let j_query_dotfx_dotinterval obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.fx.interval" (build_args args) in
  Extract.float res

let j_query_dotfx_dotoff obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.fx.off" (build_args args) in
  Extract.bool res

let j_query_dotget obj  url data success_data__text_status__jq_xhr_ data_type  =
  let args = alloc_args 4 in
  set_arg args 1  (inject_t data) ;
  set_arg args 3  (inject_t data_type) ;
  set_arg args 2  (inject_t success_data__text_status__jq_xhr_) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "jQuery.get" (build_args args) in
  extract_t res

let j_query_dotget_json obj  url data success_data__text_status__jq_xhr_  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t data) ;
  set_arg args 2  (inject_t success_data__text_status__jq_xhr_) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "jQuery.getJSON" (build_args args) in
  extract_t res

let j_query_dotget_script obj  url success_script__text_status__jq_xhr_  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t success_script__text_status__jq_xhr_) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "jQuery.getScript" (build_args args) in
  extract_t res

let j_query_dotglobal_eval obj  code  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string code) ;
  let res = Ops.call_method obj "jQuery.globalEval" (build_args args) in
  extract_t res

let j_query_dotgrep obj  array function_element_of_array__index_in_array_ invert  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) array
    ) ;
  set_arg args 1  (inject_t function_element_of_array__index_in_array_) ;
  set_arg args 2  (inject_t invert) ;
  let res = Ops.call_method obj "jQuery.grep" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dothas_data obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "jQuery.hasData" (build_args args) in
  Extract.bool res

let j_query_dothold_ready obj  hold  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.bool hold) ;
  let res = Ops.call_method obj "jQuery.holdReady" (build_args args) in
  extract_t res

let j_query_dotin_array obj  value array from_index  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) array
    ) ;
  set_arg args 2  (Inject.float from_index) ;
  set_arg args 0  (inject_t value) ;
  let res = Ops.call_method obj "jQuery.inArray" (build_args args) in
  Extract.float res

let j_query_dotis_array obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.isArray" (build_args args) in
  Extract.bool res

let j_query_dotis_empty_object obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _object) ;
  let res = Ops.call_method obj "jQuery.isEmptyObject" (build_args args) in
  Extract.bool res

let j_query_dotis_function obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.isFunction" (build_args args) in
  Extract.bool res

let j_query_dotis_numeric obj  value  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t value) ;
  let res = Ops.call_method obj "jQuery.isNumeric" (build_args args) in
  Extract.bool res

let j_query_dotis_plain_object obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _object) ;
  let res = Ops.call_method obj "jQuery.isPlainObject" (build_args args) in
  Extract.bool res

let j_query_dotis_window obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.isWindow" (build_args args) in
  Extract.bool res

let j_query_dotis_xmldoc obj  node  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity node) ;
  let res = Ops.call_method obj "jQuery.isXMLDoc" (build_args args) in
  Extract.bool res

let j_query_dotmake_array obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.makeArray" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotmap obj  array callback_element_of_array__index_in_array_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) array
    ) ;
  set_arg args 1  (inject_t callback_element_of_array__index_in_array_) ;
  let res = Ops.call_method obj "jQuery.map" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotmap obj  array_or_object callback__value__index_or_key__  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t array_or_object) ;
  set_arg args 1  (inject_t callback__value__index_or_key__) ;
  let res = Ops.call_method obj "jQuery.map" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotmerge obj  first second  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) first
    ) ;
  set_arg args 1  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) second
    ) ;
  let res = Ops.call_method obj "jQuery.merge" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotno_conflict obj  remove_all  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.bool remove_all) ;
  let res = Ops.call_method obj "jQuery.noConflict" (build_args args) in
  extract_t res

let j_query_dotnoop obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.noop" (build_args args) in
  extract_t res

let j_query_dotnow obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.now" (build_args args) in
  Extract.float res

let j_query_dotparam obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.param" (build_args args) in
  Extract.string res

let j_query_dotparam obj  obj traditional  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t obj) ;
  set_arg args 1  (Inject.bool traditional) ;
  let res = Ops.call_method obj "jQuery.param" (build_args args) in
  Extract.string res

let j_query_dotparse_html obj  data context keep_scripts  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.identity context) ;
  set_arg args 0  (Inject.string data) ;
  set_arg args 2  (Inject.bool keep_scripts) ;
  let res = Ops.call_method obj "jQuery.parseHTML" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotparse_json obj  json  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string json) ;
  let res = Ops.call_method obj "jQuery.parseJSON" (build_args args) in
  extract_t res

let j_query_dotparse_xml obj  data  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string data) ;
  let res = Ops.call_method obj "jQuery.parseXML" (build_args args) in
  extract_t res

let j_query_dotpost obj  url data success_data__text_status__jq_xhr_ data_type  =
  let args = alloc_args 4 in
  set_arg args 1  (inject_t data) ;
  set_arg args 3  (inject_t data_type) ;
  set_arg args 2  (inject_t success_data__text_status__jq_xhr_) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "jQuery.post" (build_args args) in
  extract_t res

let j_query_dotproxy obj  context name  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t context) ;
  set_arg args 1  (Inject.string name) ;
  let res = Ops.call_method obj "jQuery.proxy" (build_args args) in
  extract_t res

let j_query_dotproxy obj  context name additional_arguments  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t additional_arguments) ;
  set_arg args 0  (inject_t context) ;
  set_arg args 1  (Inject.string name) ;
  let res = Ops.call_method obj "jQuery.proxy" (build_args args) in
  extract_t res

let j_query_dotproxy obj  _function context  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t _function) ;
  set_arg args 1  (inject_t context) ;
  let res = Ops.call_method obj "jQuery.proxy" (build_args args) in
  extract_t res

let j_query_dotproxy obj  _function context additional_arguments  =
  let args = alloc_args 3 in
  set_arg args 0  (inject_t _function) ;
  set_arg args 2  (inject_t additional_arguments) ;
  set_arg args 1  (inject_t context) ;
  let res = Ops.call_method obj "jQuery.proxy" (build_args args) in
  extract_t res

let j_query_dotqueue obj  element queue_name  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity element) ;
  set_arg args 1  (inject_t queue_name) ;
  let res = Ops.call_method obj "jQuery.queue" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotremove_data obj  element name  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity element) ;
  set_arg args 1  (Inject.string name) ;
  let res = Ops.call_method obj "jQuery.removeData" (build_args args) in
  extract_t res

let j_query_dotsub obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.sub" (build_args args) in
  extract_t res

let j_query_dotsupport obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.support" (build_args args) in
  extract_t res

let j_query_dottrim obj  str  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string str) ;
  let res = Ops.call_method obj "jQuery.trim" (build_args args) in
  Extract.string res

let j_query_dottype obj  obj  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t obj) ;
  let res = Ops.call_method obj "jQuery.type" (build_args args) in
  Extract.string res

let j_query_dotunique obj  array  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) array
    ) ;
  let res = Ops.call_method obj "jQuery.unique" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let j_query_dotwhen obj  deferreds  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t deferreds) ;
  let res = Ops.call_method obj "jQuery.when" (build_args args) in
  extract_t res

let jquery obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jquery" (build_args args) in
  Extract.string res

let keydown obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keydown obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keydown obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keypress obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keypress obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keypress obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keyup obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let keyup obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let keyup obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let lang obj  language  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string language) ;
  let res = Ops.call_method obj "lang" (build_args args) in
  extract_t res

let last obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "last" (build_args args) in
  extract_t res

let last obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "last" (build_args args) in
  extract_t res

let last_child obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "last-child" (build_args args) in
  extract_t res

let last_of_type obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "last-of-type" (build_args args) in
  extract_t res

let length obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "length" (build_args args) in
  Extract.int res

let live obj  events data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let live obj  events handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string events) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let live obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t events) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let load obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "load" (build_args args) in
  extract_t res

let load obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "load" (build_args args) in
  extract_t res

let load obj  url data complete_response_text__text_status___xmlhttp_request_  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t complete_response_text__text_status___xmlhttp_request_) ;
  set_arg args 1  (inject_t data) ;
  set_arg args 0  (Inject.string url) ;
  let res = Ops.call_method obj "load" (build_args args) in
  extract_t res

let lt obj  _index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int _index) ;
  let res = Ops.call_method obj "lt" (build_args args) in
  extract_t res

let lt obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.float index) ;
  let res = Ops.call_method obj "lt" (build_args args) in
  extract_t res

let map obj  callback_index__dom_element_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t callback_index__dom_element_) ;
  let res = Ops.call_method obj "map" (build_args args) in
  extract_t res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.string res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  always_callbacks always_callbacks  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t always_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  args  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t args) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  args  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t args) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  args  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t args) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  arguments  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t arguments) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  before_start  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t before_start) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  callback  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t callback) ;
  let res = Ops.call_method obj "method" (build_args args) in
  Extract.bool res

let _method obj  callbacks  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  callbacks  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

(*  let _method obj  context args  =
    let args = alloc_args 2 in
    set_arg args 1  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) args
    ) ;
    set_arg args 0  (inject_t context) ;
    let res = Ops.call_method obj "method" (build_args args) in
    extract_t res

    let _method obj  context args  =
    let args = alloc_args 2 in
    set_arg args 1  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) args
    ) ;
    set_arg args 0  (inject_t context) ;
    let res = Ops.call_method obj "method" (build_args args) in
    extract_t res*)

let _method obj  context args  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t args) ;
  set_arg args 0  (inject_t context) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  context args  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t args) ;
  set_arg args 0  (inject_t context) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_callbacks fail_callbacks  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t done_callbacks) ;
  set_arg args 1  (inject_t fail_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_callbacks fail_callbacks progress_callbacks  =
  let args = alloc_args 3 in
  set_arg args 0  (inject_t done_callbacks) ;
  set_arg args 1  (inject_t fail_callbacks) ;
  set_arg args 2  (inject_t progress_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_callbacks done_callbacks  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t done_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_filter fail_filter progress_filter  =
  let args = alloc_args 3 in
  set_arg args 0  (inject_t done_filter) ;
  set_arg args 1  (inject_t fail_filter) ;
  set_arg args 2  (inject_t progress_filter) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_filter fail_filter  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t done_filter) ;
  set_arg args 1  (inject_t fail_filter) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  done_filter fail_filter progress_filter  =
  let args = alloc_args 3 in
  set_arg args 0  (inject_t done_filter) ;
  set_arg args 1  (inject_t fail_filter) ;
  set_arg args 2  (inject_t progress_filter) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  fail_callbacks fail_callbacks  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t fail_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  flags  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string flags) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  progress_callbacks  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t progress_callbacks) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let _method obj  _type target  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string _type) ;
  set_arg args 1  (inject_t target) ;
  let res = Ops.call_method obj "method" (build_args args) in
  extract_t res

let mousedown obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mousedown obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mousedown obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mouseenter obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseenter obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseenter obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseleave obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mouseleave obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mouseleave obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mousemove obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mousemove obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mousemove obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mouseout obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseout obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseout obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseover obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseover obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseover obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseup obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let mouseup obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let mouseup obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let multiple obj  selector1 selector2 selector_n  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.string selector1) ;
  set_arg args 1  (Inject.string selector2) ;
  set_arg args 2  (inject_t selector_n) ;
  let res = Ops.call_method obj "multiple" (build_args args) in
  extract_t res

let next obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "next" (build_args args) in
  extract_t res

let next_adjacent obj  prev next  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.string next) ;
  set_arg args 0  (Inject.string prev) ;
  let res = Ops.call_method obj "next adjacent" (build_args args) in
  extract_t res

let next_siblings obj  prev siblings  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string prev) ;
  set_arg args 1  (Inject.string siblings) ;
  let res = Ops.call_method obj "next siblings" (build_args args) in
  extract_t res

let next_all obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "nextAll" (build_args args) in
  extract_t res

let next_until obj  element filter  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t element) ;
  set_arg args 1  (inject_t filter) ;
  let res = Ops.call_method obj "nextUntil" (build_args args) in
  extract_t res

let next_until obj  selector filter  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t filter) ;
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "nextUntil" (build_args args) in
  extract_t res

let _not obj  elements  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity elements) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let nth_child obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Jq_types.inject_nth_index index) ;
  let res = Ops.call_method obj "nth-child" (build_args args) in
  extract_t res

let nth_last_child obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Jq_types.inject_nth_index index) ;
  let res = Ops.call_method obj "nth-last-child" (build_args args) in
  extract_t res

let nth_last_of_type obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Jq_types.inject_nth_index index) ;
  let res = Ops.call_method obj "nth-last-of-type" (build_args args) in
  extract_t res

let nth_of_type obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Jq_types.inject_nth_index index) ;
  let res = Ops.call_method obj "nth-of-type" (build_args args) in
  extract_t res

let odd obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "odd" (build_args args) in
  extract_t res

let off obj  events selector handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "off" (build_args args) in
  extract_t res

let off obj  events selector  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t events) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "off" (build_args args) in
  extract_t res

let offset obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "offset" (build_args args) in
  extract_t res

let offset_parent obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "offsetParent" (build_args args) in
  extract_t res

let on obj  events selector data handler_event_object_  =
  let args = alloc_args 4 in
  set_arg args 2  (inject_t data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 3  (inject_t handler_event_object_) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "on" (build_args args) in
  extract_t res

let on obj  events selector data  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t data) ;
  set_arg args 0  (inject_t events) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "on" (build_args args) in
  extract_t res

let one obj  events data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (inject_t data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "one" (build_args args) in
  extract_t res

let one obj  events selector data handler_event_object_  =
  let args = alloc_args 4 in
  set_arg args 2  (inject_t data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 3  (inject_t handler_event_object_) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "one" (build_args args) in
  extract_t res

let one obj  events selector data  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t data) ;
  set_arg args 0  (inject_t events) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "one" (build_args args) in
  extract_t res

let only_child obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "only-child" (build_args args) in
  extract_t res

let only_of_type obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "only-of-type" (build_args args) in
  extract_t res

let outer_height obj  include_margin  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t include_margin) ;
  let res = Ops.call_method obj "outerHeight" (build_args args) in
  Extract.int res

let outer_width obj  include_margin  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t include_margin) ;
  let res = Ops.call_method obj "outerWidth" (build_args args) in
  Extract.int res

let parent obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "parent" (build_args args) in
  extract_t res

let parent obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "parent" (build_args args) in
  extract_t res

let parents obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "parents" (build_args args) in
  extract_t res

let parents_until obj  element filter  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t element) ;
  set_arg args 1  (inject_t filter) ;
  let res = Ops.call_method obj "parentsUntil" (build_args args) in
  extract_t res

let parents_until obj  selector filter  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t filter) ;
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "parentsUntil" (build_args args) in
  extract_t res

let password obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "password" (build_args args) in
  extract_t res

let position obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "position" (build_args args) in
  extract_t res

let prepend obj  content content  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t content) ;
  let res = Ops.call_method obj "prepend" (build_args args) in
  extract_t res

let prepend obj  function_index__html_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index__html_) ;
  let res = Ops.call_method obj "prepend" (build_args args) in
  extract_t res

let prepend_to obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "prependTo" (build_args args) in
  extract_t res

let prev obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "prev" (build_args args) in
  extract_t res

let prev_all obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "prevAll" (build_args args) in
  extract_t res

let prev_until obj  element filter  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t element) ;
  set_arg args 1  (inject_t filter) ;
  let res = Ops.call_method obj "prevUntil" (build_args args) in
  extract_t res

let prev_until obj  selector filter  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t filter) ;
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "prevUntil" (build_args args) in
  extract_t res

let push_stack obj  elements  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) elements
    ) ;
  let res = Ops.call_method obj "pushStack" (build_args args) in
  extract_t res

let push_stack obj  elements name arguments  =
  let args = alloc_args 3 in
  set_arg args 2  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) arguments
    ) ;
  set_arg args 0  (Inject.array (fun arg ->
      let res = ref (Ops.constant "undefined") in
      res :=  (inject_t arg) ;
      !res
    ) elements
    ) ;
  set_arg args 1  (Inject.string name) ;
  let res = Ops.call_method obj "pushStack" (build_args args) in
  extract_t res

let queue obj  queue_name  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t queue_name) ;
  let res = Ops.call_method obj "queue" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let radio obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "radio" (build_args args) in
  extract_t res

let ready obj  handler  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler) ;
  let res = Ops.call_method obj "ready" (build_args args) in
  extract_t res

let remove obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "remove" (build_args args) in
  extract_t res

let remove_attr obj  attribute_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string attribute_name) ;
  let res = Ops.call_method obj "removeAttr" (build_args args) in
  extract_t res

let remove_class obj  class_name  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t class_name) ;
  let res = Ops.call_method obj "removeClass" (build_args args) in
  extract_t res

let remove_class obj  function_index__class_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index__class_) ;
  let res = Ops.call_method obj "removeClass" (build_args args) in
  extract_t res

let remove_data obj  list  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t list) ;
  let res = Ops.call_method obj "removeData" (build_args args) in
  extract_t res

let remove_data obj  name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string name) ;
  let res = Ops.call_method obj "removeData" (build_args args) in
  extract_t res

let remove_prop obj  property_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string property_name) ;
  let res = Ops.call_method obj "removeProp" (build_args args) in
  extract_t res

let replace_all obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "replaceAll" (build_args args) in
  extract_t res

let replace_with obj  _function  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t _function) ;
  let res = Ops.call_method obj "replaceWith" (build_args args) in
  extract_t res

let replace_with obj  new_content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t new_content) ;
  let res = Ops.call_method obj "replaceWith" (build_args args) in
  extract_t res

let reset obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "reset" (build_args args) in
  extract_t res

let resize obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let resize obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let resize obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let root obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "root" (build_args args) in
  extract_t res

let scroll obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "scroll" (build_args args) in
  extract_t res

let scroll obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "scroll" (build_args args) in
  extract_t res

let scroll obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "scroll" (build_args args) in
  extract_t res

let scroll_left obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "scrollLeft" (build_args args) in
  Extract.int res

let scroll_top obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "scrollTop" (build_args args) in
  Extract.int res

let select obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "select" (build_args args) in
  extract_t res

let select obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "select" (build_args args) in
  extract_t res

let select obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "select" (build_args args) in
  extract_t res

let selected obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "selected" (build_args args) in
  extract_t res

let selector obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "selector" (build_args args) in
  Extract.string res

let serialize obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "serialize" (build_args args) in
  Extract.string res

let serialize_array obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "serializeArray" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let show obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let show obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let show obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let show obj  duration  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t duration) ;
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let siblings obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t selector) ;
  let res = Ops.call_method obj "siblings" (build_args args) in
  extract_t res

let size obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "size" (build_args args) in
  Extract.int res

let slice obj  start _end  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t _end) ;
  set_arg args 0  (Inject.int start) ;
  let res = Ops.call_method obj "slice" (build_args args) in
  extract_t res

let slide_down obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideDown" (build_args args) in
  extract_t res

let slide_down obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideDown" (build_args args) in
  extract_t res

let slide_down obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideDown" (build_args args) in
  extract_t res

let slide_toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideToggle" (build_args args) in
  extract_t res

let slide_toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideToggle" (build_args args) in
  extract_t res

let slide_toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideToggle" (build_args args) in
  extract_t res

let slide_up obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideUp" (build_args args) in
  extract_t res

let slide_up obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideUp" (build_args args) in
  extract_t res

let slide_up obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "slideUp" (build_args args) in
  extract_t res

let stop obj  clear_queue jump_to_end  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.bool clear_queue) ;
  set_arg args 1  (Inject.bool jump_to_end) ;
  let res = Ops.call_method obj "stop" (build_args args) in
  extract_t res

let stop obj  queue clear_queue jump_to_end  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.bool clear_queue) ;
  set_arg args 2  (Inject.bool jump_to_end) ;
  set_arg args 0  (Inject.string queue) ;
  let res = Ops.call_method obj "stop" (build_args args) in
  extract_t res

let submit obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let submit obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let submit obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let submit obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "target" (build_args args) in
  extract_t res

let text obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "text" (build_args args) in
  Extract.string res

let text obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "text" (build_args args) in
  extract_t res

let to_array obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "toArray" (build_args args) in
  Extract.array (fun res -> extract_t res) res

let toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle obj  duration  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t duration) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle obj  handler_event_object_ handler_event_object_ handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 2  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle obj  show_or_hide  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.bool show_or_hide) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle_class obj  class_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string class_name) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let toggle_class obj  class_name switch  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string class_name) ;
  set_arg args 1  (Inject.bool switch) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let toggle_class obj  function_index__class__switch_ switch  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t function_index__class__switch_) ;
  set_arg args 1  (inject_t switch) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let toggle_class obj  switch  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t switch) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let trigger obj  event extra_parameters  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event) ;
  set_arg args 1  (inject_t extra_parameters) ;
  let res = Ops.call_method obj "trigger" (build_args args) in
  extract_t res

let trigger obj  event_type extra_parameters  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 1  (inject_t extra_parameters) ;
  let res = Ops.call_method obj "trigger" (build_args args) in
  extract_t res

let trigger_handler obj  event_type extra_parameters  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 1  (inject_t extra_parameters) ;
  let res = Ops.call_method obj "triggerHandler" (build_args args) in
  extract_t res

let unbind obj  event  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t event) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let unbind obj  event_type _false  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.bool _false) ;
  set_arg args 0  (Inject.string event_type) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let unbind obj  event_type handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let undelegate obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate obj  namespace  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string namespace) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate obj  selector event_type  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate obj  selector event_type handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 2  (inject_t handler_event_object_) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate obj  selector events  =
  let args = alloc_args 2 in
  set_arg args 1  (inject_t events) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let unload obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (inject_t event_data) ;
  set_arg args 1  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "unload" (build_args args) in
  extract_t res

let unload obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t handler_event_object_) ;
  let res = Ops.call_method obj "unload" (build_args args) in
  extract_t res

let unwrap obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "unwrap" (build_args args) in
  extract_t res

let visible obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "visible" (build_args args) in
  extract_t res

let width obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "width" (build_args args) in
  Extract.int res

let wrap obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t wrapping_element) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap_all obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t wrapping_element) ;
  let res = Ops.call_method obj "wrapAll" (build_args args) in
  extract_t res

let wrap_inner obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t function_index_) ;
  let res = Ops.call_method obj "wrapInner" (build_args args) in
  extract_t res

let wrap_inner obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string wrapping_element) ;
  let res = Ops.call_method obj "wrapInner" (build_args args) in
  extract_t res
