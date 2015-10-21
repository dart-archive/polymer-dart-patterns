@HtmlImport('sub_element.html')
library my_element;

import 'package:polymer/polymer.dart';
import 'base_element.dart';

@CustomTag('sub-element')
class SubElement extends BaseElement {
  @observable String color = "green";
  @observable String name = "Jacob";
  SubElement.created() : super.created();
}
