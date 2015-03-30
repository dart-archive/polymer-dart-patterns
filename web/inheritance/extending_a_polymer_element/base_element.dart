library web.inheritance.extending_a_polymer_element.base_element;

import 'package:polymer/polymer.dart';

@CustomTag('base-element')
class BaseElement extends PolymerElement {
  @observable String color = "red";
  BaseElement.created() : super.created();
}
