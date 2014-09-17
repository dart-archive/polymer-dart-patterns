
# Using a computed property

Shows how to to bind to a property that is computed based on other
property values.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.dart): 
  The HTML for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.html): 
  The Dart code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/computed-property-readme/web/basics/using_a_computed_property/index.html):
  The HTML file that imports `<my-element>`

## How it works

The MyElement class (`my_element.dart`) defines three properties:

* `firstName`
* `lastName`
* `fullName`

The `fullName` property is _computed_ from `firstName` and `lastName`,
which must be defined using the `@observable` annotation. A computed property,
defined using the `@ComputedProperty` annotation, has the form:

    @ComputedProperty(expression)

The expression is used to compute the value of the property. For example:

    @ComputedProperty('firstName + " " + lastName')

Apply this annotation to the variable to be computed, which is also defined
as a getter function.

    @ComputedProperty('firstName + " " + lastName')
    String get fullName => readValue(#fullName);

The template code (`my_element.html`) uses _binding_ notation
(`{{fullName}}`) to dynamically bind the named HTML object to the Dart
variable of the same name.  When either value changes, both values update.

## More information

* [using-a-computed-property.html](https://github.com/PolymerLabs/polymer-snippets/blob/f5651613ea5db9c2e50a2f4df8f27c64c07755db/snippets/basics/using-a-computed-property.html):
  The JavaScript version of this example
* [@ComputedProperty](https://www.dartlang.org/polymer/reference/release-notes/#computedproperty):
  A section in the polymer.dart release notes
* [ComputedProperty class](http://www.dartdocs.org/documentation/polymer/0.12.0/index.html#polymer/polymer.ComputedProperty):
  API documentation

