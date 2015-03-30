@HtmlImport('my_element.html')
library web.watching_for_changes_to_a_nested_objects;

import 'dart:html';

import 'package:observe/observe.dart';
import 'package:polymer/polymer.dart';

class Thing extends Observable {
  @observable String color;
  Thing(this.color);
}

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';
  @observable Thing thing = new Thing('red');

  MyElement.created() : super.created();

  @ObserveProperty('thing.color')
  colorObserver(oldValue, newValue) {
    message = 'Color changed from $oldValue to $newValue';
  }

  void changeColor(Event e) {
    thing.color = thing.color == 'red' ? 'green' : 'red';
  }
}
