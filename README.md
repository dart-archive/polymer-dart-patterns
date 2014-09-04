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
- `index.html`: the entry point for the snippet. Import `<my-element>`.
- `README.md`: the documentation for the snippet. This should mirror the
documentation in the original as much as possible.

Unless there is a compelling reason to do so, name your element `<my_element>`.

Be sure to add the snippet to the `entry_points` list in `pubspec.yaml`.

## Keeping track of upstream commits

When porting a `polymer.js` snippet, be sure to reference the original, and
include the commit ID. For example:

    Ports https://github.com/PolymerLabs/polymer-snippets/blob/ca250355c6d4076f16353fb386c07ca106d6fc4e/snippets/forms/binding-to-a-text-input.html

See https://help.github.com/articles/getting-permanent-links-to-files#press-y-to-permalink-to-a-file-in-a-specific-commit
for details on how to get a link to with the commit ID.

## Making your snippets Dart-y

All snippets should follow the [Dart Style Guide](https://www.dartlang.org/articles/style-guide/).

Before creating a pull request, please run the sample in Dart Editor, ensuring
that it runs in both JS and Dartium without errors or warnings.

