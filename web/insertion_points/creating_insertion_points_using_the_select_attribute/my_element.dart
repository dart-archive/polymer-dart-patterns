@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'child_element.dart';

// Silence analyzer [ChildElement]
@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();
}
