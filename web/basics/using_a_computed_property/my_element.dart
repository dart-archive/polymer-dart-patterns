library example.basics.binding_to_a_field.my_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String firstName = 'Seth';
  @observable String lastName = 'Ladd';

  MyElement.created() : super.created();

  @ComputedProperty('firstName + " " + lastName')
  String get fullName => readValue(#fullName);
}
