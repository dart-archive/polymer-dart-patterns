import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String color = 'red';

  MyElement.created() : super.created();

  void toggleColor() {
    color = color == 'red' ? 'green' : 'red';
  }
}
