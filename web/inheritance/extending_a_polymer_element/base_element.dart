@HtmlImport('base_element.html')
library my_element;

import 'package:polymer/polymer.dart';

@CustomTag('base-element')
class BaseElement extends PolymerElement {
  @observable String color = "red";
  BaseElement.created() : super.created();
}
