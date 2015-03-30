@HtmlImport('child_element.html')
library web.events.using_custom_events.child_element;

import 'dart:html' show Event, Node;

import 'package:polymer/polymer.dart';

@CustomTag('child-element')
class ChildElement extends PolymerElement {
  ChildElement.created() : super.created();
  void fireEvent(Event e, var detail, Node sender) {
    fire('spoken', detail: {'message': this.$['myInput'].value});
  }
}
