library web.inheritance.overriding_an_inherited_method;

import 'package:polymer/polymer.dart';

@CustomTag('base-element')
class BaseElement extends PolymerElement {
  @published String message;
  BaseElement.created() : super.created();
  void setMessage() {
    message = 'I like Ike';
  }
}

@CustomTag('sub-element')
class SubElement extends BaseElement {
  void setMessage() {
    super.setMessage();
    this.message += ', but I love Lucy.';
  }
  SubElement.created() : super.created();
}
