@HtmlImport('my_element.html')
library my_element;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

class Thing extends JsProxy {
  @reflectable String color;
  Thing(this.color);
}

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property String message = '';
  @property Thing thing = new Thing('red');

  MyElement.created() : super.created();

  String _oldColor;

  @Observe('thing.color')
  void colorObserver(newValue) {
    set('message', 'Color changed from $_oldColor to $newValue');
    _oldColor = newValue;
  }

  @reflectable
  void changeColor(Event e, [_]) {
    set('thing.color', thing.color == 'red' ? 'green' : 'red');
  }
}
