@HtmlImport('match_element.html')
library match_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('match-element')
class MatchElement extends PolymerElement {
  /// Candidate string.
  /// The matching string which we want to display highlighted.
  @property String value;

  /// Input query.
  /// The query whose first match in `value` we want to display highlighted.
  @property String inputQuery = '';

  MatchElement.created() : super.created();

  @Observe('value, inputQuery')
  valueChanged(_, __) => new PolymerDom(root).innerHtml = highlightedValue;

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
    return "$prefix<strong>$matched</strong>$postfix";
  }
}
