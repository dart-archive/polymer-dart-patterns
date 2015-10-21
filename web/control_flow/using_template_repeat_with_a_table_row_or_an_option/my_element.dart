@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

// TODO(zoechi) not supported in Polymer 1
@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<String> fruits = ['orange', 'strawberry', 'banana'];

  MyElement.created() : super.created() {}
}
