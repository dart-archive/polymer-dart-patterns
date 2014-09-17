
# Using a Computed Property

This example shows how to to bind to a property
that is computed based on other property values.

## How it works

The `MyElement` class
([`my_element.dart`](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.dart))
defines three properties in this Polymer element:

* `firstName`
* `lastName`
* `fullName`

The `fullName` property is _computed_ from the `firstName`
and `lastName` properties, which must be defined using the
`@observable` annotation. A computed property, defined using
the `@ComputedProperty` annotation, has the form:

<pre>
@ComputedProperty(<em>expression</em>)
</pre>

The expression is used to compute the value of the property. For example:

<pre>
@ComputedProperty('firstName + " " + lastName')
</pre>

This annotation is applied to the variable that will be computed,
which is also defined as a getter function.

<pre>
@ComputedProperty('firstName + " " + lastName')
String get fullName => readValue(#fullName);
</pre>

Note: you can also define a setter if the expression is assignable.

The template code in the Polymer element
([`my_element.html`](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/basics/using_a_computed_property/my_element.html))
uses _binding_ notation, `{{varName}}`,
to dynamically bind the named HTML object to the Dart variable of the
same name.  When either value changes, both values are updated.

## More information

* [using-a-computed-property.html](https://github.com/PolymerLabs/polymer-snippets/blob/f5651613ea5db9c2e50a2f4df8f27c64c07755db/snippets/basics/using-a-computed-property.html): The JavaScript version of this example.
* [@ComputedProperty](https://www.dartlang.org/polymer/reference/release-notes/#computedproperty): A section in The Polymer Dart release notes.
* [ComputedProperty class](http://www.dartdocs.org/documentation/polymer/0.12.0/index.html#polymer/polymer.ComputedProperty): API documentation.
* [Define a Custom Element tutorial](https://www.dartlang.org/docs/tutorials/polymer-intro/): Create a custom HTML element using Polymer.

