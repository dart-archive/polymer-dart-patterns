@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

class Item extends JsProxy {
  @reflectable String color;
  @reflectable bool checked;
  Item(this.color, this.checked);
}

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();

  @property final List<Item> items = [
    new Item('red', false),
    new Item('green', true),
    new Item('blue', false)
  ];

  @reflectable
  bool filterSelected(Item item) => item.checked;
}
