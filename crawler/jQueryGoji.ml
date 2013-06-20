    Module 
    ("J_query", Nodoc, [
      Type ([], "t", Nodoc, Extern (Global "jQuery")) ;
      Method (([], None, "t"), { ocaml_name = "add" ; js_name = "add" },
            Doc "Add elements to the set of matched elements.",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Element *)], Doc "The point in the document at which the selector should begin matching; similar to the context argument of the") ;
              Labeled ("selector", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string representing a selector expression to find additional elements to add to the set of matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add" ; js_name = "add" },
            Doc "Add elements to the set of matched elements.",
            [ Labeled ("elements", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Elements *)], Doc "One or more elements to add to the set of matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add" ; js_name = "add" },
            Doc "Add elements to the set of matched elements.",
            [ Labeled ("html", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : htmlString *)], Doc "An HTML fragment to add to the set of matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add" ; js_name = "add" },
            Doc "Add elements to the set of matched elements.",
            [ Labeled ("j_query object", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : jQuery object *)], Doc "An existing jQuery object to add to the set of matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add" ; js_name = "add" },
            Doc "Add elements to the set of matched elements.",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string representing a selector expression to find additional elements to add to the set of matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add_class" ; js_name = "addClass" },
            Doc "Adds the specified class(es) to each of the set of matched elements.",
            [ Labeled ("class_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "One or more space-separated classes to be added to the class attribute of each matched element.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "add_class" ; js_name = "addClass" },
            Doc "Adds the specified class(es) to each of the set of matched elements.",
            [ Labeled ("function(index, current_class)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function returning one or more space-separated class names to be added to the existing class name(s). Receives the index position of the element in the set and the existing class name(s) as arguments. Within the function,") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "attribute_equals" ; js_name = "attributeEquals" },
            Doc "Selects elements that have the specified attribute with a value exactly equal to a certain value.",
            [ Labeled ("value", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "An attribute value.") ;
              Labeled ("attribute", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : String *)], Doc "An attribute name.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type :  *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "clear_queue" ; js_name = "clearQueue" },
            Doc "Remove from the queue all items that have not yet been run.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "clone" ; js_name = "clone" },
            Doc "Create a deep copy of the set of matched elements.",
            [ Labeled ("with_data_and_events", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A Boolean indicating whether event handlers and data should be copied along with the elements. The default value is") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "clone" ; js_name = "clone" },
            Doc "Create a deep copy of the set of matched elements.",
            [ Labeled ("with_data_and_events", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A Boolean indicating whether event handlers should be copied along with the elements. As of jQuery 1.4, element data will be copied as well.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "delay" ; js_name = "delay" },
            Doc "Set a timer to delay execution of subsequent items in the queue.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ;
              Labeled ("duration", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Integer *)], Doc "An integer indicating the number of milliseconds to delay execution of the next item in the queue.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "dequeue" ; js_name = "dequeue" },
            Doc "Execute the next function on the queue for the matched elements.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "die" ; js_name = "die" },
            Doc "A plain object of one or more event types, such as",
            [ Labeled ("event_type", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing a JavaScript event type, such as") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "filter" ; js_name = "filter" },
            Doc "An element to match the current set of elements against.",
            [ Labeled ("function(index)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function used as a test for each element in the set.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "filter" ; js_name = "filter" },
            Doc "An element to match the current set of elements against.",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string containing a selector expression to match the current set of elements against.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "html" ; js_name = "html" },
            Doc "Set the HTML contents of each element in the set of matched elements.",
            [  ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : String *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "html" ; js_name = "html" },
            Doc "Set the HTML contents of each element in the set of matched elements.",
            [ Labeled ("function(index, oldhtml)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function returning the HTML content to set. Receives the\n          index position of the element in the set and the old HTML value as arguments.\n          jQuery empties the element before calling the function;\n          use the oldhtml argument to reference the previous content.\n          Within the function,") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : String *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "html" ; js_name = "html" },
            Doc "Set the HTML contents of each element in the set of matched elements.",
            [ Labeled ("html_string", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : htmlString *)], Doc "A string of HTML to set as the content of each matched element.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : String *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "is" ; js_name = "is" },
            Doc "An existing jQuery object to match the current set of elements against.",
            [ Labeled ("function(index)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function used as a test for the set of elements. It accepts one argument,") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Boolean *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "is" ; js_name = "is" },
            Doc "An existing jQuery object to match the current set of elements against.",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string containing a selector expression to match elements against.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Boolean *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [  ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A DOM Element, Document, or jQuery to use as context") ;
              Labeled ("selector", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string containing a selector expression") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("element", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Element *)], Doc "A DOM element to wrap in a jQuery object.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("element_array", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Array *)], Doc "An array containing a set of DOM elements to wrap in a jQuery object.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("html", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : htmlString *)], Doc "A string of HTML to create on the fly. Note that this parses HTML,") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("j_query object", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "An existing jQuery object to clone.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query" ; js_name = "jQuery" },
            Doc "A string defining a single, standalone, HTML element (e.g. <div/> or <div></div>).",
            [ Labeled ("_object", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "A plain object to wrap in a jQuery object.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotajax" ; js_name = "jQuery.ajax" },
            Doc "A set of key/value pairs that configure the Ajax request. All settings are optional. A default can be set for any option with",
            [ Labeled ("settings", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "A set of key/value pairs that configure the Ajax request. All settings are optional. A default can be set for any option with") ;
              Labeled ("url", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing the URL to which the request is sent.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jqXHR *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotdequeue" ; js_name = "jQuery.dequeue" },
            Doc "Execute the next function on the queue for the matched element.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ;
              Labeled ("element", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Element *)], Doc "A DOM element from which to remove and execute a queued function.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : undefined *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotgrep" ; js_name = "jQuery.grep" },
            Doc "Filters the original array of numbers leaving that are not 5 and have an index greater than 4.  Then it removes all 9s.",
            [ Labeled ("function(element_of_array, index_in_array)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "The function to process each item against.  The first argument to the function is the item, and the second argument is the index.  The function should return a Boolean value.") ;
              Labeled ("array", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Array *)], Doc "The array to search through.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Array *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotmap" ; js_name = "jQuery.map" },
            Doc "The Array or Object to translate.",
            [ Labeled ("callback(element_of_array, index_in_array)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "The function to process each item against.  The first argument to the function is the array item, the second argument is the index in array The function can return any value. Within the function,") ;
              Labeled ("array", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Array *)], Doc "The Array to translate.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Array *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotpost" ; js_name = "jQuery.post" },
            Doc "Load data from the server using a HTTP POST request.",
            [ Labeled ("success(data, text_status, jq_xhr)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A callback function that is executed if the request succeeds. Required if") ;
              Labeled ("data", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A plain object or string that is sent to the server with the request.") ;
              Labeled ("url", Value [Arg 2, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing the URL to which the request is sent.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jqXHR *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotproxy" ; js_name = "jQuery.proxy" },
            Doc "The object to which the context of the function should be set.",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "The object to which the context (") ;
              Labeled ("_function", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "The function whose context will be changed.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Function *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "j_query_dotqueue" ; js_name = "jQuery.queue" },
            Doc "Show the queue of functions to be executed on the matched element.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ;
              Labeled ("element", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : Element *)], Doc "A DOM element to inspect for an attached queue.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Array *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "_method" ; js_name = "method" },
            Doc "Resolve a Deferred object and call any doneCallbacks with the given",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Object *)], Doc "Context passed to the doneCallbacks as the") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Deferred *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "_method" ; js_name = "method" },
            Doc "Reject a Deferred object and call any failCallbacks with the given",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Object *)], Doc "Context passed to the failCallbacks as the") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Deferred *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "_method" ; js_name = "method" },
            Doc "Call the progressCallbacks on a Deferred object with the given context and",
            [ Labeled ("context", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Object *)], Doc "Context passed to the progressCallbacks as the") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Deferred *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "not" ; js_name = "not" },
            Doc "An existing jQuery object to match the current set of elements against.",
            [ Labeled ("elements", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Elements *)], Doc "One or more DOM elements to remove from the matched set.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "not" ; js_name = "not" },
            Doc "An existing jQuery object to match the current set of elements against.",
            [ Labeled ("function(index)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function used as a test for each element in the set.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "not" ; js_name = "not" },
            Doc "An existing jQuery object to match the current set of elements against.",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Selector *)], Doc "A string containing a selector expression to match elements against.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "nth-child" ; js_name = "nth-child" },
            Doc "Selects all elements that are the nth-child of their parent.",
            [ Labeled ("index", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Number/String *)], Doc "The index of each child to match, starting with") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type :  *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "nth-last-child" ; js_name = "nth-last-child" },
            Doc "Selects all elements that are the nth-child of their parent, counting from the last element to the first.",
            [ Labeled ("index", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Number/String *)], Doc "The index of each child to match, starting with the last one (") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type :  *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "nth-last-of-type" ; js_name = "nth-last-of-type" },
            Doc "Selects all elements that are the nth-child of their parent, counting from the last element to the first.",
            [ Labeled ("index", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Number/String *)], Doc "The index of each child to match, starting with the last one (") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type :  *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "nth-of-type" ; js_name = "nth-of-type" },
            Doc "Selects all elements that are the nth child of their parent in relation to siblings with the same element name.",
            [ Labeled ("index", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Number/String *)], Doc "The index of each child to match, starting with") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type :  *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "off" ; js_name = "off" },
            Doc "An object where the string keys represent one or more space-separated event types and optional namespaces, and the values represent handler functions previously attached for the event(s).",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A selector which should match the one originally passed to") ;
              Labeled ("events", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : String *)], Doc "One or more space-separated event types and optional namespaces, or just namespaces, such as \"click\", \"keydown.myPlugin\", or \".myPlugin\".") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "offset" ; js_name = "offset" },
            Doc "A function to return the coordinates to set. Receives the index of the element in the collection as the first argument and the current coordinates as the second argument. The function should return an object with the new",
            [  ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Object *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "offset" ; js_name = "offset" },
            Doc "A function to return the coordinates to set. Receives the index of the element in the collection as the first argument and the current coordinates as the second argument. The function should return an object with the new",
            [ Labeled ("coordinates", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "An object containing the properties") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Object *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "on" ; js_name = "on" },
            Doc "An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A selector string to filter the descendants of the selected elements that trigger the event. If the selector is") ;
              Labeled ("events", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : String *)], Doc "One or more space-separated event types and optional namespaces, such as \"click\" or \"keydown.myPlugin\".") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "one" ; js_name = "one" },
            Doc "An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).",
            [ Labeled ("handler(event_object)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A function to execute at the time the event is triggered.") ;
              Labeled ("data", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : PlainObject *)], Doc "An object containing data that will be passed to the event handler.") ;
              Labeled ("events", Value [Arg 2, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing one or more JavaScript event types, such as \"click\" or \"submit,\" or custom event names.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "one" ; js_name = "one" },
            Doc "An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).",
            [ Labeled ("selector", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A selector string to filter the descendants of the selected elements that trigger the event. If the selector is") ;
              Labeled ("events", Value [Arg 1, Abbrv ([], Some [], "js")(* Type : String *)], Doc "One or more space-separated event types and optional namespaces, such as \"click\" or \"keydown.myPlugin\".") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "queue" ; js_name = "queue" },
            Doc "Show the queue of functions to be executed on the matched elements.",
            [ Labeled ("queue_name", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : true *)], Doc "A string containing the name of the queue. Defaults to") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Array *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "stop" ; js_name = "stop" },
            Doc "The name of the queue in which to stop animations.",
            [ Labeled ("clear_queue", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Boolean *)], Doc "A Boolean indicating whether to remove queued animation as well. Defaults to") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "trigger" ; js_name = "trigger" },
            Doc "A",
            [ Labeled ("event_type", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing a JavaScript event type, such as") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "trigger_handler" ; js_name = "triggerHandler" },
            Doc "If you called .triggerHandler() on a focus event - the browser's default focus action would not be triggered, only the event handlers bound to the focus event.",
            [ Labeled ("event_type", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing a JavaScript event type, such as") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : Object *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "unbind" ; js_name = "unbind" },
            Doc "A string containing a JavaScript event type, such as",
            [ Labeled ("event_type", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "A string containing a JavaScript event type, such as") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "wrap_inner" ; js_name = "wrapInner" },
            Doc "Wrap an HTML structure around the content of each element in the set of matched elements.",
            [ Labeled ("function(index)", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : Function *)], Doc "A callback function which generates a structure to wrap around the content of the matched elements. Receives the index position of the element in the set as an argument. Within the function,") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
      Method (([], None, "t"), { ocaml_name = "wrap_inner" ; js_name = "wrapInner" },
            Doc "Wrap an HTML structure around the content of each element in the set of matched elements.",
            [ Labeled ("wrapping_element", Value [Arg 0, Abbrv ([], Some [], "js")(* Type : String *)], Doc "An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the content of the matched elements.") ],
            Some (Value [Root, Abbrv ([], Some [], "js")(* Type : jQuery *)], Nodoc)) ;
    ]) ;
