(** jQuery binding for ocaml *)


type t

(**/**)

(**/**)

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val jQ : string -> t

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val jQelt : < .. > Js.t -> t

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val js_jQ : string -> < .. > Js.t

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val js_jQelt : < .. > Js.t -> < .. > Js.t

(** Add elements to the set of matched elements.
    @param elements One or more elements to add to the set of matched elements. *)
val add_elts :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Add elements to the set of matched elements.
    @param html An HTML fragment to add to the set of matched elements. *)
val add_html :
  t ->
  string ->
  t

(** Add elements to the set of matched elements.
    @param j_query_object An existing jQuery object to add to the set of matched
    elements. *)
val add_jq_elt :
  t ->
  t ->
  t

(** Add elements to the set of matched elements.
    @param selector A string representing a selector expression to find
    additional elements to add to the set of matched elements. *)
val add_selector :
  t ->
  string ->
  t

(** Add elements to the set of matched elements.
    @param selector A string representing a selector expression to find
    additional elements to add to the set of matched elements.
    @param context The point in the document at which the selector should begin
    matching; similar to the context argument of the $(selector, context) method. *)
val add_selector_context :
  t ->
  string ->
  Dom_html.element Js.t ->
  t

(** Add the previous set of elements on the stack to the current set, optionally
    filtered by a selector.
    @param selector A string containing a selector expression to match the
    current set of elements against. *)
val add_back :
  t ->
  string ->
  t

(** Adds the specified class(es) to each of the set of matched elements.
    @param class_name One or more space-separated classes to be added to the
    class attribute of each matched element. *)
val add_class :
  t ->
  string ->
  t

(** Adds the specified class(es) to each of the set of matched elements.
    @param function_index__current_class_ A function returning one or more
    space-separated class names to be added to the existing class name(s).
    Receives the index position of the element in the set and the existing class
    name(s) as arguments. Within the function, this refers to the current element
    in the set. *)
val add_class_with_func :
  t ->
  (int ->string ->unit) ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param content HTML string to insert after each element in the set of matched
    elements. *)
val after_html :
  t ->
  string ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param content DOM element to insert after each element in the set of matched
    elements. *)
val after_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param content jQuery object to insert after each element in the set of
    matched elements. *)
val after_jqelt :
  t ->
  t ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param function_index_ A function that returns a jQuery object to insert
    after each element in the set of matched elements. Receives the index
    position of the element in the set as an argument. Within the function, this
    refers to the current element in the set. *)
val after :
  t ->
  (int ->t) ->
  t

(** Add the previous set of elements on the stack to the current set. *)
val and_self :
  t ->
  t

(**
   @param properties An object of CSS properties and values that the animation
   will move toward. *)
val animate_js_obj :
  t ->
  < .. > Js.t ->
  t

(** Insert content, specified by the parameter, to the end of each element in the
    set of matched elements.
    @param content HTML string to insert at the end of each element in the set of
    matched elements. *)
val append_html :
  t ->
  string ->
  t

(** Insert content, specified by the parameter, to the end of each element in the
    set of matched elements.
    @param content DOM element to insert at the end of each element in the set of
    matched elements. *)
val append_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert content, specified by the parameter, to the end of each element in the
    set of matched elements.
    @param content jQuery object to insert at the end of each element in the set
    of matched elements. *)
val append_jqelt :
  t ->
  t ->
  t

(** Insert content, specified by the parameter, to the end of each element in the
    set of matched elements.
    @param function_index__html_ A function that returns an HTML string, DOM
    element(s), or jQuery object to insert at the end of each element in the set
    of matched elements. Receives the index position of the element in the set
    and the old HTML value of the element as arguments. Within the function, this
    refers to the current element in the set. *)
val append :
  t ->
  (int ->string ->t) ->
  t

(** Insert every element in the set of matched elements to the end of the target.
    @param target A selector or HTML string; the matched set of elements will be
    inserted at the end of the element(s) specified by this parameter. *)
val append_to_html :
  t ->
  string ->
  t

(** Insert every element in the set of matched elements to the end of the target.
    @param target An element; the matched set of elements will be inserted at the
    end of the element(s) specified by this parameter. *)
val append_to_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert every element in the set of matched elements to the end of the target.
    @param target jQuery object; the matched set of elements will be inserted at
    the end of the element(s) specified by this parameter. *)
val append_to_jq :
  t ->
  t ->
  t

(** Get the value of an attribute for the first element in the set of matched
    elements.
    @param attribute_name The name of the attribute to get. *)
val attr :
  t ->
  string ->
  string

(** Insert content, specified by the parameter, before each element in the set of
    matched elements.
    @param content HTML string to insert before each element in the set of
    matched elements. *)
val before_html :
  t ->
  string ->
  t

(** Insert content, specified by the parameter, before each element in the set of
    matched elements.
    @param content DOM element to insert before each element in the set of
    matched elements. *)
val before_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert content, specified by the parameter, before each element in the set of
    matched elements.
    @param content jQuery object to insert before each element in the set of
    matched elements. *)
val before_jq :
  t ->
  t ->
  t

(** Insert content, specified by the parameter, before each element in the set of
    matched elements.
    @param _function A function that returns an HTML string, DOM element(s), or
    jQuery object to insert before each element in the set of matched elements.
    Receives the index position of the element in the set as an argument. Within
    the function, this refers to the current element in the set. *)
val before :
  t ->
  (unit -> string) ->
  t

(** Attach a handler to an event for the elements.
    @param event_type A string containing one or more DOM event types, such as
    "click" or "submit," or custom event names.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val bind :
  t ->
  string ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Attach a handler to an event for the elements.
    @param event_type A string containing one or more DOM event types, such as
    "click" or "submit," or custom event names.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param prevent_bubble Setting the third argument to false will attach a
    function that prevents the default action from occurring and stops the event
    from bubbling. *)
val bind_prevent_bubble :
  t ->
  string ->
  < .. > Js.t ->
  bool ->
  t

(** Attach a handler to an event for the elements.
    @param events An object containing one or more DOM event types and functions
    to execute for them. *)
val bind_events :
  t ->
  < .. > Js.t ->
  t

(** Bind an event handler to the "blur" JavaScript event, or trigger that event
    on an element. *)
val blur :
  t ->
  t

(** Bind an event handler to the "blur" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val blur_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(**
   @param handler_event_object_ A function to execute each time the event is
   triggered. *)
val blur_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "change" JavaScript event, or trigger that event
    on an element. *)
val change :
  t ->
  t

(** Bind an event handler to the "change" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val change_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "change" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val change_with_event :
  t ->
  (unit -> unit) ->
  t

(** Get the children of each element in the set of matched elements, optionally
    filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val children :
  t ->
  ?selector: string ->
  unit ->     t

(** Remove from the queue all items that have not yet been run.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val clear_queue :
  t ->
  ?queue_name: string ->
  unit ->     t

(** Bind an event handler to the "click" JavaScript event, or trigger that event
    on an element. *)
val click :
  t ->
  t

(** Bind an event handler to the "click" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val click_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "click" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val click_with_event :
  t ->
  (unit -> unit) ->
  t

(** Create a deep copy of the set of matched elements.
    @param with_data_and_events A Boolean indicating whether event handlers and
    data should be copied along with the elements. The default value is false.
    *In jQuery 1.5.0 the default value was incorrectly true; it was changed back
    to false in 1.5.1 and up.
    @param deep_with_data_and_events A Boolean indicating whether event handlers
    and data for all children of the cloned element should be copied. By default
    its value matches the first argument's value (which defaults to false). *)
val clone :
  t ->
  ?with_data_and_events: bool ->
  ?deep_with_data_and_events: bool ->
  unit ->     t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param element An element to match elements against. *)
val closest_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param j_query_object A jQuery object to match elements against. *)
val closest_jq :
  t ->
  t ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param selector A string containing a selector expression to match elements
    against. *)
val closest_selector :
  t ->
  string ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param context A DOM element within which a matching element may be found. If
    no context is passed in then the context of the jQuery set will be used
    instead.
    @param selector A string containing a selector expression to match elements
    against. *)
val closest_selector_context :
  t ->
  ?context: Dom_html.element (*Dom.nodelist*) Js.t ->
  string ->
  t

(** Get the children of each element in the set of matched elements, including
    text and comment nodes. *)
val contents :
  t ->
  t

(** Get the value of style properties for the first element in the set of matched
    elements.
    @param property_name A CSS property. *)
val css :
  t ->
  string ->
  string

(** Store arbitrary data associated with the matched elements.
    @param key A string naming the piece of data to set.
    @param value The new data value; it can be any Javascript type including
    Array or Object. *)
val data :
  t ->
  string ->
  < .. > Js.t ->
  t

(** Store arbitrary data associated with the matched elements.
    @param obj An object of key-value pairs of data to update. *)
val data_keyval :
  t ->
  < .. > Js.t ->
  t

(** Bind an event handler to the "dblclick" JavaScript event, or trigger that
    event on an element. *)
val dblclick :
  t ->
  t

(** Bind an event handler to the "dblclick" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val dblclick_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "dblclick" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val dblclick_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Set a timer to delay execution of subsequent items in the queue.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue.
    @param duration An integer indicating the number of milliseconds to delay
    execution of the next item in the queue. *)
val delay :
  t ->
  ?queue_name: string ->
  int ->
  t

(** Attach a handler to one or more events for all elements that match the
    selector, now or in the future, based on a specific set of root elements.
    @param selector A selector to filter the elements that trigger the event.
    @param event_type A string containing one or more space-separated JavaScript
    event types, such as "click" or "keydown," or custom event names.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val delegate_with_data :
  t ->
  string ->
  string ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Attach a handler to one or more events for all elements that match the
    selector, now or in the future, based on a specific set of root elements.
    @param selector A selector to filter the elements that trigger the event.
    @param event_type A string containing one or more space-separated JavaScript
    event types, such as "click" or "keydown," or custom event names.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val delegate_with_handler :
  t ->
  string ->
  string ->
  (unit -> unit) ->
  t

(** Attach a handler to one or more events for all elements that match the
    selector, now or in the future, based on a specific set of root elements.
    @param selector A selector to filter the elements that trigger the event.
    @param events A plain object of one or more event types and functions to
    execute for them. *)
val delegate :
  t ->
  string ->
  < .. > Js.t ->
  t

(** Execute the next function on the queue for the matched elements.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val dequeue :
  t ->
  ?queue_name: string ->
  unit ->     t

(** Remove the set of matched elements from the DOM.
    @param selector A selector expression that filters the set of matched
    elements to be removed. *)
val detach :
  t ->
  ?selector: string ->
  unit ->     t

(** Remove event handlers previously attached using .live() from the elements. *)
val die :
  t ->
  t

(** Remove event handlers previously attached using .live() from the elements.
    @param handler The function that is no longer to be executed.
    @param event_type A string containing a JavaScript event type, such as click
    or keydown. *)
val die_with_handler :
  t ->
  ?handler: (unit -> unit) ->
  string ->
  t

(** Remove event handlers previously attached using .live() from the elements.
    @param events A plain object of one or more event types, such as click or
    keydown and their corresponding functions that are no longer to be executed. *)
val die_with_events :
  t ->
  < .. > Js.t ->
  t

(** Iterate over a jQuery object, executing a function for each matched element.
    @param function_index___element_ A function to execute for each matched
    element. *)
val each :
  t ->
  (int ->t ->unit) ->
  t

(** Remove all child nodes of the set of matched elements from the DOM. *)
val empty :
  t ->
  t

(** End the most recent filtering operation in the current chain and return the
    set of matched elements to its previous state. *)
val _end :
  t ->
  t

(** Reduce the set of matched elements to the one at the specified index.
    @param _index An integer indicating the position of the element, counting
    backwards  from the last element in the set. *)
val eq :
  t ->
  int ->
  t

(** Reduce the set of matched elements to the one at the specified index.
    @param index An integer indicating the 0-based position of the element. *)
val eq :
  t ->
  int ->
  t

(** Bind an event handler to the "error" JavaScript event
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val error_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(**
   @param handler_event_object_ A function to execute when the event is
   triggered. *)
val error :
  t ->
  (unit -> unit) ->
  t

(** The current DOM element within the event bubbling phase. *)
val event_dotcurrent_target :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t

(** An optional object of data passed to an event method when the current
    executing handler is bound. *)
val event_dotdata :
  t ->
  < .. > Js.t

(** The element where the currently-called jQuery event handler was attached. *)
val event_dotdelegate_target :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t

(** Returns whether *)
val event_dotis_default_prevented :
  t ->
  bool

(** Returns whether event.stopImmediatePropagation() was ever called on this
    event object. *)
val event_dotis_immediate_propagation_stopped :
  t ->
  bool

(** Returns whether *)
val event_dotis_propagation_stopped :
  t ->
  bool

(** Indicates whether the META key was pressed when the event fired. *)
val event_dotmeta_key :
  t ->
  bool

(** The namespace specified when the event was triggered. *)
val event_dotnamespace :
  t ->
  string

(** The mouse position relative to the left edge of the document. *)
val event_dotpage_x :
  t ->
  float

(** The mouse position relative to the top edge of the document. *)
val event_dotpage_y :
  t ->
  float

(** The other DOM element involved in the event, if any. *)
val event_dotrelated_target :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t

(** The last value returned by an event handler that was triggered by this event,
    unless the value was *)
val event_dotresult :
  t ->
  < .. > Js.t

(** Keeps the rest of the handlers from being executed and prevents the event
    from bubbling up the DOM tree. *)
val event_dotstop_immediate_propagation :
  t ->
  unit

(** Prevents the event from bubbling up the DOM tree, preventing any parent
    handlers from being notified of the event. *)
val event_dotstop_propagation :
  t ->
  unit

(** The DOM element that initiated the event. *)
val event_dottarget :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t

(** The difference in milliseconds between the time the browser created the event
    and January 1, 1970. *)
val event_dottime_stamp :
  t ->
  float

(** Describes the nature of the event. *)
val event_dottype :
  t ->
  string

(** For key or mouse events, this property indicates the specific key or button
    that was pressed. *)
val event_dotwhich :
  t ->
  float

(** Display the matched elements by fading them to opaque.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param complete A function to call once the animation is complete. *)
val fade_in :
  t ->
  ?duration: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(**
   @param duration Either an int or a string like 'slow', or 'fast'
   @param complete A function to call once the animation is complete. *)
val fade_out :
  t ->
  ?duration: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(**
   @param duration A string or number determining how long the animation will
   run.
   @param opacity A number between 0 and 1 denoting the target opacity.
   @param complete A function to call once the animation is complete. *)
val fade_to :
  t ->
  string ->
  float ->
  (unit -> unit) ->
  t

(**
   @param duration A string or number determining how long the animation will
   run.
   @param opacity A number between 0 and 1 denoting the target opacity.
   @param easing A string indicating which easing function to use for the
   transition.
   @param complete A function to call once the animation is complete. *)
val fade_to :
  t ->
  string ->
  float ->
  string ->
  (unit -> unit) ->
  t

(**
   @param duration Either an int or a string like 'slow', or 'fast'
   @param complete A function to call once the animation is complete. *)
val fade_toggle :
  t ->
  ?duration: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param element An element to match the current set of elements against. *)
val filter_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param function_index_ A function used as a test for each element in the set.
    this is the current DOM element. *)
val filter_fun :
  t ->
  (int ->bool) ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val filter_jq :
  t ->
  < .. > Js.t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param selector A string containing a selector expression to match the
    current set of elements against. *)
val filter_selector :
  t ->
  string ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param element An element to match elements against. *)
val find_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param j_query_object A jQuery object to match elements against. *)
val find_jq :
  t ->
  < .. > Js.t ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param selector A string containing a selector expression to match elements
    against. *)
val find_selector :
  t ->
  string ->
  t

(**
   @param queue The name of the queue in which to stop animations. *)
val finish :
  t ->
  string ->
  t

(** Reduce the set of matched elements to the first in the set. *)
val first :
  t ->
  t

(** Bind an event handler to the "focus" JavaScript event, or trigger that event
    on an element. *)
val focus :
  t ->
  t

(** Bind an event handler to the "focus" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focus_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "focus" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focus_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "focusin" event.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusin_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "focusin" event.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusin_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "focusout" event.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusout_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "focusout" event.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusout_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Retrieve one of the DOM elements matched by the jQuery object.
    @param index A zero-based integer indicating which element to retrieve. *)
val get :
  t ->
  int ->
  Dom_html.element (*Dom.nodelist*) Js.t

(** Reduce the set of matched elements to those that have a descendant that
    matches the selector or DOM element.
    @param contained A DOM element to match elements against. *)
val has_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Reduce the set of matched elements to those that have a descendant that
    matches the selector or DOM element.
    @param selector A string containing a selector expression to match elements
    against. *)
val has_selector :
  t ->
  string ->
  t

(** Determine whether any of the matched elements are assigned the given class.
    @param class_name The class name to search for. *)
val has_class :
  t ->
  string ->
  bool

(** Get the current computed height for the first element in the set of matched
    elements. *)
val height :
  t ->
  int

(** Hide the matched elements.
    @param duration A string or number determining how long the animation will
    run.
    @param easing A number between 0 and 1 denoting the target opacity.
    @param complete A function to call once the animation is complete. *)
val hide :
  t ->
  ?duration: string ->
  ?easing: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Bind one or two handlers to the matched elements, to be executed when the
    mouse pointer enters and leaves the elements.
    @param handler_in_event_object_ A function to execute when the mouse pointer
    enters the element.
    @param handler_out_event_object_ A function to execute when the mouse pointer
    leaves the element. *)
val hover :
  t ->
  (unit -> unit) ->
  (unit -> unit) ->
  t

(** Get the HTML contents of the first element in the set of matched elements. *)
val html :
  t ->
  string

(** Search for a given element from among the matched elements. *)
val index :
  t ->
  int

(** Search for a given element from among the matched elements.
    @param element The DOM element to look for. *)
val index_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  int

(** Search for a given element from among the matched elements.
    @param element The first element within the jQuery object to look for. *)
val index_jq :
  t ->
  t ->
  int

(** Search for a given element from among the matched elements.
    @param selector A selector representing a jQuery collection in which to look
    for an element. *)
val index :
  t ->
  string ->
  int

(** Get the current computed height for the first element in the set of matched
    elements, including padding but not border. *)
val inner_height :
  t ->
  int

(** Get the current computed width for the first element in the set of matched
    elements, including padding but not border. *)
val inner_width :
  t ->
  int

(** Insert every element in the set of matched elements after the target.
    @param target A selector or a HTML string; the matched set of elements will
    be inserted after the element(s) specified by this parameter. *)
val insert_after_selector :
  t ->
  string ->
  t

(** Insert every element in the set of matched elements after the target.
    @param target An element; the matched set of elements will be inserted after
    the element(s) specified by this parameter. *)
val insert_after_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert every element in the set of matched elements after the target.
    @param target A jQuery object; the matched set of elements will be inserted
    after the element(s) specified by this parameter. *)
val insert_after_jq :
  t ->
  t ->
  t

(** Insert every element in the set of matched elements before the target.
    @param target A selector or HTML string; the matched set of elements will be
    inserted before the element(s) specified by this parameter. *)
val insert_before_selector :
  t ->
  string ->
  t

(** Insert every element in the set of matched elements before the target.
    @param target An element; the matched set of elements will be inserted before
    the element(s) specified by this parameter. *)
val insert_before_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Insert every element in the set of matched elements before the target.
    @param target A jQuery object; the matched set of elements will be inserted
    before the element(s) specified by this parameter. *)
val insert_before_jq :
  t ->
  t ->
  t

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param element An element to match the current set of elements against. *)
val is_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param function_index_ A function used as a test for the set of elements. It
    accepts one argument, index, which is the element's index in the jQuery
    collection.Within the function, this refers to the current DOM element. *)
val is_with_func :
  t ->
  (int ->bool) ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val is_js_obj :
  t ->
  < .. > Js.t ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param selector A string containing a selector expression to match elements
    against. *)
val is_selector :
  t ->
  string ->
  bool

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements. *)
val jQ :
  t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param element A DOM element to wrap in a jQuery object. *)
val jQ_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param j_query_object An existing jQuery object to clone. *)
val jQ_jq :
  t ->
  < .. > Js.t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param _object A plain object to wrap in a jQuery object. *)
val jQ_js :
  t ->
  < .. > Js.t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param selector A string containing a selector expression *)
val jQ_selector :
  t ->
  string ->
  t

(** Contains flags for the useragent, read from navigator.userAgent. *)
val j_query_dotbrowser :
  t ->
  < .. > Js.t

(** Check to see if a DOM element is a descendant of another DOM element.
    @param container The DOM element that may contain the other element.
    @param contained The DOM element that may be contained by (a descendant of)
    the other element. *)
val j_query_dotcontains :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  bool

(** Hook directly into jQuery to override how particular CSS properties are
    retrieved or set, normalize CSS property naming, or create custom properties. *)
val j_query_dotcss_hooks :
  t ->
  < .. > Js.t

(** Store arbitrary data associated with the specified element. Returns the value
    that was set.
    @param element The DOM element to associate with the data.
    @param key A string naming the piece of data to set.
    @param value The new data value. *)
val j_query_dotdata :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  string ->
  < .. > Js.t ->
  < .. > Js.t

(** Execute the next function on the queue for the matched element.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue.
    @param element A DOM element from which to remove and execute a queued
    function. *)
val j_query_dotdequeue :
  t ->
  ?queue_name: string ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  unit

(** A generic iterator function, which can be used to seamlessly iterate over
    both objects and arrays. Arrays and array-like objects with a length property
    (such as a function's arguments object) are iterated by numeric index, from 0
    to length-1. Other objects are iterated via their named properties.
    @param collection The object or array to iterate over.
    @param callback_index_in_array__value_of_element_ The function that will be
    executed on every object. *)
val j_query_doteach :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  < .. > Js.t

(** Takes a string and throws an exception containing it.
    @param message The message to send out. *)
val j_query_doterror :
  t ->
  string ->
  unit

(** Merge the contents of two or more objects together into the first object.
    @param deep If true, the merge becomes recursive (aka. deep copy).
    @param target The object to extend. It will receive the new properties.
    @param object1 An object containing additional properties to merge in. *)
val j_query_dotextend :
  t ->
  ?deep: bool ->
  < .. > Js.t ->
  < .. > Js.t ->
  < .. > Js.t

(** Merge the contents of an object onto the jQuery prototype to provide new
    jQuery instance methods.
    @param _object An object to merge onto the jQuery prototype. *)
val j_query_dotfn_dotextend :
  t ->
  < .. > Js.t ->
  < .. > Js.t

(**  *)
val j_query_dotfx_dotinterval :
  t ->
  float

(**  *)
val j_query_dotfx_dotoff :
  t ->
  bool

(** Execute some JavaScript code globally.
    @param code The JavaScript code to execute. *)
val j_query_dotglobal_eval :
  t ->
  string ->
  unit

(** Determine whether an element has any jQuery data associated with it.
    @param element A DOM element to be checked for data. *)
val j_query_dothas_data :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  bool

(**
   @param hold Indicates whether the ready hold is being requested or released *)
val j_query_dothold_ready :
  t ->
  bool ->
  unit

(** Determine whether the argument is an array.
    @param obj Object to test whether or not it is an array. *)
val j_query_dotis_array :
  t ->
  < .. > Js.t ->
  bool

(** Check to see if an object is empty (contains no enumerable properties).
    @param _object The object that will be checked to see if it's empty. *)
val j_query_dotis_empty_object :
  t ->
  < .. > Js.t ->
  bool

(** Determine if the argument passed is a Javascript function object.
    @param obj Object to test whether or not it is a function. *)
val j_query_dotis_function :
  t ->
  < .. > Js.t ->
  bool

(**
   @param value The value to be tested. *)
val j_query_dotis_numeric :
  t ->
  < .. > Js.t ->
  bool

(** Check to see if an object is a plain object (created using brackets or "new
    Object").
    @param _object The object that will be checked to see if it's a plain object. *)
val j_query_dotis_plain_object :
  t ->
  < .. > Js.t ->
  bool

(** Determine whether the argument is a window.
    @param obj Object to test whether or not it is a window. *)
val j_query_dotis_window :
  t ->
  < .. > Js.t ->
  bool

(** Check to see if a DOM node is within an XML document (or is an XML document).
    @param node The DOM node that will be checked to see if it's in an XML
    document. *)
val j_query_dotis_xmldoc :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  bool

(** Relinquish jQuery's control of the
    @param remove_all A Boolean indicating whether to remove all jQuery variables
    from the global scope (including jQuery itself). *)
val j_query_dotno_conflict :
  t ->
  bool ->
  < .. > Js.t

(** Return a number representing the current time. *)
val j_query_dotnow :
  t ->
  float

(** Takes a well-formed JSON string and returns the resulting JavaScript object.
    @param json The JSON string to parse. *)
val j_query_dotparse_json :
  t ->
  string ->
  < .. > Js.t

(**
   @param data a well-formed XML string to be parsed *)
val j_query_dotparse_xml :
  t ->
  string ->
  Dom.element Js.t

(** Remove a previously-stored piece of data.
    @param element A DOM element from which to remove data.
    @param name A string naming the piece of data to remove. *)
val j_query_dotremove_data :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  string ->
  t

(** Creates a new copy of jQuery whose properties and methods can be modified
    without affecting the original jQuery object. *)
val j_query_dotsub :
  t ->
  t

(** A collection of properties that represent the presence of different browser
    features or bugs. Primarily intended for jQuery's internal use; specific
    properties may be removed when they are no longer needed internally to
    improve page startup performance. *)
val j_query_dotsupport :
  t ->
  < .. > Js.t

(** Remove the whitespace from the beginning and end of a string.
    @param str The string to trim. *)
val j_query_dottrim :
  t ->
  string ->
  string

(** Determine the internal JavaScript [[Class]] of an object.
    @param obj Object to get the internal JavaScript [[Class]] of. *)
val j_query_dottype :
  t ->
  < .. > Js.t ->
  string

(** A string containing the jQuery version number. *)
val jquery :
  t ->
  string

(** Bind an event handler to the "keydown" JavaScript event, or trigger that
    event on an element. *)
val keydown :
  t ->
  t

(** Bind an event handler to the "keydown" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keydown_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "keydown" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keydown_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "keypress" JavaScript event, or trigger that
    event on an element. *)
val keypress :
  t ->
  t

(** Bind an event handler to the "keypress" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keypress_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "keypress" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keypress_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "keyup" JavaScript event, or trigger that event
    on an element. *)
val keyup :
  t ->
  t

(** Bind an event handler to the "keyup" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keyup_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "keyup" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keyup_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Reduce the set of matched elements to the final one in the set. *)
val last :
  t ->
  t

(** The number of elements in the jQuery object. *)
val length :
  t ->
  int

(**
   @param events A string containing a JavaScript event type, such as "click" or
   "keydown." As of jQuery 1.4 the string can contain multiple, space-separated
   event types or custom event names.
   @param data An object containing data that will be passed to the event
   handler.
   @param handler_event_object_ A function to execute at the time the event is
   triggered. *)
val live_with_data :
  t ->
  string ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(**
   @param events A string containing a JavaScript event type, such as "click" or
   "keydown." As of jQuery 1.4 the string can contain multiple, space-separated
   event types or custom event names.
   @param handler_event_object_ A function to execute at the time the event is
   triggered. *)
val live_with_handler :
  t ->
  string ->
  (unit -> unit) ->
  t

(**
   @param events A plain object of one or more JavaScript event types and
   functions to execute for them. *)
val live :
  t ->
  < .. > Js.t ->
  t

(**
   @param event_data An object containing data that will be passed to the event
   handler.
   @param handler_event_object_ A function to execute each time the event is
   triggered. *)
val load_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(**
   @param handler_event_object_ A function to execute when the event is
   triggered. *)
val load_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Pass each element in the current matched set through a function, producing a
    new jQuery object containing the return values.
    @param callback_index__dom_element_ A function object that will be invoked
    for each element in the current set. *)
val map :
  t ->
  (int ->Dom_html.element ->Dom_html.element) ->
  t

(** Bind an event handler to the "mousedown" JavaScript event, or trigger that
    event on an element. *)
val mousedown :
  t ->
  t

(** Bind an event handler to the "mousedown" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousedown_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mousedown" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousedown_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to be fired when the mouse enters an element, or
    trigger that handler on an element. *)
val mouseenter :
  t ->
  t

(** Bind an event handler to be fired when the mouse enters an element, or
    trigger that handler on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseenter_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to be fired when the mouse enters an element, or
    trigger that handler on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseenter_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to be fired when the mouse leaves an element, or
    trigger that handler on an element. *)
val mouseleave :
  t ->
  t

(** Bind an event handler to be fired when the mouse leaves an element, or
    trigger that handler on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseleave_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to be fired when the mouse leaves an element, or
    trigger that handler on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseleave_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to be fired when the mouse leaves an element, or
    trigger that handler on an element. *)
val mousemove :
  t ->
  t

(** Bind an event handler to the "mousemove" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousemove_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mousemove" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousemove_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseout" JavaScript event, or trigger that
    event on an element. *)
val mouseout :
  t ->
  t

(** Bind an event handler to the "mouseout" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseout_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseout" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseout_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseover" JavaScript event, or trigger that
    event on an element. *)
val mouseover :
  t ->
  t

(** Bind an event handler to the "mouseover" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseover_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseover" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseover_handler :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseup" JavaScript event, or trigger that
    event on an element. *)
val mouseup :
  t ->
  t

(** Bind an event handler to the "mouseup" JavaScript event, or trigger that
    event on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseup_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "mouseup" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseup_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Get the immediately following sibling of each element in the set of matched
    elements. If a selector is provided, it retrieves the next sibling only if it
    matches that selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val next :
  t ->
  ?selector: string ->
  unit ->     t

(** Get all following siblings of each element in the set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val next_all :
  t ->
  ?selector: string ->
  unit ->     t

(** Get all following siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object passed.
    @param element A jQuery object indicating where to stop matching following
    sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val next_until :
  t ->
  ?element: t ->
  ?filter: string ->
  unit ->     t

(** Get all following siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object passed.
    @param selector A string containing a selector expression to indicate where
    to stop matching following sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val next_until :
  t ->
  ?selector: string ->
  ?filter: string ->
  unit ->     t

(** Remove elements from the set of matched elements.
    @param elements One or more DOM elements to remove from the matched set. *)
val _not :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Remove elements from the set of matched elements.
    @param function_index_ A function used as a test for each element in the set.
    this is the current DOM element. *)
val _not_func :
  t ->
  (int ->bool) ->
  t

(** Remove elements from the set of matched elements.
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val _not_jq :
  t ->
  t ->
  t

(** Remove elements from the set of matched elements.
    @param selector A string containing a selector expression to match elements
    against. *)
val _not_selector :
  t ->
  string ->
  t

(**
   @param events One or more space-separated event types and optional
   namespaces, or just namespaces, such as "click", "keydown.myPlugin", or
   ".myPlugin".
   @param selector A selector which should match the one originally passed to
   .on() when attaching event handlers.
   @param handler_event_object_ A handler function previously attached for the
   event(s), or the special value false. *)
val off_with_handler :
  t ->
  string ->
  string ->
  (unit -> unit) ->
  t

(**
   @param events An object where the string keys represent one or more
   space-separated event types and optional namespaces, and the values represent
   handler functions previously attached for the event(s).
   @param selector A selector which should match the one originally passed to
   .on() when attaching event handlers. *)
val off :
  t ->
  < .. > Js.t ->
  string ->
  t

(** Get the current coordinates of the first element in the set of matched
    elements, relative to the document. *)
val offset :
  t ->
  < .. > Js.t

(** Get the closest ancestor element that is positioned. *)
val offset_parent :
  t ->
  t

(** Attach a handler to an event for the elements. The handler is executed at
    most once per element.
    @param events A string containing one or more JavaScript event types, such as
    "click" or "submit," or custom event names.
    @param data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val one :
  t ->
  string ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Get the current computed height for the first element in the set of matched
    elements, including padding, border, and optionally margin. Returns an
    integer (without "px") representation of the value or null if called on an
    empty set of elements.
    @param include_margin A Boolean indicating whether to include the element's
    margin in the calculation. *)
val outer_height :
  t ->
  ?include_margin: bool ->
  unit ->     int

(** Get the current computed width for the first element in the set of matched
    elements, including padding and border.
    @param include_margin A Boolean indicating whether to include the element's
    margin in the calculation. *)
val outer_width :
  t ->
  ?include_margin: bool ->
  unit ->     int

(** Get the parent of each element in the current set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val parent :
  t ->
  ?selector: string ->
  unit ->     t

(** Get the ancestors of each element in the current set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val parents :
  t ->
  ?selector: string ->
  unit ->     t

(** Get the ancestors of each element in the current set of matched elements, up
    to but not including the element matched by the selector, DOM node, or jQuery
    object.
    @param element A jQuery object indicating where to stop matching ancestor
    elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val parents_until :
  t ->
  ?element: t ->
  ?filter: string ->
  unit ->     t

(** Get the ancestors of each element in the current set of matched elements, up
    to but not including the element matched by the selector, DOM node, or jQuery
    object.
    @param selector A string containing a selector expression to indicate where
    to stop matching ancestor elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val parents_until :
  t ->
  ?selector: string ->
  ?filter: string ->
  unit ->     t

(** Get the current coordinates of the first element in the set of matched
    elements, relative to the offset parent. *)
val position :
  t ->
  < .. > Js.t

(** Insert content, specified by the parameter, to the beginning of each element
    in the set of matched elements.
    @param content jQuery object to insert at the beginning of each element in
    the set of matched elements. *)
val prepend_jq :
  t ->
  t ->
  t

(** Insert content, specified by the parameter, to the beginning of each element
    in the set of matched elements.
    @param content HTML string to insert at the beginning of each element in the
    set of matched elements. *)
val prepend_html :
  t ->
  string ->
  t

(** Insert every element in the set of matched elements to the beginning of the
    target.
    @param target A selector or HTML string; the matched set of elements will be
    inserted at the beginning of the element(s) specified by this parameter. *)
val prepend_to_html :
  t ->
  string ->
  t

(** Insert every element in the set of matched elements to the beginning of the
    target.
    @param target jQuery object; the matched set of elements will be inserted at
    the beginning of the element(s) specified by this parameter. *)
val prepend_to_jQ :
  t ->
  t ->
  t

(** Insert every element in the set of matched elements to the beginning of the
    target.
    @param target An element; the matched set of elements will be inserted at the
    beginning of the element(s) specified by this parameter. *)
val prepend_to_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Get the immediately preceding sibling of each element in the set of matched
    elements, optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val prev :
  t ->
  ?selector: string ->
  unit ->     t

(** Get all preceding siblings of each element in the set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val prev_all :
  t ->
  ?selector: string ->
  unit ->     t

(** Get all preceding siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object.
    @param element A jQuery object indicating where to stop matching preceding
    sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val prev_until_jq :
  t ->
  ?element: t ->
  ?filter: string ->
  unit ->     t

(** Get all preceding siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object.
    @param element A DOM node or jQuery object indicating where to stop matching
    preceding sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val prev_until_elt :
  t ->
  ?element: Dom_html.element (*Dom.nodelist*) Js.t ->
  ?filter: string ->
  unit ->     t

(** Get all preceding siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object.
    @param selector A string containing a selector expression to indicate where
    to stop matching preceding sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val prev_until_selector :
  t ->
  ?selector: string ->
  ?filter: string ->
  unit ->     t

(** Specify a function to execute when the DOM is fully loaded.
    @param handler A function to execute after the DOM is ready. *)
val ready :
  t ->
  (unit -> unit) ->
  t

(** Remove the set of matched elements from the DOM.
    @param selector A selector expression that filters the set of matched
    elements to be removed. *)
val remove :
  t ->
  ?selector: string ->
  unit ->     t

(** Remove an attribute from each element in the set of matched elements.
    @param attribute_name An attribute to remove; as of version 1.7, it can be a
    space-separated list of attributes. *)
val remove_attr :
  t ->
  string ->
  t

(** Remove a single class, multiple classes, or all classes from each element in
    the set of matched elements.
    @param class_name One or more space-separated classes to be removed from the
    class attribute of each matched element. *)
val remove_class :
  t ->
  ?class_name: string ->
  unit ->     t

(** Remove a single class, multiple classes, or all classes from each element in
    the set of matched elements.
    @param function_index__class_ A function returning one or more
    space-separated class names to be removed. Receives the index position of the
    element in the set and the old class value as arguments. *)
val remove_class_func :
  t ->
  (int -> < .. > Js.t ->unit) ->
  t

(** Remove a previously-stored piece of data.
    @param name A space-separated string naming the piece of data to delete. *)
val remove_data :
  t ->
  string ->
  t

(** Remove a property for the set of matched elements.
    @param property_name The name of the property to remove. *)
val remove_prop :
  t ->
  string ->
  t

(** Replace each target element with the set of matched elements.
    @param target A selector string indicating which element(s) to replace. *)
val replace_all_selector :
  t ->
  string ->
  t

(** Replace each target element with the set of matched elements.
    @param target A jQuery object indicating which element(s) to replace. *)
val replace_all_jq :
  t ->
  t ->
  t

(** Replace each target element with the set of matched elements.
    @param target A DOM element reference indicating which element(s) to replace. *)
val replace_all_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Replace each element in the set of matched elements with the provided new
    content and return the set of elements that was removed.
    @param new_content The content to insert. jQuery object. *)
val replace_with_jq :
  t ->
  t ->
  t

(** Replace each element in the set of matched elements with the provided new
    content and return the set of elements that was removed.
    @param new_content The content to insert. HTML string. *)
val replace_with_html :
  t ->
  string ->
  t

(** Replace each element in the set of matched elements with the provided new
    content and return the set of elements that was removed.
    @param new_content The content to insert. DOM element. *)
val replace_with_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Bind an event handler to the "resize" JavaScript event, or trigger that event
    on an element. *)
val resize :
  t ->
  t

(** Bind an event handler to the "resize" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val resize_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "resize" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val resize_with_event :
  t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "scroll" JavaScript event, or trigger that event
    on an element. *)
val scroll :
  t ->
  t

(** Bind an event handler to the "scroll" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val scroll_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "scroll" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val scroll_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Get the current horizontal position of the scroll bar for the first element
    in the set of matched elements. *)
val scroll_left :
  t ->
  int

(** Get the current vertical position of the scroll bar for the first element in
    the set of matched elements or set the vertical position of the scroll bar
    for every matched element. *)
val scroll_top :
  t ->
  int

(** Bind an event handler to the "select" JavaScript event, or trigger that event
    on an element. *)
val select :
  t ->
  t

(** Bind an event handler to the "select" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val select_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "select" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val select_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Encode a set of form elements as a string for submission. *)
val serialize :
  t ->
  string

(** Display the matched elements.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param complete A function to call once the animation is complete. *)
val show :
  t ->
  ?duration: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Display the matched elements.
    @param complete A function to call once the animation is complete.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param easing A string indicating which easing function to use for the
    transition. *)
val show_with_easing :
  t ->
  ?complete: (unit -> unit) ->
  string ->
  string ->
  t

(** Get the siblings of each element in the set of matched elements, optionally
    filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val siblings :
  t ->
  ?selector: string ->
  unit ->     t

(** Return the number of elements in the jQuery object. *)
val size :
  t ->
  int

(** Reduce the set of matched elements to a subset specified by a range of
    indices.
    @param _end An integer indicating the 0-based position at which the elements
    stop being selected. If negative, it indicates an offset from the end of the
    set. If omitted, the range continues until the end of the set.
    @param start An integer indicating the 0-based position at which the elements
    begin to be selected. If negative, it indicates an offset from the end of the
    set. *)
val slice :
  t ->
  ?_end: int ->
  int ->
  t

(** Display the matched elements with a sliding motion.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param easing A string indicating which easing function to use for the
    transition.
    @param complete A function to call once the animation is complete. *)
val slide_down :
  t ->
  ?duration: string ->
  ?easing: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Display or hide the matched elements with a sliding motion.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param easing A string indicating which easing function to use for the
    transition.
    @param complete A function to call once the animation is complete. *)
val slide_toggle :
  t ->
  ?duration: string ->
  ?easing: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Hide the matched elements with a sliding motion.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param easing A string indicating which easing function to use for the
    transition.
    @param complete A function to call once the animation is complete. *)
val slide_up :
  t ->
  ?duration: string ->
  ?easing: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Stop the currently-running animation on the matched elements.
    @param clear_queue A Boolean indicating whether to remove queued animation as
    well.
    @param jump_to_end A Boolean indicating whether to complete the current
    animation immediately. *)
val stop :
  t ->
  bool ->
  bool ->
  t

(** Stop the currently-running animation on the matched elements.
    @param queue The name of the queue in which to stop animations.
    @param clear_queue A Boolean indicating whether to remove queued animation as
    well. Defaults to false.
    @param jump_to_end A Boolean indicating whether to complete the current
    animation immediately. Defaults to false. *)
val stop_named_queue :
  t ->
  string ->
  bool ->
  bool ->
  t

(** Bind an event handler to the "submit" JavaScript event, or trigger that event
    on an element. *)
val submit :
  t ->
  t

(** Bind an event handler to the "submit" JavaScript event, or trigger that event
    on an element.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val submit_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "submit" JavaScript event, or trigger that event
    on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val submit_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Get the combined text contents of each element in the set of matched
    elements, including their descendants. *)
val text :
  t ->
  string

(** Set the content of each element in the set of matched elements to the
    specified text.
    @param text A string of text to set as the content of each matched element. *)
val text_set :
  t ->
  string ->
  t

(** Set the content of each element in the set of matched elements to the
    specified text.
    @param func_ A function returning the text content to set. Receives the index
    position of the element in the set and the old text value as arguments. *)
val text_set_func :
  t ->
  (int ->string ->string) ->
  t

(** Display or hide the matched elements.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param complete A function to call once the animation is complete. *)
val toggle :
  t ->
  ?duration: string ->
  ?complete: (unit -> unit) ->
  unit ->     t

(** Display or hide the matched elements.
    @param complete A function to call once the animation is complete.
    @param duration Either an int or a string like 'slow', or 'fast'
    @param easing A string indicating which easing function to use for the
    transition. *)
val toggle_wih_easing :
  t ->
  ?complete: (unit -> unit) ->
  string ->
  string ->
  t

(** Display or hide the matched elements.
    @param additionnal_handler_event_object_ Additional handlers to cycle through
    after clicks.
    @param handler_even_event_object_ A function to execute every even time the
    element is clicked.
    @param handler_odd_event_object_ A function to execute every odd time the
    element is clicked. *)
val toggle_with_handler :
  t ->
  ?additionnal_handler_event_object_: (unit -> unit) ->
  (unit -> unit) ->
  (unit -> unit) ->
  t

(** Display or hide the matched elements.
    @param show_or_hide A Boolean indicating whether to show or hide the elements. *)
val toggle_with_bool :
  t ->
  bool ->
  t

(** Add or remove one or more classes from each element in the set of matched
    elements, depending on either the class's presence or the value of the switch
    argument.
    @param class_name One or more class names (separated by spaces) to be toggled
    for each element in the matched set. *)
val toggle_class :
  t ->
  string ->
  t

(** Add or remove one or more classes from each element in the set of matched
    elements, depending on either the class's presence or the value of the switch
    argument.
    @param class_name One or more class names (separated by spaces) to be toggled
    for each element in the matched set.
    @param switch A Boolean (not just truthy/falsy) value to determine whether
    the class should be added or removed. *)
val toggle_class :
  t ->
  string ->
  bool ->
  t

(** Add or remove one or more classes from each element in the set of matched
    elements, depending on either the class's presence or the value of the switch
    argument.
    @param switch A boolean value to determine whether the class should be added
    or removed.
    @param function_index__class__switch_ A function that returns class names to
    be toggled in the class attribute of each element in the matched set.
    Receives the index position of the element in the set, the old class value,
    and the switch as arguments. *)
val toggle_class :
  t ->
  ?switch: bool ->
  (int -> < .. > Js.t ->bool ->string) ->
  t

(** Add or remove one or more classes from each element in the set of matched
    elements, depending on either the class's presence or the value of the switch
    argument.
    @param switch A boolean value to determine whether the class should be added
    or removed. *)
val toggle_class :
  t ->
  ?switch: bool ->
  unit ->     t

(** Remove a previously-attached event handler from the elements.
    @param event A JavaScript event object as passed to an event handler. *)
val unbind_with_event :
  t ->
  < .. > Js.t ->
  t

(** Remove a previously-attached event handler from the elements.
    @param event_type A string containing a JavaScript event type, such as click
    or submit. *)
val unbind_return_false :
  t ->
  string ->
  t

(** Remove a previously-attached event handler from the elements.
    @param event_type A string containing a JavaScript event type, such as click
    or submit.
    @param handler_event_object_ The function that is to be no longer executed. *)
val unbind_with_handler :
  t ->
  string ->
  (unit -> unit) ->
  t

(** Remove a handler from the event for all elements which match the current
    selector, based upon a specific set of root elements. *)
val undelegate :
  t ->
  t

(** Remove a handler from the event for all elements which match the current
    selector, based upon a specific set of root elements.
    @param namespace A string containing a namespace to unbind all events from. *)
val undelegate_namespace :
  t ->
  string ->
  t

(** Remove a handler from the event for all elements which match the current
    selector, based upon a specific set of root elements.
    @param selector A selector which will be used to filter the event results.
    @param event_type A string containing a JavaScript event type, such as
    "click" or "keydown" *)
val undelegate_selector :
  t ->
  string ->
  string ->
  t

(** Remove a handler from the event for all elements which match the current
    selector, based upon a specific set of root elements.
    @param selector A selector which will be used to filter the event results.
    @param event_type A string containing a JavaScript event type, such as
    "click" or "keydown"
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val undelegate_handler :
  t ->
  string ->
  string ->
  (unit -> unit) ->
  t

(** Remove a handler from the event for all elements which match the current
    selector, based upon a specific set of root elements.
    @param selector A selector which will be used to filter the event results.
    @param events An object of one or more event types and previously bound
    functions to unbind from them. *)
val undelegate_events :
  t ->
  string ->
  < .. > Js.t ->
  t

(** Bind an event handler to the "unload" JavaScript event.
    @param event_data A plain object of data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val unload_with_data :
  t ->
  < .. > Js.t ->
  (unit -> unit) ->
  t

(** Bind an event handler to the "unload" JavaScript event.
    @param handler_event_object_ A function to execute when the event is
    triggered. *)
val unload_with_handler :
  t ->
  (unit -> unit) ->
  t

(** Remove the parents of the set of matched elements from the DOM, leaving the
    matched elements in their place. *)
val unwrap :
  t ->
  t

(** Get the current computed width for the first element in the set of matched
    elements. *)
val width :
  t ->
  int

(** Wrap an HTML structure around each element in the set of matched elements.
    @param function_index_ A callback function returning the HTML content or
    jQuery object to wrap around the matched elements. Receives the index
    position of the element in the set as an argument. Within the function, this
    refers to the current element in the set. *)
val wrap :
  t ->
  (int ->t) ->
  t

(** Wrap an HTML structure around each element in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_html :
  t ->
  string ->
  t

(** Wrap an HTML structure around each element in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_jq :
  t ->
  t ->
  t

(** Wrap an HTML structure around each element in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Wrap an HTML structure around all elements in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_all_html :
  t ->
  string ->
  t

(** Wrap an HTML structure around all elements in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_all_jq :
  t ->
  t ->
  t

(** Wrap an HTML structure around all elements in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_all_elt :
  t ->
  Dom_html.element (*Dom.nodelist*) Js.t ->
  t

(** Wrap an HTML structure around the content of each element in the set of
    matched elements.
    @param wrapping_element An HTML snippet, selector expression, jQuery object,
    or DOM element specifying the structure to wrap around the content of the
    matched elements. *)
val wrap_inner :
  t ->
  string ->
  t
