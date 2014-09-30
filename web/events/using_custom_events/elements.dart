library web.events.using_custom_events.elements;

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

@CustomTag('child-element')
class ChildElement extends PolymerElement {
  ChildElement.created() : super.created();
  void fireEvent(Event e, var detail, Node sender) {
    fire('spoken', detail: {'message': this.$['myInput'].value});
  }
}
