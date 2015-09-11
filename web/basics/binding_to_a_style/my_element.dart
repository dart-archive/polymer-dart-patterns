@HtmlImport('my_element.html')
library web.basics.binding_to_a_style;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  String color = 'red';

  @Property(computed: 'computeStyle(color)')
  String colorStyle;

  MyElement.created() : super.created();

  @eventHandler
  String computeStyle(color) => 'color: $color';

  @eventHandler
  toggleColor() {
    color = color == 'red' ? 'green' : 'red';
    this.notifyPath('color', color);
  }
}
