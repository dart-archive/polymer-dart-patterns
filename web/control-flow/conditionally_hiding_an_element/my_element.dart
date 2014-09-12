import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable bool shortView = true;
  void toggleView() {
    this.shortView = !this.shortView;
  }
  MyElement.created() : super.created();
}
