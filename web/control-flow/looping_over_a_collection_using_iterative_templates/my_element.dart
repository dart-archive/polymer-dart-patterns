import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable List<String> fruits;

  MyElement.created() : super.created() {
    fruits = toObservable(['apple', 'banana', 'fig', 'kiwi', 'guava']);
  }
}
