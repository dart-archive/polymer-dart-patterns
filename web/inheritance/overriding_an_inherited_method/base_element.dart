@HtmlImport('base_element.html')
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
