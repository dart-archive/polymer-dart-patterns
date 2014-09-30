library web.inheritance.extending_a_polymer_element.elements;

import 'package:polymer/polymer.dart';

@CustomTag('base-element')
class BaseElement extends PolymerElement {
  @observable String color = "red";
  BaseElement.created() : super.created();
}

@CustomTag('sub-element')
class SubElement extends BaseElement {
  @observable String color = "green";
  @observable String name = "Jacob";
  SubElement.created() : super.created();
}
