library web.inheritance.extending_a_polymer_element.sub_element;

import 'package:polymer/polymer.dart';
import 'base_element.dart';

@CustomTag('sub-element')
class SubElement extends BaseElement {
  @observable String color = "green";
  @observable String name = "Jacob";
  SubElement.created() : super.created();
}
