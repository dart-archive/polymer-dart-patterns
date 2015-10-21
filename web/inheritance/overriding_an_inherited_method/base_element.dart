@HtmlImport('base_element.html')
library base_element;

import 'package:polymer/polymer.dart';

@CustomTag('base-element')
class BaseElement extends PolymerElement {
  @published String message;
  BaseElement.created() : super.created();
  void setMessage() {
    message = 'I like Ike';
  }
}
