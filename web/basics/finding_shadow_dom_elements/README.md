
# Finding shadow DOM elements

Shows how to find elements inside the shadow DOM.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/computed-property-readme/web/basics/finding_shadow_dom_elements/my_element.dart): 
  The Dart code for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/computed-property-readme/web/basics/finding_shadow_dom_elements/my_element.html): 
  The HTML code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/computed-property-readme/web/basics/finding_shadow_dom_elements/index.html):
  An HTML file that uses `<my-element>`

## How it works

The [Shadow DOM](http://robdodson.me/blog/2013/08/26/shadow-dom-introduction/)
allows web designers to create UI widgets where the implementation details
are encapsulated&mdash;they are not stored in the main document DOM. 

Like the DOM, the shadow DOM is organized as a tree of nodes.
If a node has been tagged with an `id` attribute, you can find
it using the `$['myDiv']` syntax. This Polymer feature, called
_automatic node finding_, returns a reference to the named element.

The MyElement class (`my_element.dart`) defines the `findNodes` method.

    void findNodes() {
      $['myDiv'].querySelector('p').text = 'New content';
    }

This method finds the node tagged with `myDiv` and replaces the
content of its paragraph (`<p>`) with the text, `New content`.

In the template code (`my_element.html`), the `myDiv` element
includes a button.

    <div id="myDiv">
      <p>Old content</p>
      <button on-tap="{{findNodes}}">Find nodes</button>
    </div>

When the button is tapped, the `findNode` method runs,
and the paragraph updates.

## More information

* [finding-shadow-dom-elements.html](https://github.com/PolymerLabs/polymer-snippets/blob/f5651613ea5db9c2e50a2f4df8f27c64c07755db/snippets/basics/finding-shadow-dom-elements.html):
  The JavaScript version of this example

