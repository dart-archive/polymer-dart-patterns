# Conditionally hiding an element

Shows **conditional boolean attributes** using the **?=** syntax.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/conditionally_hiding_an_element/my_element.dart): 
  The Dart code for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/conditionally_hiding_an_element/my_element.html): 
  The HTML code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/conditionally_hiding_an_element/index.html):
  An HTML file that uses `<my-element>`

## How it works

You can set an element's `hidden` property using `hidden$=`. For example:

    <p hidden$="{{shortView}}">
      ...
    </p>

If `shortView` is true the paragraph is displayed, otherwise the paragraph
is hidden.

The MyElement class (`my_element.dart`) defines the `toggleView`  method
which toggles the boolean variable, `shortView`. This variable  must
be defined as observable.

    @property bool shortView = true;
    
    @reflectable
    void toggleView([_, __]) {
      set('shortView', !this.shortView);
    }

The template code (`my_element.html`) defines a paragraph where the
`hidden` tag is bound to the value of `shortView`.

   <div>The Big Lebowski</div>
    <p hidden$="{{shortView}}">
      'Dude' Lebowski, mistaken for a millionaire Lebowski, seeks restitution
      for his ruined rug and enlists his bowling buddies to help get it.
    </p>
    <button on-tap="toggleView">Toggle View</button>

Tapping the provided button calls the `toggleView` method, which toggles the
display of the paragraph.

## More information

* [conditionally-hiding-an-element.html](https://github.com/PolymerLabs/polymer-snippets/blob/35a0312c5645f2538ccd3fc20ef3d569c2d99d47/snippets/control-flow/conditionally-hiding-an-element.html):
  The JavaScript version of this example

