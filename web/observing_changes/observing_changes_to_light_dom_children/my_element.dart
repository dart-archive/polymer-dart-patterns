@HtmlImport('my_element.html')
library my_element;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  int _counter = 1;

  @property String message = '';

  Object observe;

  MyElement.created() : super.created();

  void attached() {
    observe = new PolymerDom($['content']).observeNodes(_childrenUpdated);
  }

  void detached() {
    new PolymerDom($['content']).unobserveNodes(observe);
  }

  void _childrenUpdated(PolymerDomMutation mutations) {
    set(
        'message',
        "New <div> with text '${mutations.addedNodes[0].text}'"
        " added to light DOM.");
  }

  @reflectable
  void addDivToLightDom([Event e, _]) {
    new PolymerDom(this)
        .append(new DivElement()..text = "I am new (${_counter++})");
  }
}
