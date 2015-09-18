@HtmlImport('my_element.html')
library polymer_dart_patterns.web.layout_attributes.nesting_flex_layouts.app_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_styles.dart';

/// Silence analyzer [JsArray]
@jsProxyReflectable
@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();
}
