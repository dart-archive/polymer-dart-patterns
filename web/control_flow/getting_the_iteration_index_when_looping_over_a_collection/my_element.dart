@HtmlImport('my_element.html')
library my_element;

import 'dart:html' as dom;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<String> fruits = [
    'apple',
    'banana',
    'fig',
    'kiwi',
    'guava'
  ];
  MyElement.created() : super.created() {}

  @property int selectedIndex;

  @reflectable
  int addOne(int value) => value + 1;

  @reflectable
  void clickHandler(dom.Event event, [_]) {
    set('selectedIndex',
        new DomRepeatModel.fromEvent(event).jsElement['index'] + 1);
  }
}
