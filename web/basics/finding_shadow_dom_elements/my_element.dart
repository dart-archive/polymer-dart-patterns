library example.basics.binding_to_a_field.my_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {

  MyElement.created() : super.created();

  void findNodes() {
    this.$['myDiv'].querySelector('p').text = 'New content';
  }
}
