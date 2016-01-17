
# Using a computed property

Shows how to to bind to a property that is computed based on other
property values.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.dart): 
  The Dart code for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.html): 
  The HTML code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/computed-property-readme/web/basics/using_a_computed_property/index.html):
  An HTML file that uses `<my-element>`

## How it works

The MyElement class (`my_element.dart`) defines three properties:

* `firstName`
* `lastName`
* `fullName`

The `fullName` property is _computed_ from `firstName` and `lastName`,
which must be defined using the `@property` annotation. A computed property,
defined using the `@Property(computed: 'computation(args)')` annotation, has the 
form:

    @Property(computed: 'computeFullName(firstName,lastName')
    String fullName;

The function is used to compute the value of the property. For example:

    @reflectable
    String computeFullName(String firstName, String lastName) =>
        '$firstName $lastName';

The template code (`my_element.html`) uses _binding_ notation
(`{{fullName}}`) to dynamically bind the named HTML object to the Dart
variable of the same name.  When either value changes, both values update.

## More information

* [Computed properties](https://github.com/dart-lang/polymer-dart/wiki/properties#computed-properties):
  The JavaScript version of this example

