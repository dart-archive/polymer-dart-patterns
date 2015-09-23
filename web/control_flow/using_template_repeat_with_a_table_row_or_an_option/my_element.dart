@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property /*final*/ List<String> fruits = ['orange', 'strawberry', 'banana'];

  MyElement.created() : super.created() {}
}
