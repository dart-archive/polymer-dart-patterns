# Creating insertion points using the select attribute

Shows how to use the `select` attribute with a CSS selector to choose which
nodes get distributed at an insertion point.


## The code

* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/insertion_points/creating_insertion_points_using_the_select_attribute/my_element.html):
The HTML for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/insertion_points/creating_insertion_points_using_the_select_attribute/index.html):
An HTML file that uses `<my-element>`


## How it works

A `<content>` tag with no `select` attribute permits the insertion of any type
of distributed node.  Use the `select` attribute to allow the insertion of only
the nodes that match a CSS selector.

Consider the following use of `<content>` tags in `<my-element>`:

    <template>
      <content select="h2"></content>
      <content select=".crucial"></content>
      <content select="child-el"></content>
      <content></content>
    </template>

The first `<content>` allows insertion of only `<h2>` elements. The second
`<content>` allows insertion of any element that has the class "crucial".
The third `<content>` allows insertion of another Polymer element,
`<child-el>`. The `<content>` tag without a `select` inserts any remaining
nodes.

The `index.html` file uses `<my-element>` like this:

    <my-element>
      <p>A distributed node</p>
      <p class="crucial">An important para</p>
      <h2>A headline</h2>
      <child-el></child-el>
    </my-element>

That code generates the following composed tree:

    <h2>A headline</h2>
    <p class="crucial">An important para</p>
    <child-el></child-el>
    <p>A distributed node</p>

Note that the order of the rendered nodes in the composed tree is determined
by the order of the `<content>` tags in the _element definition_, not by the
order in which the child nodes are passed to the element.

## More information

* [creating-insertion-points-using-the-select-attribute.html](https://github.com/PolymerLabs/polymer-snippets/blob/ddc5b8bbe217cf1d8e567c41e33f017ad5350fd0/snippets/insertion-points/creating-insertion-points-using-the-select-attribute.html):
The JavaScript version of this sample
* [Satisfying Matching Criteria](http://w3c.github.io/webcomponents/spec/shadow/#satisfying-matching-criteria) (in the Shadow DOM specification):
CSS selectors that you can use with the `select` tag
