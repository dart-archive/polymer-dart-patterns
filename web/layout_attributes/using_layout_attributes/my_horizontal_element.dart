@HtmlImport('my_horizontal_element.html')
library my_horizontal_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_styles.dart';

/// Silence analyzer [JsArray]
@jsProxyReflectable
@PolymerRegister('my-horizontal-element')
class MyHorizontalElement extends PolymerElement {
  MyHorizontalElement.created() : super.created();
}
