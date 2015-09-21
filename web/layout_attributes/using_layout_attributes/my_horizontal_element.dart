@HtmlImport('my_horizontal_element.html')
library my_horizontal_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/iron_flex_layout.dart';

@PolymerRegister('my-horizontal-element')
class MyHorizontalElement extends PolymerElement {
  MyHorizontalElement.created() : super.created();
}
