library web.events.using_custom_events.parent_element;

import 'dart:html' show Event, Node;

import 'package:polymer/polymer.dart';

@CustomTag('parent-element')
class ParentElement extends PolymerElement {
  @observable String message = '';
  ParentElement.created() : super.created();
  void heard(Event e, var detail, Node sender) {
    message = 'heard: ' + detail['message'];
  }
}
