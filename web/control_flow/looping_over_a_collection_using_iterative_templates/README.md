# Looping over a collection using iterative templates

Shows iterating over a list of items using **template repeat**.

## The code

* [my_element.dart](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/looping_over_a_collection_using_iterative_templates/my_element.dart): 
  The Dart code for `<my-element>`
* [my_element.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/looping_over_a_collection_using_iterative_templates/my_element.html): 
  The HTML code for `<my-element>`
* [index.html](https://github.com/dart-lang/polymer-dart-snippets/blob/master/web/control_flow/looping_over_a_collection_using_iterative_templates/index.html):
  An HTML file that uses `<my-element>`

## How it works

The MyElement class (`my_element.dart`) defines a list of fruits:

    @property final List<String> fruits = 
        ['apple', 'banana', 'fig', 'kiwi', 'guava'];

In the template code (`my_element.html`), `template repeat` iterates
over the list of fruit, rendering each with a template:

    <template is="dom-repeat" items="{{fruits}}">
        <div>{{item}}</div>
    </template>

or 

    <template is="dom-repeat" items="{{fruits}}" as="fruit">
        <div>{{fruit}}</div>
    </template>

## More information

* [looping_over_a_collection_using_iterative_templates](https://github.com/PolymerLabs/polymer-snippets/blob/e2961966bf294374d99df4ddaba296f45af7bd38/snippets/control-flow/looping-over-a-collection-using-iterative-templates.html):
  The JavaScript version of this example

