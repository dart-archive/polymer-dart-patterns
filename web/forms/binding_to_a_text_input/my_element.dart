library example.basics.binding_to_a_field.my_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';
  MyElement.created() : super.created();
}
