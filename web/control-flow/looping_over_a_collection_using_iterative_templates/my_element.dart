library web.control_flow.looping_over_a_collection_using_iterative_templates;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> fruits = toObservable(
      ['apple', 'banana', 'fig', 'kiwi', 'guava']);

  MyElement.created() : super.created() {}
}
