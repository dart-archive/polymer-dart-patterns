@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property String color = 'red';

  @eventHandler
  String colorStyle(String color) => 'color: ${color};';

  MyElement.created() : super.created();

  @eventHandler
  void toggleColor([_, __]) {
    set('color', color == 'red' ? 'green' : 'red');
  }
}
