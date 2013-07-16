type t

(**/**)
val inject_t : t -> JavaScript.any
val extract_t : JavaScript.any -> t

(**/**)

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val jQ : string -> t

(** Easy way to call the jQuery object jQ "#foo" <=> $("#foo") **)
val jQelt : Dom_html.element Js.t -> t


(** Add elements to the set of matched elements.
    @param elements One or more elements to add to the set of matched elements. *)
val add :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Add elements to the set of matched elements.
    @param html An HTML fragment to add to the set of matched elements. *)
val add :
  t ->
  string ->
  t

(** Add elements to the set of matched elements.
    @param j_query_object An existing jQuery object to add to the set of matched
    elements. *)
val add :
  t ->
  t ->
  t

(** Add elements to the set of matched elements.
    @param selector A string representing a selector expression to find
    additional elements to add to the set of matched elements. *)
val add :
  t ->
  string ->
  t

(** Add elements to the set of matched elements.
    @param selector A string representing a selector expression to find
    additional elements to add to the set of matched elements.
    @param context The point in the document at which the selector should begin
    matching; similar to the context argument of the $(selector, context) method. *)
val add :
  t ->
  string ->
  Dom_html.element Dom.nodeList Js.t ->
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
val add_class :
  t ->
  t ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param content HTML string, DOM element, or jQuery object to insert after
    each element in the set of matched elements.
    @param content One or more additional DOM elements, arrays of elements, HTML
    strings, or jQuery objects to insert after each element in the set of matched
    elements. *)
val after :
  t ->
  t ->
  t ->
  t

(** Insert content, specified by the parameter, after each element in the set of
    matched elements.
    @param function_index_ A function that returns an HTML string, DOM
    element(s), or jQuery object to insert after each element in the set of
    matched elements. Receives the index position of the element in the set as an
    argument. Within the function, this refers to the current element in the set. *)
val after :
  t ->
  t ->
  t

(** Register a handler to be called when Ajax requests complete. This is an
    @param handler_event___xmlhttp_request__ajax_options_ The function to be
    invoked. *)
val ajax_complete :
  t ->
  t ->
  t

(** Register a handler to be called when Ajax requests complete with an error.
    This is an
    @param handler_event__jq_xhr__ajax_settings__thrown_error_ The function to be
    invoked. *)
val ajax_error :
  t ->
  t ->
  t

(** Attach a function to be executed before an Ajax request is sent. This is an
    @param handler_event__jq_xhr__ajax_options_ The function to be invoked. *)
val ajax_send :
  t ->
  t ->
  t

(** Register a handler to be called when the first Ajax request begins. This is
    an
    @param handler__ The function to be invoked. *)
val ajax_start :
  t ->
  t ->
  t

(**
    @param handler__ The function to be invoked. *)
val ajax_stop :
  t ->
  t ->
  t

(** Attach a function to be executed whenever an Ajax request completes
    successfully. This is an
    @param handler_event___xmlhttp_request__ajax_options_ The function to be
    invoked. *)
val ajax_success :
  t ->
  t ->
  t

(** Selects all elements. *)
val all :
  t ->
  t

(** Add the previous set of elements on the stack to the current set. *)
val and_self :
  t ->
  t

(**
    @param properties An object of CSS properties and values that the animation
    will move toward. *)
val animate :
  t ->
  t ->
  t

(**
    @param properties An object of CSS properties and values that the animation
    will move toward. *)
val animate :
  t ->
  t ->
  t

(** Select all elements that are in the progress of an animation at the time the
    selector is run. *)
val animated :
  t ->
  t

(** Insert content, specified by the parameter, to the end of each element in the
    set of matched elements.
    @param content DOM element, HTML string, or jQuery object to insert at the
    end of each element in the set of matched elements.
    @param content One or more additional DOM elements, arrays of elements, HTML
    strings, or jQuery objects to insert at the end of each element in the set of
    matched elements. *)
val append :
  t ->
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
  t ->
  t

(** Insert every element in the set of matched elements to the end of the target.
    @param target A selector, element, HTML string, or jQuery object; the matched
    set of elements will be inserted at the end of the element(s) specified by
    this parameter. *)
val append_to :
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

(** Selects elements that have the specified attribute with a value containing
    the a given substring.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_contains :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute with a value either equal
    to a given string or starting with that string followed by a hyphen (-).
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_contains_prefix :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute with a value containing a
    given word, delimited by spaces.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_contains_word :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute with a value ending
    exactly with a given string. The comparison is case sensitive.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_ends_with :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute with a value exactly equal
    to a certain value.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_equals :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute, with any value.
    @param attribute An attribute name. *)
val attribute_has :
  t ->
  string ->
  t

(** Matches elements that match all of the specified attribute filters.
    @param attribute_filter1 An attribute filter.
    @param attribute_filter2 Another attribute filter, reducing the selection
    even more
    @param attribute_filter_n As many more attribute filters as necessary *)
val attribute_multiple :
  t ->
  string ->
  string ->
  t ->
  t

(** Select elements that either don't have the specified attribute, or do have
    the specified attribute but not with a certain value.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_not_equal :
  t ->
  string ->
  string ->
  t

(** Selects elements that have the specified attribute with a value beginning
    exactly with a given string.
    @param attribute An attribute name.
    @param value An attribute value. Can be either an unquoted single word or a
    quoted string. *)
val attribute_starts_with :
  t ->
  string ->
  string ->
  t

(** Insert content, specified by the parameter, before each element in the set of
    matched elements.
    @param content HTML string, DOM element, or jQuery object to insert before
    each element in the set of matched elements.
    @param content One or more additional DOM elements, arrays of elements, HTML
    strings, or jQuery objects to insert before each element in the set of
    matched elements. *)
val before :
  t ->
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
  t ->
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
  t ->
  t ->
  t

(** Attach a handler to an event for the elements.
    @param event_type A string containing one or more DOM event types, such as
    "click" or "submit," or custom event names.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param prevent_bubble Setting the third argument to false will attach a
    function that prevents the default action from occurring and stops the event
    from bubbling. The default is true. *)
val bind :
  t ->
  string ->
  t ->
  bool ->
  t

(** Attach a handler to an event for the elements.
    @param events An object containing one or more DOM event types and functions
    to execute for them. *)
val bind :
  t ->
  t ->
  t

(**  *)
val blur :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val blur :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val blur :
  t ->
  t ->
  t

(** Selects all button elements and elements of type button. *)
val button :
  t ->
  t

(**  *)
val change :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val change :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val change :
  t ->
  t ->
  t

(** Selects all elements of type checkbox. *)
val checkbox :
  t ->
  t

(** Matches all elements that are checked or selected. *)
val checked :
  t ->
  t

(** Selects all direct child elements specified by "child" of elements specified
    by "parent".
    @param parent Any valid selector.
    @param child A selector to filter the child elements. *)
val child :
  t ->
  string ->
  string ->
  t

(** Get the children of each element in the set of matched elements, optionally
    filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val children :
  t ->
  t ->
  t

(** Selects all elements with the given class.
    @param _class A class to search for. An element can have multiple classes;
    only one of them must match. *)
val _class :
  t ->
  string ->
  t

(** Remove from the queue all items that have not yet been run.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val clear_queue :
  t ->
  t ->
  t

(**  *)
val click :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val click :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val click :
  t ->
  t ->
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
  t ->
  t ->
  t

(** Create a deep copy of the set of matched elements.
    @param with_data_and_events A Boolean indicating whether event handlers
    should be copied along with the elements. As of jQuery 1.4, element data will
    be copied as well. *)
val clone :
  t ->
  t ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param element An element to match elements against. *)
val closest :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param j_query_object A jQuery object to match elements against. *)
val closest :
  t ->
  t ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param selector A string containing a selector expression to match elements
    against. *)
val closest :
  t ->
  string ->
  t

(** For each element in the set, get the first element that matches the selector
    by testing the element itself and traversing up through its ancestors in the
    DOM tree.
    @param selector A string containing a selector expression to match elements
    against.
    @param context A DOM element within which a matching element may be found. If
    no context is passed in then the context of the jQuery set will be used
    instead. *)
val closest :
  t ->
  string ->
  t ->
  t

(** Select all elements that contain the specified text.
    @param text A string of text to look for. It's case sensitive. *)
val contains :
  t ->
  string ->
  t

(** Get the children of each element in the set of matched elements, including
    text and comment nodes. *)
val contents :
  t ->
  t

(** The DOM node context originally passed to *)
val context :
  t ->
  Dom_html.element Dom.nodeList Js.t

(** Get the value of style properties for the first element in the set of matched
    elements.
    @param property_name A CSS property. *)
val css :
  t ->
  string ->
  string

(** Get the value of style properties for the first element in the set of matched
    elements.
    @param property_names An array of one or more CSS properties. *)
val css :
  t ->
  t array ->
  string

(** Store arbitrary data associated with the matched elements.
    @param key A string naming the piece of data to set.
    @param value The new data value; it can be any Javascript type including
    Array or Object. *)
val data :
  t ->
  string ->
  t ->
  t

(** Store arbitrary data associated with the matched elements.
    @param obj An object of key-value pairs of data to update. *)
val data :
  t ->
  t ->
  t

(**  *)
val dblclick :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val dblclick :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val dblclick :
  t ->
  t ->
  t

(** Set a timer to delay execution of subsequent items in the queue.
    @param duration An integer indicating the number of milliseconds to delay
    execution of the next item in the queue.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val delay :
  t ->
  int ->
  t ->
  t

(**
    @param selector A selector to filter the elements that trigger the event.
    @param event_type A string containing one or more space-separated JavaScript
    event types, such as "click" or "keydown," or custom event names.
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val delegate :
  t ->
  string ->
  string ->
  t ->
  t ->
  t

(**
    @param selector A selector to filter the elements that trigger the event.
    @param event_type A string containing one or more space-separated JavaScript
    event types, such as "click" or "keydown," or custom event names.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val delegate :
  t ->
  string ->
  string ->
  t ->
  t

(**
    @param selector A selector to filter the elements that trigger the event.
    @param events A plain object of one or more event types and functions to
    execute for them. *)
val delegate :
  t ->
  string ->
  t ->
  t

(** Execute the next function on the queue for the matched elements.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val dequeue :
  t ->
  t ->
  t

(** Selects all elements that are descendants of a given ancestor.
    @param ancestor Any valid selector.
    @param descendant A selector to filter the descendant elements. *)
val descendant :
  t ->
  string ->
  string ->
  t

(** Remove the set of matched elements from the DOM.
    @param selector A selector expression that filters the set of matched
    elements to be removed. *)
val detach :
  t ->
  t ->
  t

(**  *)
val die :
  t ->
  t

(**
    @param event_type A string containing a JavaScript event type, such as click
    or keydown.
    @param handler The function that is no longer to be executed. *)
val die :
  t ->
  string ->
  t ->
  t

(**
    @param events A plain object of one or more event types, such as click or
    keydown and their corresponding functions that are no longer to be executed. *)
val die :
  t ->
  t ->
  t

(** Selects all elements that are disabled. *)
val disabled :
  t ->
  t

(** Iterate over a jQuery object, executing a function for each matched element.
    @param function_index___element_ A function to execute for each matched
    element. *)
val each :
  t ->
  t ->
  t

(** Selects all elements with the given tag name.
    @param element An element to search for. Refers to the tagName of DOM nodes. *)
val element :
  t ->
  string ->
  t

(** Remove all child nodes of the set of matched elements from the DOM. *)
val empty :
  t ->
  t

(** Select all elements that have no children (including text nodes). *)
val empty :
  t ->
  t

(** Selects all elements that are enabled. *)
val enabled :
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

(** Select the element at index
    @param _index Zero-based index of the element to match, counting backwards
    from the last element. *)
val eq :
  t ->
  int ->
  t

(** Select the element at index
    @param index Zero-based index of the element to match. *)
val eq :
  t ->
  float ->
  t

(** Reduce the set of matched elements to the one at the specified index.
    @param index An integer indicating the 0-based position of the element. *)
val eq :
  t ->
  int ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val error :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute when the event is
    triggered. *)
val error :
  t ->
  t ->
  t

(** Selects even elements, zero-indexed.  See also *)
val even :
  t ->
  t

(** The current DOM element within the event bubbling phase. *)
val event_dotcurrent_target :
  t ->
  Dom_html.element Dom.nodeList Js.t

(** An optional object of data passed to an event method when the current
    executing handler is bound. *)
val event_dotdata :
  t ->
  t

(** The element where the currently-called jQuery event handler was attached. *)
val event_dotdelegate_target :
  t ->
  Dom_html.element Dom.nodeList Js.t

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
  Dom_html.element Dom.nodeList Js.t

(** The last value returned by an event handler that was triggered by this event,
    unless the value was *)
val event_dotresult :
  t ->
  t

(** Keeps the rest of the handlers from being executed and prevents the event
    from bubbling up the DOM tree. *)
val event_dotstop_immediate_propagation :
  t ->
  t

(** Prevents the event from bubbling up the DOM tree, preventing any parent
    handlers from being notified of the event. *)
val event_dotstop_propagation :
  t ->
  t

(** The DOM element that initiated the event. *)
val event_dottarget :
  t ->
  Dom_html.element Dom.nodeList Js.t

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

(**  *)
val fade_in :
  t ->
  t

(**  *)
val fade_in :
  t ->
  t

(**  *)
val fade_in :
  t ->
  t

(**  *)
val fade_out :
  t ->
  t

(**  *)
val fade_out :
  t ->
  t

(**  *)
val fade_out :
  t ->
  t

(**
    @param duration A string or number determining how long the animation will
    run.
    @param opacity A number between 0 and 1 denoting the target opacity.
    @param complete A function to call once the animation is complete. *)
val fade_to :
  t ->
  t ->
  float ->
  t ->
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
  t ->
  float ->
  string ->
  t ->
  t

(**  *)
val fade_toggle :
  t ->
  t

(**  *)
val fade_toggle :
  t ->
  t

(** Selects all elements of type file. *)
val file :
  t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param element An element to match the current set of elements against. *)
val filter :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param function_index_ A function used as a test for each element in the set.
    this is the current DOM element. *)
val filter :
  t ->
  t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val filter :
  t ->
  t ->
  t

(** Reduce the set of matched elements to those that match the selector or pass
    the function's test.
    @param selector A string containing a selector expression to match the
    current set of elements against. *)
val filter :
  t ->
  string ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param element An element to match elements against. *)
val find :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param j_query_object A jQuery object to match elements against. *)
val find :
  t ->
  t ->
  t

(** Get the descendants of each element in the current set of matched elements,
    filtered by a selector, jQuery object, or element.
    @param selector A string containing a selector expression to match elements
    against. *)
val find :
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

(** Selects the first matched element. *)
val first :
  t ->
  t

(** Selects all elements that are the first child of their parent. *)
val first_child :
  t ->
  t

(** Selects all elements that are the first among siblings of the same element
    name. *)
val first_of_type :
  t ->
  t

(**  *)
val focus :
  t ->
  t

(** Selects element if it is currently focused. *)
val focus :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focus :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focus :
  t ->
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusin :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusin :
  t ->
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusout :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val focusout :
  t ->
  t ->
  t

(** Retrieve one of the DOM elements matched by the jQuery object.
    @param index A zero-based integer indicating which element to retrieve. *)
val get :
  t ->
  int ->
  Dom_html.element Dom.nodeList Js.t

(** Select all elements at an index greater than
    @param _index Zero-based index, counting backwards from the last element. *)
val gt :
  t ->
  int ->
  t

(** Select all elements at an index greater than
    @param index Zero-based index. *)
val gt :
  t ->
  float ->
  t

(** Reduce the set of matched elements to those that have a descendant that
    matches the selector or DOM element.
    @param contained A DOM element to match elements against. *)
val has :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Reduce the set of matched elements to those that have a descendant that
    matches the selector or DOM element.
    @param selector A string containing a selector expression to match elements
    against. *)
val has :
  t ->
  string ->
  t

(** Selects elements which contain at least one element that matches the
    specified selector.
    @param selector Any selector. *)
val has :
  t ->
  string ->
  t

(** Determine whether any of the matched elements are assigned the given class.
    @param class_name The class name to search for. *)
val has_class :
  t ->
  string ->
  bool

(** Selects all elements that are headers, like h1, h2, h3 and so on. *)
val header :
  t ->
  t

(** Get the current computed height for the first element in the set of matched
    elements. *)
val height :
  t ->
  int

(** Selects all elements that are hidden. *)
val hidden :
  t ->
  t

(**  *)
val hide :
  t ->
  t

(**  *)
val hide :
  t ->
  t

(**  *)
val hide :
  t ->
  t

(**
    @param duration A string or number determining how long the animation will
    run. *)
val hide :
  t ->
  t ->
  t

(**
    @param handler_in_event_object_ A function to execute when the mouse pointer
    enters the element.
    @param handler_out_event_object_ A function to execute when the mouse pointer
    leaves the element. *)
val hover :
  t ->
  t ->
  t ->
  t

(** Get the HTML contents of the first element in the set of matched elements. *)
val html :
  t ->
  string

(** Selects a single element with the given id attribute.
    @param id An ID to search for, specified via the id attribute of an element. *)
val id :
  t ->
  string ->
  t

(** Selects all elements of type image. *)
val image :
  t ->
  t

(** Search for a given element from among the matched elements. *)
val index :
  t ->
  float

(** Search for a given element from among the matched elements.
    @param element The DOM element or first element within the jQuery object to
    look for. *)
val index :
  t ->
  t ->
  float

(** Search for a given element from among the matched elements.
    @param selector A selector representing a jQuery collection in which to look
    for an element. *)
val index :
  t ->
  string ->
  float

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

(** Selects all input, textarea, select and button elements. *)
val input :
  t ->
  t

(** Insert every element in the set of matched elements after the target.
    @param target A selector, element, HTML string, or jQuery object; the matched
    set of elements will be inserted after the element(s) specified by this
    parameter. *)
val insert_after :
  t ->
  t ->
  t

(** Insert every element in the set of matched elements before the target.
    @param target A selector, element, HTML string, or jQuery object; the matched
    set of elements will be inserted before the element(s) specified by this
    parameter. *)
val insert_before :
  t ->
  t ->
  t

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param element An element to match the current set of elements against. *)
val is :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param function_index_ A function used as a test for the set of elements. It
    accepts one argument, index, which is the element's index in the jQuery
    collection.Within the function, this refers to the current DOM element. *)
val is :
  t ->
  t ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val is :
  t ->
  t ->
  bool

(** Check the current matched set of elements against a selector, element, or
    jQuery object and return
    @param selector A string containing a selector expression to match elements
    against. *)
val is :
  t ->
  string ->
  bool

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements. *)
val j_query :
  t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param element A DOM element to wrap in a jQuery object. *)
val j_query :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param element_array An array containing a set of DOM elements to wrap in a
    jQuery object. *)
val j_query :
  t ->
  t array ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param j_query_object An existing jQuery object to clone. *)
val j_query :
  t ->
  t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param _object A plain object to wrap in a jQuery object. *)
val j_query :
  t ->
  t ->
  t

(** Accepts a string containing a CSS selector which is then used to match a set
    of elements.
    @param selector A string containing a selector expression
    @param context A DOM Element, Document, or jQuery to use as context *)
val j_query :
  t ->
  string ->
  t ->
  t

(** Perform an asynchronous HTTP (Ajax) request.
    @param settings A set of key/value pairs that configure the Ajax request.*)
val j_query_dotajax :
  t ->
  t ->
  t

(** Perform an asynchronous HTTP (Ajax) request.
    @param url A string containing the URL to which the request is sent.
    @param settings A set of key/value pairs that configure the Ajax request. All
    settings are optional. A default can be set for any option with
    $.ajaxSetup(). See jQuery.ajax( settings ) below for a complete list of all
    settings. *)
val j_query_dotajax :
  t ->
  string ->
  t ->
  t

(**
    @param data_types An optional string containing one or more space-separated
    dataTypes
    @param handler_options__original_options__jq_xhr_ A handler to set default
    values for future Ajax requests. *)
val j_query_dotajax_prefilter :
  t ->
  t ->
  t ->
  t

(** Set default values for future Ajax requests. Its use is not recommended.
    @param options A set of key/value pairs that configure the default Ajax
    request. All options are optional. *)
val j_query_dotajax_setup :
  t ->
  t ->
  t

(**
    @param data_type A string identifying the data type to use
    @param handler_options__original_options__jq_xhr_ A handler to return the new
    transport object to use with the data type provided in the first argument. *)
val j_query_dotajax_transport :
  t ->
  string ->
  t ->
  t

(** Contains flags for the useragent, read from navigator.userAgent. *)
val j_query_dotbrowser :
  t ->
  t

(** Check to see if a DOM element is a descendant of another DOM element.
    @param container The DOM element that may contain the other element.
    @param contained The DOM element that may be contained by (a descendant of)
    the other element. *)
val j_query_dotcontains :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  Dom_html.element Dom.nodeList Js.t ->
  bool

(** Hook directly into jQuery to override how particular CSS properties are
    retrieved or set, normalize CSS property naming, or create custom properties. *)
val j_query_dotcss_hooks :
  t ->
  t

(** Store arbitrary data associated with the specified element. Returns the value
    that was set.
    @param element The DOM element to associate with the data.
    @param key A string naming the piece of data to set.
    @param value The new data value. *)
val j_query_dotdata :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  string ->
  t ->
  t

(** Execute the next function on the queue for the matched element.
    @param element A DOM element from which to remove and execute a queued
    function.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val j_query_dotdequeue :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t ->
  t

(** A generic iterator function, which can be used to seamlessly iterate over
    both objects and arrays. Arrays and array-like objects with a length property
    (such as a function's arguments object) are iterated by numeric index, from 0
    to length-1. Other objects are iterated via their named properties.
    @param collection The object or array to iterate over.
    @param callback_index_in_array__value_of_element_ The function that will be
    executed on every object. *)
val j_query_doteach :
  t ->
  t ->
  t ->
  t

(** Takes a string and throws an exception containing it.
    @param message The message to send out. *)
val j_query_doterror :
  t ->
  string ->
  t

(** Merge the contents of two or more objects together into the first object.
    @param deep If true, the merge becomes recursive (aka. deep copy).
    @param target The object to extend. It will receive the new properties.
    @param object1 An object containing additional properties to merge in.
    @param object_n Additional objects containing properties to merge in. *)
val j_query_dotextend :
  t ->
  t ->
  t ->
  t ->
  t ->
  t

(** Merge the contents of two or more objects together into the first object.
    @param target An object that will receive the new properties if additional
    objects are passed in or that will extend the jQuery namespace if it is the
    sole argument.
    @param object1 An object containing additional properties to merge in.
    @param object_n Additional objects containing properties to merge in. *)
val j_query_dotextend :
  t ->
  t ->
  t ->
  t ->
  t

(** Merge the contents of an object onto the jQuery prototype to provide new
    jQuery instance methods.
    @param _object An object to merge onto the jQuery prototype. *)
val j_query_dotfn_dotextend :
  t ->
  t ->
  t

(**  *)
val j_query_dotfx_dotinterval :
  t ->
  float

(**  *)
val j_query_dotfx_dotoff :
  t ->
  bool

(** Load data from the server using a HTTP GET request.
    @param url A string containing the URL to which the request is sent.
    @param data A plain object or string that is sent to the server with the
    request.
    @param success_data__text_status__jq_xhr_ A callback function that is
    executed if the request succeeds.
    @param data_type The type of data expected from the server. Default:
    Intelligent Guess (xml, json, script, or html). *)
val j_query_dotget :
  t ->
  string ->
  t ->
  t ->
  t ->
  t

(** Load JSON-encoded data from the server using a GET HTTP request.
    @param url A string containing the URL to which the request is sent.
    @param data A plain object or string that is sent to the server with the
    request.
    @param success_data__text_status__jq_xhr_ A callback function that is
    executed if the request succeeds. *)
val j_query_dotget_json :
  t ->
  string ->
  t ->
  t ->
  t

(** Load a JavaScript file from the server using a GET HTTP request, then execute
    it.
    @param url A string containing the URL to which the request is sent.
    @param success_script__text_status__jq_xhr_ A callback function that is
    executed if the request succeeds. *)
val j_query_dotget_script :
  t ->
  string ->
  t ->
  t

(** Execute some JavaScript code globally.
    @param code The JavaScript code to execute. *)
val j_query_dotglobal_eval :
  t ->
  string ->
  t

(**
    @param array The array to search through.
    @param function_element_of_array__index_in_array_ The function to process
    each item against.  The first argument to the function is the item, and the
    second argument is the index.  The function should return a Boolean value.
    this will be the global window object.
    @param invert If "invert" is false, or not provided, then the function
    returns an array consisting of all elements for which "callback" returns
    true.  If "invert" is true, then the function returns an array consisting of
    all elements for which "callback" returns false. *)
val j_query_dotgrep :
  t ->
  t array ->
  t ->
  t ->
  t array

(** Determine whether an element has any jQuery data associated with it.
    @param element A DOM element to be checked for data. *)
val j_query_dothas_data :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  bool

(**
    @param hold Indicates whether the ready hold is being requested or released *)
val j_query_dothold_ready :
  t ->
  bool ->
  t

(** Search for a specified value within an array and return its index (or -1 if
    not found).
    @param value The value to search for.
    @param array An array through which to search.
    @param from_index The index of the array at which to begin the search. The
    default is 0, which will search the whole array. *)
val j_query_dotin_array :
  t ->
  t ->
  t array ->
  float ->
  float

(** Determine whether the argument is an array.
    @param obj Object to test whether or not it is an array. *)
val j_query_dotis_array :
  t ->
  t ->
  bool

(** Check to see if an object is empty (contains no enumerable properties).
    @param _object The object that will be checked to see if it's empty. *)
val j_query_dotis_empty_object :
  t ->
  t ->
  bool

(** Determine if the argument passed is a Javascript function object.
    @param obj Object to test whether or not it is a function. *)
val j_query_dotis_function :
  t ->
  t ->
  bool

(**
    @param value The value to be tested. *)
val j_query_dotis_numeric :
  t ->
  t ->
  bool

(** Check to see if an object is a plain object (created using "{}" or "new
    Object").
    @param _object The object that will be checked to see if it's a plain object. *)
val j_query_dotis_plain_object :
  t ->
  t ->
  bool

(** Determine whether the argument is a window.
    @param obj Object to test whether or not it is a window. *)
val j_query_dotis_window :
  t ->
  t ->
  bool

(** Check to see if a DOM node is within an XML document (or is an XML document).
    @param node The DOM node that will be checked to see if it's in an XML
    document. *)
val j_query_dotis_xmldoc :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  bool

(** Convert an array-like object into a true JavaScript array.
    @param obj Any object to turn into a native Array. *)
val j_query_dotmake_array :
  t ->
  t ->
  t array

(** Translate all items in an array or object to new array of items.
    @param array The Array to translate.
    @param callback_element_of_array__index_in_array_ The function to process
    each item against.  The first argument to the function is the array item, the
    second argument is the index in array The function can return any value.
    Within the function, this refers to the global (window) object. *)
val j_query_dotmap :
  t ->
  t array ->
  t ->
  t array

(** Translate all items in an array or object to new array of items.
    @param array_or_object The Array or Object to translate.
    @param callback__value__index_or_key__ The function to process each item
    against.  The first argument to the function is the value; the second
    argument is the index or key of the array or object property. The function
    can return any value to add to the array. A returned array will be flattened
    into the resulting array. Within the function, this refers to the global
    (window) object. *)
val j_query_dotmap :
  t ->
  t ->
  t ->
  t array

(**
    @param first The first array to merge, the elements of second added.
    @param second The second array to merge into the first, unaltered. *)
val j_query_dotmerge :
  t ->
  t array ->
  t array ->
  t array

(** Relinquish jQuery's control of the
    @param remove_all A Boolean indicating whether to remove all jQuery variables
    from the global scope (including jQuery itself). *)
val j_query_dotno_conflict :
  t ->
  bool ->
  t

(** An empty function. *)
val j_query_dotnoop :
  t ->
  t

(** Return a number representing the current time. *)
val j_query_dotnow :
  t ->
  float

(** Create a serialized representation of an array or object, suitable for use in
    a URL query string or Ajax request.
    @param obj An array or object to serialize. *)
val j_query_dotparam :
  t ->
  t ->
  string

(** Create a serialized representation of an array or object, suitable for use in
    a URL query string or Ajax request.
    @param obj An array or object to serialize.
    @param traditional A Boolean indicating whether to perform a traditional
    "shallow" serialization. *)
val j_query_dotparam :
  t ->
  t ->
  bool ->
  string

(**
    @param data HTML string to be parsed
    @param context Document element to serve as the context in which the HTML
    fragment will be created
    @param keep_scripts A Boolean indicating whether to include scripts passed in
    the HTML string *)
val j_query_dotparse_html :
  t ->
  string ->
  Dom_html.element Dom.nodeList Js.t ->
  bool ->
  t array

(** Takes a well-formed JSON string and returns the resulting JavaScript object.
    @param json The JSON string to parse. *)
val j_query_dotparse_json :
  t ->
  string ->
  t

(**
    @param data a well-formed XML string to be parsed *)
val j_query_dotparse_xml :
  t ->
  string ->
  Dom.element Js.t

(** Load data from the server using a HTTP POST request.
    @param url A string containing the URL to which the request is sent.
    @param data A plain object or string that is sent to the server with the
    request.
    @param success_data__text_status__jq_xhr_ A callback function that is
    executed if the request succeeds. Required if dataType is provided, but can
    be null in that case.
    @param data_type The type of data expected from the server. Default:
    Intelligent Guess (xml, json, script, text, html). *)
val j_query_dotpost :
  t ->
  string ->
  t ->
  t ->
  t ->
  t

(** Takes a function and returns a new one that will always have a particular
    context.
    @param context The object to which the context of the function should be set.
    @param name The name of the function whose context will be changed (should be
    a property of the context object). *)
val j_query_dotproxy :
  t ->
  t ->
  string ->
  t

(** Takes a function and returns a new one that will always have a particular
    context.
    @param context The object to which the context of the function should be set.
    @param name The name of the function whose context will be changed (should be
    a property of the context object).
    @param additional_arguments Any number of arguments to be passed to the
    function named in the name argument. *)
val j_query_dotproxy :
  t ->
  t ->
  string ->
  t ->
  t

(** Takes a function and returns a new one that will always have a particular
    context.
    @param _function The function whose context will be changed.
    @param context The object to which the context (this) of the function should
    be set. *)
val j_query_dotproxy :
  t ->
  t ->
  t ->
  t

(** Takes a function and returns a new one that will always have a particular
    context.
    @param _function The function whose context will be changed.
    @param context The object to which the context (this) of the function should
    be set.
    @param additional_arguments Any number of arguments to be passed to the
    function referenced in the function argument. *)
val j_query_dotproxy :
  t ->
  t ->
  t ->
  t ->
  t

(** Show the queue of functions to be executed on the matched element.
    @param element A DOM element to inspect for an attached queue.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val j_query_dotqueue :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t ->
  t array

(** Remove a previously-stored piece of data.
    @param element A DOM element from which to remove data.
    @param name A string naming the piece of data to remove. *)
val j_query_dotremove_data :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
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
  t

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
  t ->
  string

(** Sorts an array of DOM elements, in place, with the duplicates removed. Note
    that this only works on arrays of DOM elements, not strings or numbers.
    @param array The Array of DOM elements. *)
val j_query_dotunique :
  t ->
  t array ->
  t array

(** Provides a way to execute callback functions based on one or more objects,
    usually
    @param deferreds One or more deferred objects, or plain JavaScript objects. *)
val j_query_dotwhen :
  t ->
  t ->
  t

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
val keydown :
  t ->
  t ->
  t ->
  t

(** Bind an event handler to the "keydown" JavaScript event, or trigger that
    event on an element.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keydown :
  t ->
  t ->
  t

(**  *)
val keypress :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keypress :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keypress :
  t ->
  t ->
  t

(**  *)
val keyup :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keyup :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val keyup :
  t ->
  t ->
  t

(** Selects all elements of the specified language.
    @param language A language code. *)
val lang :
  t ->
  string ->
  t

(** Reduce the set of matched elements to the final one in the set. *)
val last :
  t ->
  t

(** Selects the last matched element. *)
val last :
  t ->
  t

(** Selects all elements that are the last child of their parent. *)
val last_child :
  t ->
  t

(** Selects all elements that are the last among siblings of the same element
    name. *)
val last_of_type :
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
val live :
  t ->
  string ->
  t ->
  t ->
  t

(**
    @param events A string containing a JavaScript event type, such as "click" or
    "keydown." As of jQuery 1.4 the string can contain multiple, space-separated
    event types or custom event names.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val live :
  t ->
  string ->
  t ->
  t

(**
    @param events A plain object of one or more JavaScript event types and
    functions to execute for them. *)
val live :
  t ->
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val load :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute when the event is
    triggered. *)
val load :
  t ->
  t ->
  t

(** Load data from the server and place the returned HTML into the matched
    element.
    @param url A string containing the URL to which the request is sent.
    @param data A plain object or string that is sent to the server with the
    request.
    @param complete_response_text__text_status___xmlhttp_request_ A callback
    function that is executed when the request completes. *)
val load :
  t ->
  string ->
  t ->
  t ->
  t

(** Select all elements at an index less than
    @param _index Zero-based index, counting backwards from the last element. *)
val lt :
  t ->
  int ->
  t

(** Select all elements at an index less than
    @param index Zero-based index. *)
val lt :
  t ->
  float ->
  t

(** Pass each element in the current matched set through a function, producing a
    new jQuery object containing the return values.
    @param callback_index__dom_element_ A function object that will be invoked
    for each element in the current set. *)
val map :
  t ->
  t ->
  t

(** Determine the current state of a deferred object. *)
val _method :
  t ->
  string

(** Determine whether a deferred object has been rejected. *)
val _method :
  t ->
  bool

(** Determine whether a deferred object has been resolved. *)
val _method :
  t ->
  bool

(** Determine if the callbacks have already been called at least once. *)
val _method :
  t ->
  bool

(** Determine if the callbacks list has been disabled. *)
val _method :
  t ->
  bool

(** Determine if the callbacks list has been locked. *)
val _method :
  t ->
  bool

(** Disable a callback list from doing anything more. *)
val _method :
  t ->
  t

(** Lock a callback list in its current state. *)
val _method :
  t ->
  t

(** Remove all of the callbacks from a list. *)
val _method :
  t ->
  t

(** If this method is called, the default action of the event will not be
    triggered. *)
val _method :
  t ->
  t

(** Add handlers to be called when the deferred object is either resolved or
    rejected.
    @param always_callbacks A function, or array of functions, that is called
    when the deferred is resolved or rejected.
    @param always_callbacks Optional additional functions, or arrays of
    functions, that are called when the deferred is resolved or rejected. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Call the progressCallbacks on a deferred object with the given
    @param args Optional arguments that are passed to the progressCallbacks. *)
val _method :
  t ->
  t ->
  t

(** Resolve a deferred object and call any doneCallbacks with the given
    @param args Optional arguments that are passed to the doneCallbacks. *)
val _method :
  t ->
  t ->
  t

(** Reject a deferred object and call any failCallbacks with the given
    @param args Optional arguments that are passed to the failCallbacks. *)
val _method :
  t ->
  t ->
  t

(** Call all of the callbacks with the given arguments
    @param arguments The argument or list of arguments to pass back to the
    callback list. *)
val _method :
  t ->
  t ->
  t

(** A constructor function that returns a chainable utility object with methods
    to register multiple callbacks into callback queues, invoke callback queues,
    and relay the success or failure state of any synchronous or asynchronous
    function.
    @param before_start A function that is called just before the constructor
    returns.                              The constructed deferred object. *)
val _method :
  t ->
  t ->
  t

(** Determine whether a supplied callback is in a list
    @param callback The callback to search for. *)
val _method :
  t ->
  t ->
  bool

(** Add a callback or a collection of callbacks to a callback list.
    @param callbacks A function, or array of functions, that are to be added to
    the callback list. *)
val _method :
  t ->
  t ->
  t

(** Remove a callback or a collection of callbacks from a callback list.
    @param callbacks A function, or array of functions, that are to be removed
    from the callback list. *)
val _method :
  t ->
  t ->
  t

(** Resolve a deferred object and call any doneCallbacks with the given
    @param context Context passed to the doneCallbacks as the this object.
    @param args An optional array of arguments that are passed to the
    doneCallbacks. *)
val _method :
  t ->
  t ->
  t array ->
  t

(** Reject a deferred object and call any failCallbacks with the given
    @param context Context passed to the failCallbacks as the this object.
    @param args An optional array of arguments that are passed to the
    failCallbacks. *)
val _method :
  t ->
  t ->
  t array ->
  t

(** Call the progressCallbacks on a deferred object with the given context and
    @param context Context passed to the progressCallbacks as the this object.
    @param args Optional arguments that are passed to the progressCallbacks. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Call all callbacks in a list with the given context and arguments.
    @param context A reference to the context in which the callbacks in the list
    should be fired.
    @param args An argument, or array of arguments, to pass to the callbacks in
    the list. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Add handlers to be called when the deferred object is resolved, rejected, or
    still in progress.
    @param done_callbacks A function, or array of functions, called when the
    deferred is resolved.
    @param fail_callbacks A function, or array of functions, called when the
    deferred is rejected. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Add handlers to be called when the deferred object is resolved, rejected, or
    still in progress.
    @param done_callbacks A function, or array of functions, called when the
    deferred is resolved.
    @param fail_callbacks A function, or array of functions, called when the
    deferred is rejected.
    @param progress_callbacks A function, or array of functions, called when the
    deferred notifies progress. *)
val _method :
  t ->
  t ->
  t ->
  t ->
  t

(** Add handlers to be called when the deferred object is resolved.
    @param done_callbacks A function, or array of functions, that are called when
    the deferred is resolved.
    @param done_callbacks Optional additional functions, or arrays of functions,
    that are called when the deferred is resolved. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Add handlers to be called when the deferred object is resolved, rejected, or
    still in progress.
    @param done_filter A function that is called when the deferred is resolved.
    @param fail_filter An optional function that is called when the deferred is
    rejected.
    @param progress_filter An optional function that is called when progress
    notifications are sent to the deferred. *)
val _method :
  t ->
  t ->
  t ->
  t ->
  t

(** Utility method to filter and/or chain deferreds.
    @param done_filter An optional function that is called when the deferred is
    resolved.
    @param fail_filter An optional function that is called when the deferred is
    rejected. *)
val _method :
  t ->
  t ->
  t ->
  t

(** Utility method to filter and/or chain deferreds.
    @param done_filter An optional function that is called when the deferred is
    resolved.
    @param fail_filter An optional function that is called when the deferred is
    rejected.
    @param progress_filter An optional function that is called when progress
    notifications are sent to the deferred. *)
val _method :
  t ->
  t ->
  t ->
  t ->
  t

(** Add handlers to be called when the deferred object is rejected.
    @param fail_callbacks A function, or array of functions, that are called when
    the deferred is rejected.
    @param fail_callbacks Optional additional functions, or arrays of functions,
    that are called when the deferred is rejected. *)
val _method :
  t ->
  t ->
  t ->
  t

(** A multi-purpose callbacks list object that provides a powerful way to manage
    callback lists.
    @param flags An optional list of space-separated flags that change how the
    callback list behaves. *)
val _method :
  t ->
  string ->
  t

(** Add handlers to be called when the deferred object generates progress
    notifications.
    @param progress_callbacks A function, or array of functions, to be called
    when the deferred generates progress notifications. *)
val _method :
  t ->
  t ->
  t

(** Return a deferred's promise object.
    @param target Object onto which the promise methods have to be attached *)
val _method :
  t ->
  t ->
  t

(** Return a promise object to observe when all actions of a certain type bound
    to the collection, queued or not, have finished.
    @param _type The type of queue that needs to be observed.
    @param target Object onto which the promise methods have to be attached *)
val _method :
  t ->
  string ->
  t ->
  t

(**  *)
val mousedown :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousedown :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousedown :
  t ->
  t ->
  t

(**  *)
val mouseenter :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseenter :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseenter :
  t ->
  t ->
  t

(**  *)
val mouseleave :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseleave :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseleave :
  t ->
  t ->
  t

(**  *)
val mousemove :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousemove :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mousemove :
  t ->
  t ->
  t

(**  *)
val mouseout :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseout :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseout :
  t ->
  t ->
  t

(**  *)
val mouseover :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseover :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseover :
  t ->
  t ->
  t

(**  *)
val mouseup :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseup :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val mouseup :
  t ->
  t ->
  t

(** Selects the combined results of all the specified selectors.
    @param selector1 Any valid selector.
    @param selector2 Another valid selector.
    @param selector_n As many more valid selectors as you like. *)
val multiple :
  t ->
  string ->
  string ->
  t ->
  t

(** Get the immediately following sibling of each element in the set of matched
    elements. If a selector is provided, it retrieves the next sibling only if it
    matches that selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val next :
  t ->
  t ->
  t

(** Selects all next elements matching "next" that are immediately preceded by a
    sibling "prev".
    @param prev Any valid selector.
    @param next A selector to match the element that is next to the first
    selector. *)
val next_adjacent :
  t ->
  string ->
  string ->
  t

(** Selects all sibling elements that follow after the "prev" element, have the
    same parent, and match the filtering "siblings" selector.
    @param prev Any valid selector.
    @param siblings A selector to filter elements that are the following siblings
    of the first selector. *)
val next_siblings :
  t ->
  string ->
  string ->
  t

(** Get all following siblings of each element in the set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val next_all :
  t ->
  t ->
  t

(** Get all following siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object passed.
    @param element A DOM node or jQuery object indicating where to stop matching
    following sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val next_until :
  t ->
  t ->
  t ->
  t

(** Get all following siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object passed.
    @param selector A string containing a selector expression to indicate where
    to stop matching following sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val next_until :
  t ->
  t ->
  t ->
  t

(** Remove elements from the set of matched elements.
    @param elements One or more DOM elements to remove from the matched set. *)
val _not :
  t ->
  Dom_html.element Dom.nodeList Js.t ->
  t

(** Remove elements from the set of matched elements.
    @param function_index_ A function used as a test for each element in the set.
    this is the current DOM element. *)
val _not :
  t ->
  t ->
  t

(** Remove elements from the set of matched elements.
    @param j_query_object An existing jQuery object to match the current set of
    elements against. *)
val _not :
  t ->
  t ->
  t

(** Selects all elements that do not match the given selector.
    @param selector A selector with which to filter by. *)
val _not :
  t ->
  string ->
  t

(** Remove elements from the set of matched elements.
    @param selector A string containing a selector expression to match elements
    against. *)
val _not :
  t ->
  string ->
  t

(** Selects all elements that are the nth-child of their parent.
    @param index The index of each child to match, starting with 1, the string
    even or odd, or an equation ( eg. :nth-child(even), :nth-child(4n) ) *)
val nth_child :
  t ->
  Jq_types.nth_index ->
  t

(** Selects all elements that are the nth-child of their parent, counting from
    the last element to the first.
    @param index The index of each child to match, starting with the last one
    (1), the string even or odd, or an equation ( eg. :nth-last-child(even),
    :nth-last-child(4n) ) *)
val nth_last_child :
  t ->
  Jq_types.nth_index ->
  t

(** Selects all elements that are the nth-child of their parent, counting from
    the last element to the first.
    @param index The index of each child to match, starting with the last one
    (1), the string even or odd, or an equation ( eg. :nth-last-of-type(even),
    :nth-last-of-type(4n) ) *)
val nth_last_of_type :
  t ->
  Jq_types.nth_index ->
  t

(** Selects all elements that are the nth child of their parent in relation to
    siblings with the same element name.
    @param index The index of each child to match, starting with 1, the string
    even or odd, or an equation ( eg. :nth-of-type(even), :nth-of-type(4n) ) *)
val nth_of_type :
  t ->
  Jq_types.nth_index ->
  t

(** Selects odd elements, zero-indexed.  See also *)
val odd :
  t ->
  t

(**
    @param events One or more space-separated event types and optional
    namespaces, or just namespaces, such as "click", "keydown.myPlugin", or
    ".myPlugin".
    @param selector A selector which should match the one originally passed to
    .on() when attaching event handlers.
    @param handler_event_object_ A handler function previously attached for the
    event(s), or the special value false. *)
val off :
  t ->
  string ->
  string ->
  t ->
  t

(**
    @param events An object where the string keys represent one or more
    space-separated event types and optional namespaces, and the values represent
    handler functions previously attached for the event(s).
    @param selector A selector which should match the one originally passed to
    .on() when attaching event handlers. *)
val off :
  t ->
  t ->
  string ->
  t

(** Get the current coordinates of the first element in the set of matched
    elements, relative to the document. *)
val offset :
  t ->
  t

(** Get the closest ancestor element that is positioned. *)
val offset_parent :
  t ->
  t

(**
    @param events One or more space-separated event types and optional
    namespaces, such as "click" or "keydown.myPlugin".
    @param selector A selector string to filter the descendants of the selected
    elements that trigger the event. If the selector is null or omitted, the
    event is always triggered when it reaches the selected element.
    @param data Data to be passed to the handler in event.data when an event is
    triggered.
    @param handler_event_object_ A function to execute when the event is
    triggered. The value false is also allowed as a shorthand for a function that
    simply does return false. *)
val on :
  t ->
  string ->
  string ->
  t ->
  t ->
  t

(**
    @param events An object in which the string keys represent one or more
    space-separated event types and optional namespaces, and the values represent
    a handler function to be called for the event(s).
    @param selector A selector string to filter the descendants of the selected
    elements that will call the handler. If the selector is null or omitted, the
    handler is always called when it reaches the selected element.
    @param data Data to be passed to the handler in event.data when an event
    occurs. *)
val on :
  t ->
  t ->
  string ->
  t ->
  t

(**
    @param events A string containing one or more JavaScript event types, such as
    "click" or "submit," or custom event names.
    @param data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val one :
  t ->
  string ->
  t ->
  t ->
  t

(**
    @param events One or more space-separated event types and optional
    namespaces, such as "click" or "keydown.myPlugin".
    @param selector A selector string to filter the descendants of the selected
    elements that trigger the event. If the selector is null or omitted, the
    event is always triggered when it reaches the selected element.
    @param data Data to be passed to the handler in event.data when an event is
    triggered.
    @param handler_event_object_ A function to execute when the event is
    triggered. The value false is also allowed as a shorthand for a function that
    simply does return false. *)
val one :
  t ->
  string ->
  string ->
  t ->
  t ->
  t

(**
    @param events An object in which the string keys represent one or more
    space-separated event types and optional namespaces, and the values represent
    a handler function to be called for the event(s).
    @param selector A selector string to filter the descendants of the selected
    elements that will call the handler. If the selector is null or omitted, the
    handler is always called when it reaches the selected element.
    @param data Data to be passed to the handler in event.data when an event
    occurs. *)
val one :
  t ->
  t ->
  string ->
  t ->
  t

(** Selects all elements that are the only child of their parent. *)
val only_child :
  t ->
  t

(** Selects all elements that have no siblings with the same element name. *)
val only_of_type :
  t ->
  t

(** Get the current computed height for the first element in the set of matched
    elements, including padding, border, and optionally margin. Returns an
    integer (without "px") representation of the value or null if called on an
    empty set of elements.
    @param include_margin A Boolean indicating whether to include the element's
    margin in the calculation. *)
val outer_height :
  t ->
  t ->
  int

(** Get the current computed width for the first element in the set of matched
    elements, including padding and border.
    @param include_margin A Boolean indicating whether to include the element's
    margin in the calculation. *)
val outer_width :
  t ->
  t ->
  int

(** Select all elements that have at least one child node (either an element or
    text). *)
val parent :
  t ->
  t

(** Get the parent of each element in the current set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val parent :
  t ->
  t ->
  t

(** Get the ancestors of each element in the current set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val parents :
  t ->
  t ->
  t

(** Get the ancestors of each element in the current set of matched elements, up
    to but not including the element matched by the selector, DOM node, or jQuery
    object.
    @param element A DOM node or jQuery object indicating where to stop matching
    ancestor elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val parents_until :
  t ->
  t ->
  t ->
  t

(** Get the ancestors of each element in the current set of matched elements, up
    to but not including the element matched by the selector, DOM node, or jQuery
    object.
    @param selector A string containing a selector expression to indicate where
    to stop matching ancestor elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val parents_until :
  t ->
  t ->
  t ->
  t

(** Selects all elements of type password. *)
val password :
  t ->
  t

(** Get the current coordinates of the first element in the set of matched
    elements, relative to the offset parent. *)
val position :
  t ->
  t

(** Insert content, specified by the parameter, to the beginning of each element
    in the set of matched elements.
    @param content DOM element, array of elements, HTML string, or jQuery object
    to insert at the beginning of each element in the set of matched elements.
    @param content One or more additional DOM elements, arrays of elements, HTML
    strings, or jQuery objects to insert at the beginning of each element in the
    set of matched elements. *)
val prepend :
  t ->
  t ->
  t ->
  t

(** Insert content, specified by the parameter, to the beginning of each element
    in the set of matched elements.
    @param function_index__html_ A function that returns an HTML string, DOM
    element(s), or jQuery object to insert at the beginning of each element in
    the set of matched elements. Receives the index position of the element in
    the set and the old HTML value of the element as arguments. Within the
    function, this refers to the current element in the set. *)
val prepend :
  t ->
  t ->
  t

(** Insert every element in the set of matched elements to the beginning of the
    target.
    @param target A selector, element, HTML string, or jQuery object; the matched
    set of elements will be inserted at the beginning of the element(s) specified
    by this parameter. *)
val prepend_to :
  t ->
  t ->
  t

(** Get the immediately preceding sibling of each element in the set of matched
    elements, optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val prev :
  t ->
  t ->
  t

(** Get all preceding siblings of each element in the set of matched elements,
    optionally filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val prev_all :
  t ->
  t ->
  t

(** Get all preceding siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object.
    @param element A DOM node or jQuery object indicating where to stop matching
    preceding sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val prev_until :
  t ->
  t ->
  t ->
  t

(** Get all preceding siblings of each element up to but not including the
    element matched by the selector, DOM node, or jQuery object.
    @param selector A string containing a selector expression to indicate where
    to stop matching preceding sibling elements.
    @param filter A string containing a selector expression to match elements
    against. *)
val prev_until :
  t ->
  t ->
  t ->
  t

(** Add a collection of DOM elements onto the jQuery stack.
    @param elements An array of elements to push onto the stack and make into a
    new jQuery object. *)
val push_stack :
  t ->
  t array ->
  t

(** Add a collection of DOM elements onto the jQuery stack.
    @param elements An array of elements to push onto the stack and make into a
    new jQuery object.
    @param name The name of a jQuery method that generated the array of elements.
    @param arguments The arguments that were passed in to the jQuery method (for
    serialization). *)
val push_stack :
  t ->
  t array ->
  string ->
  t array ->
  t

(** Show the queue of functions to be executed on the matched elements.
    @param queue_name A string containing the name of the queue. Defaults to fx,
    the standard effects queue. *)
val queue :
  t ->
  t ->
  t array

(** Selects all  elements of type radio. *)
val radio :
  t ->
  t

(**
    @param handler A function to execute after the DOM is ready. *)
val ready :
  t ->
  t ->
  t

(** Remove the set of matched elements from the DOM.
    @param selector A selector expression that filters the set of matched
    elements to be removed. *)
val remove :
  t ->
  t ->
  t

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
  t ->
  t

(** Remove a single class, multiple classes, or all classes from each element in
    the set of matched elements.
    @param function_index__class_ A function returning one or more
    space-separated class names to be removed. Receives the index position of the
    element in the set and the old class value as arguments. *)
val remove_class :
  t ->
  t ->
  t

(** Remove a previously-stored piece of data.
    @param list An array or space-separated string naming the pieces of data to
    delete. *)
val remove_data :
  t ->
  t ->
  t

(** Remove a previously-stored piece of data.
    @param name A string naming the piece of data to delete. *)
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
    @param target A selector string, jQuery object, or DOM element reference
    indicating which element(s) to replace. *)
val replace_all :
  t ->
  t ->
  t

(** Replace each element in the set of matched elements with the provided new
    content and return the set of elements that was removed.
    @param _function A function that returns content with which to replace the
    set of matched elements. *)
val replace_with :
  t ->
  t ->
  t

(** Replace each element in the set of matched elements with the provided new
    content and return the set of elements that was removed.
    @param new_content The content to insert. May be an HTML string, DOM element,
    or jQuery object. *)
val replace_with :
  t ->
  t ->
  t

(** Selects all elements of type reset. *)
val reset :
  t ->
  t

(**  *)
val resize :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val resize :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val resize :
  t ->
  t ->
  t

(** Selects the element that is the root of the document. *)
val root :
  t ->
  t

(**  *)
val scroll :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val scroll :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val scroll :
  t ->
  t ->
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

(**  *)
val select :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val select :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val select :
  t ->
  t ->
  t

(** Selects all elements that are selected. *)
val selected :
  t ->
  t

(** A selector representing selector passed to jQuery(), if any, when creating
    the original set. *)
val selector :
  t ->
  string

(** Encode a set of form elements as a string for submission. *)
val serialize :
  t ->
  string

(** Encode a set of form elements as an array of names and values. *)
val serialize_array :
  t ->
  t array

(**  *)
val show :
  t ->
  t

(**  *)
val show :
  t ->
  t

(**  *)
val show :
  t ->
  t

(**
    @param duration A string or number determining how long the animation will
    run. *)
val show :
  t ->
  t ->
  t

(** Get the siblings of each element in the set of matched elements, optionally
    filtered by a selector.
    @param selector A string containing a selector expression to match elements
    against. *)
val siblings :
  t ->
  t ->
  t

(** Return the number of elements in the jQuery object. *)
val size :
  t ->
  int

(** Reduce the set of matched elements to a subset specified by a range of
    indices.
    @param start An integer indicating the 0-based position at which the elements
    begin to be selected. If negative, it indicates an offset from the end of the
    set.
    @param _end An integer indicating the 0-based position at which the elements
    stop being selected. If negative, it indicates an offset from the end of the
    set. If omitted, the range continues until the end of the set. *)
val slice :
  t ->
  int ->
  t ->
  t

(**  *)
val slide_down :
  t ->
  t

(**  *)
val slide_down :
  t ->
  t

(**  *)
val slide_down :
  t ->
  t

(**  *)
val slide_toggle :
  t ->
  t

(**  *)
val slide_toggle :
  t ->
  t

(**  *)
val slide_toggle :
  t ->
  t

(**  *)
val slide_up :
  t ->
  t

(**  *)
val slide_up :
  t ->
  t

(**  *)
val slide_up :
  t ->
  t

(**
    @param clear_queue A Boolean indicating whether to remove queued animation as
    well. Defaults to false.
    @param jump_to_end A Boolean indicating whether to complete the current
    animation immediately. Defaults to false. *)
val stop :
  t ->
  bool ->
  bool ->
  t

(**
    @param queue The name of the queue in which to stop animations.
    @param clear_queue A Boolean indicating whether to remove queued animation as
    well. Defaults to false.
    @param jump_to_end A Boolean indicating whether to complete the current
    animation immediately. Defaults to false. *)
val stop :
  t ->
  string ->
  bool ->
  bool ->
  t

(**  *)
val submit :
  t ->
  t

(** Selects all elements of type submit. *)
val submit :
  t ->
  t

(**
    @param event_data An object containing data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val submit :
  t ->
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val submit :
  t ->
  t ->
  t

(** Selects the target element indicated by the fragment identifier of the
    document's URI. *)
val target :
  t ->
  t

(** Get the combined text contents of each element in the set of matched
    elements, including their descendants. *)
val text :
  t ->
  string

(** Selects all elements of type text. *)
val text :
  t ->
  t

(** Retrieve all the DOM elements contained in the jQuery set, as an array. *)
val to_array :
  t ->
  t array

(**  *)
val toggle :
  t ->
  t

(**  *)
val toggle :
  t ->
  t

(**
    @param duration A string or number determining how long the animation will
    run. *)
val toggle :
  t ->
  t ->
  t

(**
    @param handler_event_object_ A function to execute every even time the
    element is clicked.
    @param handler_event_object_ A function to execute every odd time the element
    is clicked.
    @param handler_event_object_ Additional handlers to cycle through after
    clicks. *)
val toggle :
  t ->
  t ->
  t ->
  t ->
  t

(**
    @param show_or_hide A Boolean indicating whether to show or hide the elements. *)
val toggle :
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
    @param function_index__class__switch_ A function that returns class names to
    be toggled in the class attribute of each element in the matched set.
    Receives the index position of the element in the set, the old class value,
    and the switch as arguments.
    @param switch A boolean value to determine whether the class should be added
    or removed. *)
val toggle_class :
  t ->
  t ->
  t ->
  t

(** Add or remove one or more classes from each element in the set of matched
    elements, depending on either the class's presence or the value of the switch
    argument.
    @param switch A boolean value to determine whether the class should be added
    or removed. *)
val toggle_class :
  t ->
  t ->
  t

(**
    @param event A jQuery.Event object.
    @param extra_parameters Additional parameters to pass along to the event
    handler. *)
val trigger :
  t ->
  t ->
  t ->
  t

(**
    @param event_type A string containing a JavaScript event type, such as click
    or submit.
    @param extra_parameters Additional parameters to pass along to the event
    handler. *)
val trigger :
  t ->
  string ->
  t ->
  t

(**
    @param event_type A string containing a JavaScript event type, such as click
    or submit.
    @param extra_parameters An array of additional parameters to pass along to
    the event handler. *)
val trigger_handler :
  t ->
  string ->
  t ->
  t

(**
    @param event A JavaScript event object as passed to an event handler. *)
val unbind :
  t ->
  t ->
  t

(**
    @param event_type A string containing a JavaScript event type, such as click
    or submit.
    @param _false Unbinds the corresponding 'return false' function that was
    bound using .bind( eventType, false ). *)
val unbind :
  t ->
  string ->
  bool ->
  t

(**
    @param event_type A string containing a JavaScript event type, such as click
    or submit.
    @param handler_event_object_ The function that is to be no longer executed. *)
val unbind :
  t ->
  string ->
  t ->
  t

(**  *)
val undelegate :
  t ->
  t

(**
    @param namespace A string containing a namespace to unbind all events from. *)
val undelegate :
  t ->
  string ->
  t

(**
    @param selector A selector which will be used to filter the event results.
    @param event_type A string containing a JavaScript event type, such as
    "click" or "keydown" *)
val undelegate :
  t ->
  string ->
  string ->
  t

(**
    @param selector A selector which will be used to filter the event results.
    @param event_type A string containing a JavaScript event type, such as
    "click" or "keydown"
    @param handler_event_object_ A function to execute at the time the event is
    triggered. *)
val undelegate :
  t ->
  string ->
  string ->
  t ->
  t

(**
    @param selector A selector which will be used to filter the event results.
    @param events An object of one or more event types and previously bound
    functions to unbind from them. *)
val undelegate :
  t ->
  string ->
  t ->
  t

(** Bind an event handler to the "unload" JavaScript event.
    @param event_data A plain object of data that will be passed to the event
    handler.
    @param handler_event_object_ A function to execute each time the event is
    triggered. *)
val unload :
  t ->
  t ->
  t ->
  t

(** Bind an event handler to the "unload" JavaScript event.
    @param handler_event_object_ A function to execute when the event is
    triggered. *)
val unload :
  t ->
  t ->
  t

(** Remove the parents of the set of matched elements from the DOM, leaving the
    matched elements in their place. *)
val unwrap :
  t ->
  t

(** Selects all elements that are visible. *)
val visible :
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
  t ->
  t

(** Wrap an HTML structure around each element in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap :
  t ->
  t ->
  t

(** Wrap an HTML structure around all elements in the set of matched elements.
    @param wrapping_element A selector, element, HTML string, or jQuery object
    specifying the structure to wrap around the matched elements. *)
val wrap_all :
  t ->
  t ->
  t

(** Wrap an HTML structure around the content of each element in the set of
    matched elements.
    @param function_index_ A callback function which generates a structure to
    wrap around the content of the matched elements. Receives the index position
    of the element in the set as an argument. Within the function, this refers to
    the current element in the set. *)
val wrap_inner :
  t ->
  t ->
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
