library web.basics.using_a_computed_property;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String firstName = 'Seth';
  @observable String lastName = 'Ladd';

  MyElement.created() : super.created();

  @ComputedProperty('firstName + " " + lastName')
  String get fullName => readValue(#fullName);
}
