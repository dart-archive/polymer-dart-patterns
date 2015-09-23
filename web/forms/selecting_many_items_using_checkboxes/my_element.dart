@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

class Item extends JsProxy {
  String color;
  bool checked;
  Item(this.color, this.checked);
}

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<Item> items = [
    new Item('red', false),
    new Item('green', true),
    new Item('blue', false)
  ];

  @Property(notify: true) List<String> selectedColors = [];

  @eventHandler
  void updateSelectedColors([_, __]) {
    set('selectedColors',
        items.where((item) => item.checked).map((item) => item.color).toList());
  }

  MyElement.created() : super.created() {
    updateSelectedColors();
  }
}
