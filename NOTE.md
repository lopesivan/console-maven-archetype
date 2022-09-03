I think of %w() as a "word array" - the elements are delimited
by spaces and it returns an array of strings.

Here are all % literals:

    %w() array of strings
    %r() regular expression.
    %q() string
    %x() a shell command (returning the output string)
    %i() array of symbols (Ruby >= 2.0.0)
    %s() symbol
    %() (without letter) shortcut for %Q()

The delimiters ( and ) can be replaced with a lot of
variations, like [ and ], |, !, etc.

When using a capital letter %W() you can use string
interpolation #{variable}, similar to the " and ' string
delimiters. This rule works for all the other % literals
as well.

    abc = 'a b c'
    %w[1 2#{abc} d] #=> ["1", "2\#{abc}", "d"]
    %W[1 2#{abc} d] #=> ["1", "2a b c", "d"]
