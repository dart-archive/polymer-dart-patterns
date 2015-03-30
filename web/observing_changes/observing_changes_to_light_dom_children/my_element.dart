@HtmlImport('my_element.html')
library web.observing_changes.observing_changes_to_light_dom_children;

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';

  MyElement.created() : super.created() {
    onMutation(this).then(childrenUpdated);
  }

  void childrenUpdated(List mutations) {
    message = "New <div> with "
        "text '${mutations[0].addedNodes[0].text}'"
        " added to light DOM.";
    // Monitor again.
    onMutation(this).then(childrenUpdated);
  }

  void addDivToLightDom(Event e) {
    this.children.add(new DivElement()..text = "I am new");
  }
}
