library web.inheritance.extending_a_polymer_element.elements;

import 'package:polymer/polymer.dart';

@CustomTag('extendee-element')
class ExtendeeElement extends PolymerElement {
  @observable String color = "red";
  ExtendeeElement.created() : super.created();
}

@CustomTag('extender-element')
class ExtenderElement extends ExtendeeElement {
  @observable String color = "green";
  @observable String name = "Jacob";
  ExtenderElement.created() : super.created();
}
