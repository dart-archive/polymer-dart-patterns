library web.inheritance.overriding_an_inherited_method;

import 'package:polymer/polymer.dart';
import 'base_element.dart';

@CustomTag('sub-element')
class SubElement extends BaseElement {
  void setMessage() {
    super.setMessage();
    this.message += ', but I love Lucy.';
  }
  SubElement.created() : super.created();
}
