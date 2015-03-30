@HtmlImport('my_element.html')
library web.control_flow.using_conditional_templates;

import 'dart:html' show Event, Node;
import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable bool showAnswer = false;

  void toggleView(Event e, var detail, Node sender) {
    this.showAnswer = !this.showAnswer;
  }

  MyElement.created() : super.created();
}
