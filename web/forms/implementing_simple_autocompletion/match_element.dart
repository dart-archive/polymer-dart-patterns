@HtmlImport('match_element.html')
library web.forms.implementing_simple_autocompletion_match;

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('match-element')
class MatchElement extends PolymerElement {

  /// Candidate string.
  ///
  /// The matching string which we want to display highlighted.
  @published String value;

  /// Input query.
  ///
  /// The query whose first match in `value` we want to display highlighted.
  @published String inputQuery;

  NodeValidator nodeValidator;

  MatchElement.created() : super.created() {
    nodeValidator = new NodeValidatorBuilder()
      ..allowTextElements()
      ..allowElement('strong');
  }

  void valueChanged(String old) {
    injectBoundHtml(highlightedValue, element: $['container'], validator: nodeValidator);
  }

  /// Highlight the match of `inputQuery` in value.
  String get highlightedValue {
    if (inputQuery.isEmpty) {
      return value;
    }
    String query = inputQuery.toLowerCase();
    String text = value.toLowerCase();
    int idx = text.indexOf(query);
    if (idx == -1) {
      return value; // This cannot happen.

    }
    String prefix = value.substring(0, idx);
    String matched = value.substring(idx, idx + query.length);
    String postfix = value.substring(idx + query.length);
    return "${prefix}<strong>${matched}</strong>${postfix}";
  }
}
