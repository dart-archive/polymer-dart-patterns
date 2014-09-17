library web.insertion_points.retrieving_the_insertion_points_for_distributed_nodes;

import 'dart:html' show Event, Node;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';
  @observable String color = 'red';

  MyElement.created() : super.created();

  void colorChanged(String oldValue, String newValue) {
    message = 'Color changed from $oldValue to $newValue';
  }

  toggleColor(Event e, Object detail, Node sender) {
    color = color == 'red' ? 'green' : 'red';
  }
}