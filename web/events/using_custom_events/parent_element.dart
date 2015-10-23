@HtmlImport('parent_element.html')
library parent_element;

import 'dart:html' show Event, Node;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'child_element.dart';

/// Silence analyzer [ChildElement]
@PolymerRegister('parent-element')
class ParentElement extends PolymerElement {
  @property String message = '';

  ParentElement.created() : super.created();

  @reflectable
  void heard(Event e, var detail) {
    set('message', 'heard: ' + detail['message']);
  }
}
