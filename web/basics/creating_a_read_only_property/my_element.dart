@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  String _readonlyColor;
  @property String get readonlyColor => _readonlyColor ??= color;
  @property String color = 'red';

  MyElement.created() : super.created();
}
