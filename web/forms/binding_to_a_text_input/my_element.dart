@HtmlImport('my_element.html')
library web.binding_to_a_text_input.my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property String message = '';
  MyElement.created() : super.created();
}
