@HtmlImport('my_element.html')
library web.basics.binding_to_a_field;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();

  @eventHandler
  findNodes() {
    this.$['myDiv'].querySelector('p').text = 'New content';
  }
}
