@HtmlImport('my_element.html')
library my_element;

import 'dart:html' show Event, Node;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property String message = '';
  @Property(observer: 'colorChanged') String color = 'red';

  MyElement.created() : super.created();

  @eventHandler
  void colorChanged(String newValue, String oldValue) {
    set('message', 'Color changed from $oldValue to $newValue');
  }

  @eventHandler
  toggleColor(Event e, Object detail) {
    set('color', color == 'red' ? 'green' : 'red');
  }
}
