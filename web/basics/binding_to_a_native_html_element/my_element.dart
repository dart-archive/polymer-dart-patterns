import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable var val = 10;

  MyElement.created() : super.created();
}
