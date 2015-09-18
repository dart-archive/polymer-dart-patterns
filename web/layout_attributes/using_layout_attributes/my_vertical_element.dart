@HtmlImport('my_vertical_element.html')
library my_vertical_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_styles.dart';

/// Silence analyzer [JsArray]
@jsProxyReflectable
@PolymerRegister('my-vertical-element')
class MyVerticalElement extends PolymerElement {
  MyVerticalElement.created() : super.created();
}
