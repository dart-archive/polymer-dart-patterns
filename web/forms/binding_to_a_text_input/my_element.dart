@HtmlImport('my_element.html')
library web.binding_to_a_text_input.my_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';
  MyElement.created() : super.created();
}
