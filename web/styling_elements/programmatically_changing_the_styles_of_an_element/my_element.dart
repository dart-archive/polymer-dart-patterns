library web.observing_changes.observing_changes_to_element_fields;

import 'dart:html' show Event, Node;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> colors = toObservable(['red', 'green', 'blue']);
  int index = 0;

  MyElement.created() : super.created();

  void changeColor(Event e, Object detail, Node sender) {
    // Cycle through this.colors.
    this.style.color = this.colors[index++ % colors.length];
  }
}