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

  @property List<String> selectedColors = [];

  @Observe('items.*')
  void updateSelectedColors(Map record, [_]) {
    String path = record['path'];
    if (path == 'items' || path.endsWith('.checked')) {
      set(
          'selectedColors',
          items
              .where((item) => item.checked)
              .map((item) => item.color)
              .toList());
    }
  }
}
