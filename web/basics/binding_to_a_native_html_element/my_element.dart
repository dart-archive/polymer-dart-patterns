@HtmlImport('my_element.html')
library web.basics.binding_to_a_native_html_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable var val = 10;

  MyElement.created() : super.created();
}
