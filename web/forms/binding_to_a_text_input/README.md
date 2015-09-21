# Binding to a Text Input

Shows how to bind Dart data with a HTML text field
so that modifying one changes the other.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/forms/binding_to_a_text_input/my_element.dart): 
  The Dart code for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/forms/binding_to_a_text_input/my_element.html): 
  The HTML code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/forms/binding_to_a_text_input/index.html):
  An HTML file that uses `<my-element>`

## How it works

The MyElement class (`my_element.dart`) defines a String object
annotated with `@property`:

    @property String message = '';

The HTML code (`my_element.html`) binds this string
to the `value` attribute of a text field
using the _binding_ notation (`{{message::input}}`):

    <input type="text" value="{{message::input}}" placeholder="Type something">

`::input` ensures that `message` is updated when the `<input>` element fires the
`input` event. For more details about binding to native elements see 
https://www.polymer-project.org/1.0/docs/devguide/data-binding.html#two-way-native

The HTML code embeds the value of the String in an element on the page
(in this example a `div`).
When a user changes the value of the text field, the String in
the Dart object changes, as does the value in the `div`.

    <div id="message">{{message}}</div>

## More information

* [binding-to-a-text-input.html](https://github.com/PolymerLabs/polymer-snippets/blob/f5651613ea5db9c2e50a2f4df8f27c64c07755db/snippets/forms/binding-to-a-text-input.html):
  The JavaScript version of this example
