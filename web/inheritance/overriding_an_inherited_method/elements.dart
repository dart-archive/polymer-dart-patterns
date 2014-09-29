library web.inheritance.overriding_an_inherited_method;

import 'package:polymer/polymer.dart';

@CustomTag('extendee-element')
class ExtendeeElement extends PolymerElement {
  @published String message;
  ExtendeeElement.created() : super.created();
  void setMessage() {
    message = 'I like Ike';
  }
}

@CustomTag('extender-element')
class ExtenderElement extends ExtendeeElement {
  void setMessage() {
    super.setMessage();
    this.message += ', but I love Lucy.';
  }
  ExtenderElement.created() : super.created();
}
