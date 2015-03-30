@HtmlImport('my_element.html')
library web.control_flow.getting_the_iteration_index_when_looping_over_a_collection;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> fruits = toObservable(
      ['apple', 'banana', 'fig', 'kiwi', 'guava']);
  MyElement.created() : super.created() {}
}
