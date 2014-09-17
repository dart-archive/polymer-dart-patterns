library web.binding_a_boolean_field_to_a_checkbox.my_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable bool checked = false;
  MyElement.created() : super.created();
}
