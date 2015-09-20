@HtmlImport('my_element.html')
library web.control_flow.getting_the_iteration_index_when_looping_over_a_collection;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'dart:js';


@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  JsArray fruits = new JsArray.from(['apple', 'banana', 'fig', 'kiwi', 'guava']);
  MyElement.created() : super.created();
}
