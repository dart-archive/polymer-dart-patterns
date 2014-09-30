# Polymer Snippets

Small, useful, snippets/samples that show how to do things the Polymer way.

Port of polymer.js snippets in
[https://github.com/PolymerLabs/polymer-snippets](https://github.com/PolymerLabs/polymer-snippets).

## Repo structure

All snippets go in `web/`.

Each snippet should have its own directory. Here is a typical list of files for
a snippet:

- `my_element.html`: the HTML for `<my_element>`
- `my_element.dart`: the Dart code for `<my_element>`
- `index.html`: the entry point for the snippet. Imports `<my-element>`.
- `README.md`: the documentation for the snippet. This should mirror the
documentation in the original as much as possible.

Unless there is a compelling reason to do so, name your element `<my_element>`.

Be sure to add the snippet to the `entry_points` list in `pubspec.yaml`.

## Keeping track of upstream commits

When porting a `polymer.js` snippet, be sure to reference the original, and
include the commit ID. For example:

    Ports https://github.com/PolymerLabs/polymer-snippets/blob/ca250355c6d4076f16353fb386c07ca106d6fc4e/snippets/forms/binding-to-a-text-input.html

See https://help.github.com/articles/getting-permanent-links-to-files#press-y-to-permalink-to-a-file-in-a-specific-commit
for details on how to get a link to the commit ID.

## Making your snippets Dart-y

All snippets should follow the [Dart Style Guide](https://www.dartlang.org/articles/style-guide/).

Before creating a pull request, please run the sample in Dart Editor, ensuring
that it runs in both JS and Dartium without errors or warnings.

## Contents

### Basics
- [Binding to a field](web/basics/binding_to_a_field/)
- [Binding to a complex object](web/basics/binding_to_a_complex_object/)
- [Binding to a map](web/basics/binding_to_a_map/)
- [Binding to a native HTML element](web/basics/binding_to_a_native_html_element/)
- [Binding to a style](web/basics/binding_to_a_style/)
- [Using 'bind' to create a single template instance](web/basics/using_bind_to_create_a_single_template_instance/)
- [Dynamically adding a Polymer element to the DOM](web/basics/dynamically_adding_a_polymer_element_to_the_dom/)
- [Finding Shadow DOM elements](web/basics/finding_shadow_dom_elements/)
- [Using a computed property](web/basics/using_a_computed_property/)
- [Creating a one_time binding](web/basics/creating_a_one_time_binding/)

### Control flow

- [Conditionally hiding an element](web/control_flow/conditionally_hiding_an_element/)
- [Getting the iteration index when looping over a collection](web/control_flow/getting_the_iteration_index_when_looping_over_a_collection/)
- [Looping over a collection using iterative templates](web/control_flow/looping_over_a_collection_using_iterative_templates/)
- [Using conditional templates](web/control_flow/using_conditional_templates/)
- [Using template repeat with a table row or an option](web/control_flow/using_template_repeat_with_a_table_row_or_an_option/)

### Inheritance

- [Extending a Polymer element](web/inheritance/extending_a_polymer_element/)
- [Overriding an inherited method](web/inheritance/overriding_an_inherited_method/)

### Insertion points

- [Creating an insertion point using the content tag](web/insertion_points/creating_an_insertion_point_using_the_content_tag/)
- [Creating insertions using the select attribute](web/insertion_points/creating_insertion_points_using_the_select_attribute/)
- [Accessing the DOM inside a content tag](web/insertion_points/accessing_the_dom_inside_a_content_tag/)
- [Retrieving the insertion points for distributed nodes](web/insertion_points/retrieving_the_insertion_points_for_distributed_nodes/)

### Observing changes

- [Observing changes to element fields](web/observing_changes/observing_changes_to_element_fields/)
- [Observing changes to light DOM children](web/observing_changes/observing_changes_to_light_dom_children/)
- [Watching for changes to a nested objects](web/observing_changes/watching_for_changes_to_a_nested_object/)

### Forms

- [Binding a boolean field to a checkbox](web/forms/binding_a_boolean_field_to_a_checkbox/)
- [Binding to a text input](web/forms/binding_to_a_text_input/)
- [Binding to a textarea](web/forms/binding_to_a_textarea/)
- [Selecting one item using radio buttons](web/forms/selecting_one_item_using_radio_buttons/)
- [Selecting many items using checkboxes](web/forms/selecting_many_items_using_checkboxes/)
- [Implementing simple validation](web/forms/implementing_simple_validation/)

### Events

- [Using custom events](web/events/using_custom_events//)

### Styling elements

- [Applying styles by piercing Shadow DOM boundaries](web/styling_elements/applying_styles_by_piercing_shadow_dom_boundaries/)
- [Defining styles inside a Polymer element](web/styling_elements/defining_styles_inside_a_polymer_element/)
- [Programatically changing the styles of an element](web/styling_elements/programmatically_changing_the_styles_of_an_element/)
- [Styling distributed nodes](web/styling_elements/styling_distributed_nodes/)
- [Using host-context to theme an element](web/styling_elements/using_host_context_to_theme_an_element/)
- [Using :host with a CSS selector](web/styling_elements/using_host_with_a_css_selector/)
- [Using :host with pseudo classes](web/styling_elements/using_host_with_pseudo_classes/)

### Layout attributes

- [Using layout attributes](web/layout_attributes/using_layout_attributes/)
- [Using flex](web/layout_attributes/using_flex/)
- [Nesting flex layouts](web/layout_attributes/nesting_flex_layouts/)

### Core elements

Samples using
[Polymer core elements](http://www.polymer-project.org/docs/elements/core-elements.html).

#### Core toolbar

- [Using core-toolbar](web/core_elements/core_toolbar/using_core_toolbar/)
- [Adding a menu button](web/core_elements/core_toolbar/adding_a_menu_button/)
- [Adding button rows](web/core_elements/core_toolbar/adding_button_rows/)
- [Changing toolbar size](web/core_elements/changing_the_toolbar_size/)

