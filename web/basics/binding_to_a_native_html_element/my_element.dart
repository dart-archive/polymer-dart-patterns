@HtmlImport('my_element.html')
library web.basics.binding_to_a_native_html_element;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  var val = 10;
  MyElement.created() : super.created();
}
