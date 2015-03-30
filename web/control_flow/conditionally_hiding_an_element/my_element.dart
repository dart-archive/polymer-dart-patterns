@HtmlImport('my_element.html')
library web.control_flow.conditionally_hiding_an_element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable bool shortView = true;
  void toggleView() {
    this.shortView = !this.shortView;
  }
  MyElement.created() : super.created();
}
