library web.forms.selecting_one_item_using_radio_buttons;

import 'dart:html' show Event, InputElement, Node;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> colors = toObservable(['red', 'green', 'blue']);
  @observable String selectedColor = '';

  MyElement.created() : super.created();

  void updateSelectedColor(Event e, Object detail, Node sender) {
    selectedColor = (e.target as InputElement).value;
  }
}
