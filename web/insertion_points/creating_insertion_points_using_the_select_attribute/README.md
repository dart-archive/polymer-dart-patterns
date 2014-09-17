# Creating insertion points using the select attribute

Shows use of the `select` attribute with a CSS selector to chose which nodes
get distributed at an insertion point.

A `<content>` tag with no `select` attribute permits the insertion of any type
of distributed node.  Use the `select` attribute to only allow the insertion of
nodes that match a CSS selector.

Consider the following use of `<content>` tags in this snippet:

    <template>
      <content select="h2"></content>
      <content select=".crucial"></content>
      <content select="child-el"></content>
      <content></content>
    </template>

The first `<content>` allows insertion of only `<h2>` elements. The second
`<content>` allows insertion of any element with a class attribute of
'crucial'. The third `<content>` allows insertion of another Polymer
element, `<child-el>`. The `<content>` tag without a `select` inserts the
`<p>A distributed node</p>` node.

You can use `<my-element>` like this:

    <my-element>
      <p>A distributed node</p>
      <p class="crucial">An important para</p>
      <h2>A headline</h2>
      <child-el></child-el>
    </my-element>

This generates the following composed tree:

      <h2>A headline</h2>
      <p class="crucial">An important para</p>
      <child-el></child-el>
      <p>A distributed node</p>

Note that the order of the rendered nodes in the composed tree is determined
by the order of the `<content>` tags in the _element definition_, not the order
in which the child nodes are passed to the element.

Read about the
[CSS selectors that you can use with the `select` tag](http://w3c.github.io/webcomponents/spec/shadow/#satisfying-matching-criteria).

[jsbin](http://jsbin.com/vumum/edit)

Ports https://github.com/PolymerLabs/polymer-snippets/blob/ddc5b8bbe217cf1d8e567c41e33f017ad5350fd0/tests/creating-insertion-points-using-the-select-attribute.html