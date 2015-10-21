@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  final List<String> colors = ['red', 'green', 'blue'];
  int _index = 0;

  MyElement.created() : super.created();

  @reflectable
  void changeColor([_, __]) {
    // Cycle through this.colors.
    this.style.color = this.colors[_index++ % colors.length];
  }
}
