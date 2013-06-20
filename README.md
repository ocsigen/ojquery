# jQuery Binding

This a binding of the jQuery library, using **goji** by Benjamin CANOU.

## Usage of the crawler

The crawler is made for the "vanilla" jQuery documentation. First, you can
extract all the types used in the library by typing :
    ./crawler types path/to/jQuery/doc/entries/*.xml > user_defined.ml

This will fill the user_defined.ml file with types and the corresponding
To_goji type. We can hardly infere those types, so you will have to it by
yourself, e.g. replace :
    ("boolean", To_goji.Unknown "boolean");
by :
    ("boolean", To_goji.Bool);


Once all the types are defined, `make` and type :
    ./crawler path/to/jQuery/doc/entries/*.xml > bindingFile.ml

Overload is not available in OCaml, and you'll have a lot of function with the
 same name but different arguments. You'll have to rename them yourself.