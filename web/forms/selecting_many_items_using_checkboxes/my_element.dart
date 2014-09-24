library web.forms.selecting_many_elements_using_checkboxes;

import 'package:polymer/polymer.dart';

class Item {
  String color;
  bool checked;
  Item(this.color, this.checked);
}

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<Item> items = toObservable([
    new Item('red', false),
    new Item('green', true),
    new Item('blue', false)
  ]);

  @observable List<String> selectedColors = toObservable([]);

  void updateSelectedColors() {
    selectedColors = items.where((item) => item.checked).map(
        (item) => item.color).toList();
  }

  MyElement.created() : super.created() {
    updateSelectedColors();
  }
}
