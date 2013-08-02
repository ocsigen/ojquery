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

let add_elts obj  elements  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity elements) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add_html obj  html  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string html) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add_jq_elt obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "add" (build_args args) in
  extract_t res

let add_selector_context obj  selector context  =
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

let add_class_with_func obj  function_index__current_class_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let current_class = Extract.string arg_1 in
    ignore (function_index__current_class_ index current_class)
  )) ;
  let res = Ops.call_method obj "addClass" (build_args args) in
  extract_t res

let after_html obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string content) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let after_elt obj  content  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity content) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let after_jqelt obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t content) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let after obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let index = Extract.int arg_0 in
    let fraise = function_index_ index in
    let res = ref (Ops.constant "undefined") in
    res :=  (inject_t fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "after" (build_args args) in
  extract_t res

let and_self obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "andSelf" (build_args args) in
  extract_t res

let animate_js_obj obj  properties  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity properties) ;
  let res = Ops.call_method obj "animate" (build_args args) in
  extract_t res

let append_html obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string content) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append_elt obj  content  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity content) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append_jqelt obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t content) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append obj  function_index__html_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let html = Extract.string arg_1 in
    let fraise = function_index__html_ index html in
    let res = ref (Ops.constant "undefined") in
    res :=  (inject_t fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "append" (build_args args) in
  extract_t res

let append_to_html obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string target) ;
  let res = Ops.call_method obj "appendTo" (build_args args) in
  extract_t res

let append_to_elt obj  target  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity target) ;
  let res = Ops.call_method obj "appendTo" (build_args args) in
  extract_t res

let append_to_jq obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "appendTo" (build_args args) in
  extract_t res

let attr obj  attribute_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string attribute_name) ;
  let res = Ops.call_method obj "attr" (build_args args) in
  Extract.string res

let before_html obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string content) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let before_elt obj  content  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity content) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let before_jq obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t content) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let before obj  _function  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let fraise = _function () in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.string fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "before" (build_args args) in
  extract_t res

let bind obj  event_type event_data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.identity event_data) ;
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let bind_prevent_bubble obj  event_type event_data prevent_bubble  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.identity event_data) ;
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 2  (Inject.bool prevent_bubble) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let bind_events obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity events) ;
  let res = Ops.call_method obj "bind" (build_args args) in
  extract_t res

let blur obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let blur_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let blur_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "blur" (build_args args) in
  extract_t res

let change obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let change_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let change_with_event obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "change" (build_args args) in
  extract_t res

let children obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "children" (build_args args) in
  extract_t res

let clear_queue obj  ?queue_name   ()
    =
  let args = alloc_args 1 in
  (match queue_name with
    | Some queue_name ->
      set_arg args 0  (Inject.string queue_name) ;
    | None -> ()) ;
  let res = Ops.call_method obj "clearQueue" (build_args args) in
  extract_t res

let click obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let click_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let click_with_event obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "click" (build_args args) in
  extract_t res

let clone obj  ?with_data_and_events ?deep_with_data_and_events   ()
    =
  let args = alloc_args 2 in
  (match with_data_and_events with
    | Some with_data_and_events ->
      set_arg args 0  (Inject.bool with_data_and_events) ;
    | None -> ()) ;
  (match deep_with_data_and_events with
    | Some deep_with_data_and_events ->
      set_arg args 1  (Inject.bool deep_with_data_and_events) ;
    | None -> ()) ;
  let res = Ops.call_method obj "clone" (build_args args) in
  extract_t res

let closest_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest_jq obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let closest_selector_context obj  ?context selector  =
  let args = alloc_args 1 in
  (match context with
    | Some context ->
      set_arg args 0  (Inject.identity context) ;
    | None -> ()) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "closest" (build_args args) in
  extract_t res

let contents obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "contents" (build_args args) in
  extract_t res

let css obj  property_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string property_name) ;
  let res = Ops.call_method obj "css" (build_args args) in
  Extract.string res

let data obj  key value  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string key) ;
  set_arg args 1  (Inject.identity value) ;
  let res = Ops.call_method obj "data" (build_args args) in
  extract_t res

let data_keyval obj  obj1  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity obj1) ;
  let res = Ops.call_method obj "data" (build_args args) in
  extract_t res

let dblclick obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let dblclick_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let dblclick_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "dblclick" (build_args args) in
  extract_t res

let delay obj  ?queue_name duration  =
  let args = alloc_args 2 in
  (match queue_name with
    | Some queue_name ->
      set_arg args 1  (Inject.string queue_name) ;
    | None -> ()) ;
  set_arg args 0  (Inject.int duration) ;
  let res = Ops.call_method obj "delay" (build_args args) in
  extract_t res

let delegate_with_data obj  selector event_type event_data handler_event_object_  =
  let args = alloc_args 4 in
  set_arg args 2  (Inject.identity event_data) ;
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 3  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let delegate_with_handler obj  selector event_type handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let delegate obj  selector events  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity events) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "delegate" (build_args args) in
  extract_t res

let dequeue obj  ?queue_name   ()
    =
  let args = alloc_args 1 in
  (match queue_name with
    | Some queue_name ->
      set_arg args 0  (Inject.string queue_name) ;
    | None -> ()) ;
  let res = Ops.call_method obj "dequeue" (build_args args) in
  extract_t res

let detach obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "detach" (build_args args) in
  extract_t res

let die obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let die_with_handler obj  ?handler event_type  =
  let args = alloc_args 2 in
  (match handler with
    | Some handler ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (handler ())
      )) ;
    | None -> ()) ;
  set_arg args 0  (Inject.string event_type) ;
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let die_with_events obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity events) ;
  let res = Ops.call_method obj "die" (build_args args) in
  extract_t res

let each obj  function_index___element_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let jq_elt = extract_t arg_1 in
    ignore (function_index___element_ index jq_elt)
  )) ;
  let res = Ops.call_method obj "each" (build_args args) in
  extract_t res

let empty obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "empty" (build_args args) in
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

let eq obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int index) ;
  let res = Ops.call_method obj "eq" (build_args args) in
  extract_t res

let error_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "error" (build_args args) in
  extract_t res

let error obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "error" (build_args args) in
  extract_t res

let event_dotcurrent_target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.currentTarget" (build_args args) in
  Extract.identity res

let event_dotdata obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.data" (build_args args) in
  Extract.identity res

let event_dotdelegate_target obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.delegateTarget" (build_args args) in
  Extract.identity res

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
  Extract.identity res

let event_dotresult obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.result" (build_args args) in
  Extract.identity res

let event_dotstop_immediate_propagation obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.stopImmediatePropagation" (build_args args) in
  ignore res

let event_dotstop_propagation obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.stopPropagation" (build_args args) in
  ignore res

let event_dottarget obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "event.target" (build_args args) in
  Extract.identity res

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

let fade_in obj  ?duration ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "fadeIn" (build_args args) in
  extract_t res

let fade_out obj  ?duration ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "fadeOut" (build_args args) in
  extract_t res

let fade_to obj  duration opacity complete  =
  let args = alloc_args 3 in
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (complete ())
  )) ;
  set_arg args 0  (Inject.string duration) ;
  set_arg args 1  (Inject.float opacity) ;
  let res = Ops.call_method obj "fadeTo" (build_args args) in
  extract_t res

let fade_to obj  duration opacity easing complete  =
  let args = alloc_args 4 in
  set_arg args 3  (Ops.wrap_fun (fun arg_0 ->
    ignore (complete ())
  )) ;
  set_arg args 0  (Inject.string duration) ;
  set_arg args 2  (Inject.string easing) ;
  set_arg args 1  (Inject.float opacity) ;
  let res = Ops.call_method obj "fadeTo" (build_args args) in
  extract_t res

let fade_toggle obj  ?duration ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "fadeToggle" (build_args args) in
  extract_t res

let filter_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter_fun obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let index = Extract.int arg_0 in
    let fraise = function_index_ index in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.bool fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter_jq obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity j_query_object) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let filter_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "filter" (build_args args) in
  extract_t res

let find_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "find" (build_args args) in
  extract_t res

let find_jq obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity j_query_object) ;
  let res = Ops.call_method obj "find" (build_args args) in
  extract_t res

let find_selector obj  selector  =
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

let focus obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focus_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focus_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focus" (build_args args) in
  extract_t res

let focusin_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focusin" (build_args args) in
  extract_t res

let focusin_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focusin" (build_args args) in
  extract_t res

let focusout_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focusout" (build_args args) in
  extract_t res

let focusout_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "focusout" (build_args args) in
  extract_t res

let get obj  index  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.int index) ;
  let res = Ops.call_method obj "get" (build_args args) in
  Extract.identity res

let has_elt obj  contained  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity contained) ;
  let res = Ops.call_method obj "has" (build_args args) in
  extract_t res

let has_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "has" (build_args args) in
  extract_t res

let has_class obj  class_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string class_name) ;
  let res = Ops.call_method obj "hasClass" (build_args args) in
  Extract.bool res

let height obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "height" (build_args args) in
  Extract.int res

let hide obj  ?duration ?easing ?complete   ()
    =
  let args = alloc_args 3 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match easing with
    | Some easing ->
      set_arg args 1  (Inject.string easing) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "hide" (build_args args) in
  extract_t res

let hover obj  handler_in_event_object_ handler_out_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_in_event_object_ ())
  )) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_out_event_object_ ())
  )) ;
  let res = Ops.call_method obj "hover" (build_args args) in
  extract_t res

let html obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "html" (build_args args) in
  Extract.string res

let index obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.int res

let index_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.int res

let index_jq obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t element) ;
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.int res

let index obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "index" (build_args args) in
  Extract.int res

let inner_height obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "innerHeight" (build_args args) in
  Extract.int res

let inner_width obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "innerWidth" (build_args args) in
  Extract.int res

let insert_after_selector obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string target) ;
  let res = Ops.call_method obj "insertAfter" (build_args args) in
  extract_t res

let insert_after_elt obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity target) ;
  let res = Ops.call_method obj "insertAfter" (build_args args) in
  extract_t res

let insert_after_jq obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "insertAfter" (build_args args) in
  extract_t res

let insert_before_selector obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string target) ;
  let res = Ops.call_method obj "insertBefore" (build_args args) in
  extract_t res

let insert_before_elt obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity target) ;
  let res = Ops.call_method obj "insertBefore" (build_args args) in
  extract_t res

let insert_before_jq obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "insertBefore" (build_args args) in
  extract_t res

let is_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is_with_func obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let index = Extract.int arg_0 in
    let fraise = function_index_ index in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.bool fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is_js_obj obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity j_query_object) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let is_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "is" (build_args args) in
  Extract.bool res

let jQ obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let jQ_elt obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let jQ_jq obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity j_query_object) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let jQ_js obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity _object) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let jQ_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "jQuery" (build_args args) in
  extract_t res

let j_query_dotbrowser obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.browser" (build_args args) in
  Extract.identity res

let j_query_dotcontains obj  container contained  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity contained) ;
  set_arg args 0  (Inject.identity container) ;
  let res = Ops.call_method obj "jQuery.contains" (build_args args) in
  Extract.bool res

let j_query_dotcss_hooks obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.cssHooks" (build_args args) in
  Extract.identity res

let j_query_dotdata obj  element key value  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.identity element) ;
  set_arg args 1  (Inject.string key) ;
  set_arg args 2  (Inject.identity value) ;
  let res = Ops.call_method obj "jQuery.data" (build_args args) in
  Extract.identity res

let j_query_dotdequeue obj  ?queue_name element  =
  let args = alloc_args 2 in
  (match queue_name with
    | Some queue_name ->
      set_arg args 1  (Inject.string queue_name) ;
    | None -> ()) ;
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "jQuery.dequeue" (build_args args) in
  ignore res

let j_query_doteach obj  collection callback_index_in_array__value_of_element_  =
  let args = alloc_args 2 in
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (callback_index_in_array__value_of_element_ ())
  )) ;
  set_arg args 0  (Inject.identity collection) ;
  let res = Ops.call_method obj "jQuery.each" (build_args args) in
  Extract.identity res

let j_query_doterror obj  message  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string message) ;
  let res = Ops.call_method obj "jQuery.error" (build_args args) in
  ignore res

let j_query_dotextend obj  ?deep target object1  =
  let args = alloc_args 3 in
  (match deep with
    | Some deep ->
      set_arg args 0  (Inject.bool deep) ;
    | None -> ()) ;
  set_arg args 2  (Inject.identity object1) ;
  set_arg args 1  (Inject.identity target) ;
  let res = Ops.call_method obj "jQuery.extend" (build_args args) in
  Extract.identity res

let j_query_dotfn_dotextend obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity _object) ;
  let res = Ops.call_method obj "jQuery.fn.extend" (build_args args) in
  Extract.identity res

let j_query_dotfx_dotinterval obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.fx.interval" (build_args args) in
  Extract.float res

let j_query_dotfx_dotoff obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.fx.off" (build_args args) in
  Extract.bool res

let j_query_dotglobal_eval obj  code  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string code) ;
  let res = Ops.call_method obj "jQuery.globalEval" (build_args args) in
  ignore res

let j_query_dothas_data obj  element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity element) ;
  let res = Ops.call_method obj "jQuery.hasData" (build_args args) in
  Extract.bool res

let j_query_dothold_ready obj  hold  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.bool hold) ;
  let res = Ops.call_method obj "jQuery.holdReady" (build_args args) in
  ignore res

let j_query_dotis_array obj  obj1  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity obj1) ;
  let res = Ops.call_method obj "jQuery.isArray" (build_args args) in
  Extract.bool res

let j_query_dotis_empty_object obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity _object) ;
  let res = Ops.call_method obj "jQuery.isEmptyObject" (build_args args) in
  Extract.bool res

let j_query_dotis_function obj  obj1  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity obj1) ;
  let res = Ops.call_method obj "jQuery.isFunction" (build_args args) in
  Extract.bool res

let j_query_dotis_numeric obj  value  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity value) ;
  let res = Ops.call_method obj "jQuery.isNumeric" (build_args args) in
  Extract.bool res

let j_query_dotis_plain_object obj  _object  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity _object) ;
  let res = Ops.call_method obj "jQuery.isPlainObject" (build_args args) in
  Extract.bool res

let j_query_dotis_window obj  obj1  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity obj1) ;
  let res = Ops.call_method obj "jQuery.isWindow" (build_args args) in
  Extract.bool res

let j_query_dotis_xmldoc obj  node  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity node) ;
  let res = Ops.call_method obj "jQuery.isXMLDoc" (build_args args) in
  Extract.bool res

let j_query_dotno_conflict obj  remove_all  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.bool remove_all) ;
  let res = Ops.call_method obj "jQuery.noConflict" (build_args args) in
  Extract.identity res

let j_query_dotnow obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jQuery.now" (build_args args) in
  Extract.float res

let j_query_dotparse_json obj  json  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string json) ;
  let res = Ops.call_method obj "jQuery.parseJSON" (build_args args) in
  Extract.identity res

let j_query_dotparse_xml obj  data  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string data) ;
  let res = Ops.call_method obj "jQuery.parseXML" (build_args args) in
  Extract.identity res

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
  Extract.identity res

let j_query_dottrim obj  str  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string str) ;
  let res = Ops.call_method obj "jQuery.trim" (build_args args) in
  Extract.string res

let j_query_dottype obj  obj1  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity obj1) ;
  let res = Ops.call_method obj "jQuery.type" (build_args args) in
  Extract.string res

let jquery obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "jquery" (build_args args) in
  Extract.string res

let keydown obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keydown_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keydown_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keydown" (build_args args) in
  extract_t res

let keypress obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keypress_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keypress_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keypress" (build_args args) in
  extract_t res

let keyup obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let keyup_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let keyup_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "keyup" (build_args args) in
  extract_t res

let last obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "last" (build_args args) in
  extract_t res

let length obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "length" (build_args args) in
  Extract.int res

let live_with_data obj  events data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.identity data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let live_with_handler obj  events handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string events) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let live obj  events  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity events) ;
  let res = Ops.call_method obj "live" (build_args args) in
  extract_t res

let load_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "load" (build_args args) in
  extract_t res

let load_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "load" (build_args args) in
  extract_t res

let map obj  callback_index__dom_element_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let element = Extract.identity arg_1 in
    let fraise = callback_index__dom_element_ index element in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.identity fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "map" (build_args args) in
  extract_t res

let mousedown obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mousedown_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mousedown_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mousedown" (build_args args) in
  extract_t res

let mouseenter obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseenter_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseenter_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseenter" (build_args args) in
  extract_t res

let mouseleave obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mouseleave_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mouseleave_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseleave" (build_args args) in
  extract_t res

let mousemove obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mousemove_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mousemove_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mousemove" (build_args args) in
  extract_t res

let mouseout obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseout_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseout_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseout" (build_args args) in
  extract_t res

let mouseover obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseover_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseover_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseover" (build_args args) in
  extract_t res

let mouseup obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let mouseup_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let mouseup_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "mouseup" (build_args args) in
  extract_t res

let next obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "next" (build_args args) in
  extract_t res

let next_all obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "nextAll" (build_args args) in
  extract_t res

let next_until obj  ?element ?filter   ()
    =
  let args = alloc_args 2 in
  (match element with
    | Some element ->
      set_arg args 0  (inject_t element) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "nextUntil" (build_args args) in
  extract_t res

let next_until obj  ?selector ?filter   ()
    =
  let args = alloc_args 2 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "nextUntil" (build_args args) in
  extract_t res

let _not obj  elements  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity elements) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not_func obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let index = Extract.int arg_0 in
    let fraise = function_index_ index in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.bool fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not_jq obj  j_query_object  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t j_query_object) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let _not_selector obj  selector  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "not" (build_args args) in
  extract_t res

let off_with_handler obj  events selector handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "off" (build_args args) in
  extract_t res

let off obj  events selector  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity events) ;
  set_arg args 1  (Inject.string selector) ;
  let res = Ops.call_method obj "off" (build_args args) in
  extract_t res

let offset obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "offset" (build_args args) in
  Extract.identity res

let offset_parent obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "offsetParent" (build_args args) in
  extract_t res

let one obj  events data handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.identity data) ;
  set_arg args 0  (Inject.string events) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "one" (build_args args) in
  extract_t res

let outer_height obj  ?include_margin   ()
    =
  let args = alloc_args 1 in
  (match include_margin with
    | Some include_margin ->
      set_arg args 0  (Inject.bool include_margin) ;
    | None -> ()) ;
  let res = Ops.call_method obj "outerHeight" (build_args args) in
  Extract.int res

let outer_width obj  ?include_margin   ()
    =
  let args = alloc_args 1 in
  (match include_margin with
    | Some include_margin ->
      set_arg args 0  (Inject.bool include_margin) ;
    | None -> ()) ;
  let res = Ops.call_method obj "outerWidth" (build_args args) in
  Extract.int res

let parent obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "parent" (build_args args) in
  extract_t res

let parents obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "parents" (build_args args) in
  extract_t res

let parents_until obj  ?element ?filter   ()
    =
  let args = alloc_args 2 in
  (match element with
    | Some element ->
      set_arg args 0  (inject_t element) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "parentsUntil" (build_args args) in
  extract_t res

let parents_until obj  ?selector ?filter   ()
    =
  let args = alloc_args 2 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "parentsUntil" (build_args args) in
  extract_t res

let position obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "position" (build_args args) in
  Extract.identity res

let prepend_jq obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t content) ;
  let res = Ops.call_method obj "prepend" (build_args args) in
  extract_t res

let prepend_html obj  content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string content) ;
  let res = Ops.call_method obj "prepend" (build_args args) in
  extract_t res

let prepend_to_html obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string target) ;
  let res = Ops.call_method obj "prependTo" (build_args args) in
  extract_t res

let prepend_to_jQ obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "prependTo" (build_args args) in
  extract_t res

let prepend_to_elt obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity target) ;
  let res = Ops.call_method obj "prependTo" (build_args args) in
  extract_t res

let prev obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "prev" (build_args args) in
  extract_t res

let prev_all obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "prevAll" (build_args args) in
  extract_t res

let prev_until_jq obj  ?element ?filter   ()
    =
  let args = alloc_args 2 in
  (match element with
    | Some element ->
      set_arg args 0  (inject_t element) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "prevUntil" (build_args args) in
  extract_t res

let prev_until_elt obj  ?element ?filter   ()
    =
  let args = alloc_args 2 in
  (match element with
    | Some element ->
      set_arg args 0  (Inject.identity element) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "prevUntil" (build_args args) in
  extract_t res

let prev_until_selector obj  ?selector ?filter   ()
    =
  let args = alloc_args 2 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  (match filter with
    | Some filter ->
      set_arg args 1  (Inject.string filter) ;
    | None -> ()) ;
  let res = Ops.call_method obj "prevUntil" (build_args args) in
  extract_t res

let ready obj  handler  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler ())
  )) ;
  let res = Ops.call_method obj "ready" (build_args args) in
  extract_t res

let remove obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "remove" (build_args args) in
  extract_t res

let remove_attr obj  attribute_name  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string attribute_name) ;
  let res = Ops.call_method obj "removeAttr" (build_args args) in
  extract_t res

let remove_class obj  ?class_name   ()
    =
  let args = alloc_args 1 in
  (match class_name with
    | Some class_name ->
      set_arg args 0  (Inject.string class_name) ;
    | None -> ()) ;
  let res = Ops.call_method obj "removeClass" (build_args args) in
  extract_t res

let remove_class_func obj  function_index__class_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let class_ = Extract.identity arg_1 in
    ignore (function_index__class_ index class_)
  )) ;
  let res = Ops.call_method obj "removeClass" (build_args args) in
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

let replace_all_selector obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string target) ;
  let res = Ops.call_method obj "replaceAll" (build_args args) in
  extract_t res

let replace_all_jq obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t target) ;
  let res = Ops.call_method obj "replaceAll" (build_args args) in
  extract_t res

let replace_all_elt obj  target  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity target) ;
  let res = Ops.call_method obj "replaceAll" (build_args args) in
  extract_t res

let replace_with_jq obj  new_content  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t new_content) ;
  let res = Ops.call_method obj "replaceWith" (build_args args) in
  extract_t res

let replace_with_html obj  new_content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string new_content) ;
  let res = Ops.call_method obj "replaceWith" (build_args args) in
  extract_t res

let replace_with_elt obj  new_content  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity new_content) ;
  let res = Ops.call_method obj "replaceWith" (build_args args) in
  extract_t res

let resize obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let resize_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let resize_with_event obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "resize" (build_args args) in
  extract_t res

let scroll obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "scroll" (build_args args) in
  extract_t res

let scroll_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "scroll" (build_args args) in
  extract_t res

let scroll_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
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

let select_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "select" (build_args args) in
  extract_t res

let select_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "select" (build_args args) in
  extract_t res

let serialize obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "serialize" (build_args args) in
  Extract.string res

let show obj  ?duration ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let show_with_easing obj  ?complete duration easing  =
  let args = alloc_args 2 in
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  set_arg args 0  (Inject.string duration) ;
  set_arg args 1  (Inject.string easing) ;
  let res = Ops.call_method obj "show" (build_args args) in
  extract_t res

let siblings obj  ?selector   ()
    =
  let args = alloc_args 1 in
  (match selector with
    | Some selector ->
      set_arg args 0  (Inject.string selector) ;
    | None -> ()) ;
  let res = Ops.call_method obj "siblings" (build_args args) in
  extract_t res

let size obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "size" (build_args args) in
  Extract.int res

let slice obj  ?_end start  =
  let args = alloc_args 2 in
  (match _end with
    | Some _end ->
      set_arg args 1  (Inject.int _end) ;
    | None -> ()) ;
  set_arg args 0  (Inject.int start) ;
  let res = Ops.call_method obj "slice" (build_args args) in
  extract_t res

let slide_down obj  ?duration ?easing ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match easing with
    | Some easing ->
      set_arg args 1  (Inject.string easing) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "slideDown" (build_args args) in
  extract_t res

let slide_toggle obj  ?duration ?easing ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match easing with
    | Some easing ->
      set_arg args 1  (Inject.string easing) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "slideToggle" (build_args args) in
  extract_t res

let slide_up obj  ?duration ?easing ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match easing with
    | Some easing ->
      set_arg args 1  (Inject.string easing) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "slideUp" (build_args args) in
  extract_t res

let stop obj  clear_queue jump_to_end  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.bool clear_queue) ;
  set_arg args 1  (Inject.bool jump_to_end) ;
  let res = Ops.call_method obj "stop" (build_args args) in
  extract_t res

let stop_named_queue obj  queue clear_queue jump_to_end  =
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

let submit_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let submit_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "submit" (build_args args) in
  extract_t res

let text obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "text" (build_args args) in
  Extract.string res

let text_set obj  text  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string text) ;
  let res = Ops.call_method obj "text" (build_args args) in
  extract_t res

let text_set_func obj  func_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 ->
    let index = Extract.int arg_0 in
    let text = Extract.string arg_1 in
    let fraise = func_ index text in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.string fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "text" (build_args args) in
  extract_t res

let toggle obj  ?duration ?complete   ()
    =
  let args = alloc_args 2 in
  (match duration with
    | Some duration ->
      set_arg args 0  (Inject.string duration) ;
    | None -> ()) ;
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle_wih_easing obj  ?complete duration easing  =
  let args = alloc_args 2 in
  (match complete with
    | Some complete ->
      set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
        ignore (complete ())
      )) ;
    | None -> ()) ;
  set_arg args 0  (Inject.string duration) ;
  set_arg args 1  (Inject.string easing) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle_with_handler obj  ?additionnal_handler_event_object_ handler_even_event_object_ handler_odd_event_object_  =
  let args = alloc_args 3 in
  (match additionnal_handler_event_object_ with
    | Some additionnal_handler_event_object_ ->
      set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
        ignore (additionnal_handler_event_object_ ())
      )) ;
    | None -> ()) ;
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_even_event_object_ ())
  )) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_odd_event_object_ ())
  )) ;
  let res = Ops.call_method obj "toggle" (build_args args) in
  extract_t res

let toggle_with_bool obj  show_or_hide  =
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

let toggle_class obj  ?switch function_index__class__switch_  =
  let args = alloc_args 2 in
  (match switch with
    | Some switch ->
      set_arg args 1  (Inject.bool switch) ;
    | None -> ()) ;
  set_arg args 0  (Ops.wrap_fun (fun arg_0 arg_1 arg_2 ->
    let index = Extract.int arg_0 in
    let class_ = Extract.identity arg_1 in
    let switch = Extract.bool arg_2 in
    let fraise = function_index__class__switch_ index class_ switch in
    let res = ref (Ops.constant "undefined") in
    res :=  (Inject.string fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let toggle_class obj  ?switch   ()
    =
  let args = alloc_args 1 in
  (match switch with
    | Some switch ->
      set_arg args 0  (Inject.bool switch) ;
    | None -> ()) ;
  let res = Ops.call_method obj "toggleClass" (build_args args) in
  extract_t res

let unbind_with_event obj  event  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity event) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let unbind_return_false obj  event_type  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let unbind_with_handler obj  event_type handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.string event_type) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "unbind" (build_args args) in
  extract_t res

let undelegate obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate_namespace obj  namespace  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string namespace) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate_selector obj  selector event_type  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate_handler obj  selector event_type handler_event_object_  =
  let args = alloc_args 3 in
  set_arg args 1  (Inject.string event_type) ;
  set_arg args 2  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let undelegate_events obj  selector events  =
  let args = alloc_args 2 in
  set_arg args 1  (Inject.identity events) ;
  set_arg args 0  (Inject.string selector) ;
  let res = Ops.call_method obj "undelegate" (build_args args) in
  extract_t res

let unload_with_data obj  event_data handler_event_object_  =
  let args = alloc_args 2 in
  set_arg args 0  (Inject.identity event_data) ;
  set_arg args 1  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "unload" (build_args args) in
  extract_t res

let unload_with_handler obj  handler_event_object_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    ignore (handler_event_object_ ())
  )) ;
  let res = Ops.call_method obj "unload" (build_args args) in
  extract_t res

let unwrap obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "unwrap" (build_args args) in
  extract_t res

let width obj   =
  let args = alloc_args 0 in
  let res = Ops.call_method obj "width" (build_args args) in
  Extract.int res

let wrap obj  function_index_  =
  let args = alloc_args 1 in
  set_arg args 0  (Ops.wrap_fun (fun arg_0 ->
    let index = Extract.int arg_0 in
    let fraise = function_index_ index in
    let res = ref (Ops.constant "undefined") in
    res :=  (inject_t fraise) ;
    !res
  )) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap_html obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string wrapping_element) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap_jq obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t wrapping_element) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap_elt obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity wrapping_element) ;
  let res = Ops.call_method obj "wrap" (build_args args) in
  extract_t res

let wrap_all_html obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string wrapping_element) ;
  let res = Ops.call_method obj "wrapAll" (build_args args) in
  extract_t res

let wrap_all_jq obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (inject_t wrapping_element) ;
  let res = Ops.call_method obj "wrapAll" (build_args args) in
  extract_t res

let wrap_all_elt obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.identity wrapping_element) ;
  let res = Ops.call_method obj "wrapAll" (build_args args) in
  extract_t res

let wrap_inner obj  wrapping_element  =
  let args = alloc_args 1 in
  set_arg args 0  (Inject.string wrapping_element) ;
  let res = Ops.call_method obj "wrapInner" (build_args args) in
  extract_t res
