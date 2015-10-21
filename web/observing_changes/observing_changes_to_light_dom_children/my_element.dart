@HtmlImport('my_element.html')
library my_element;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  int _counter = 1;

  @property String message = '';

  MutationObserver observer;
  MyElement.created() : super.created();

  ready() {
    // onMutation callback isn't supported in Polymer 1.0 anymore
    observer = new MutationObserver((mutations, _) {
      _childrenUpdated(mutations);
    });
    observer.observe(this, childList: true, subtree: true);
  }

  void _childrenUpdated(List mutations) {
    set(
        'message',
        "New <div> with text '${mutations[0].addedNodes[0].text}'"
        " added to light DOM.");
//    observer.observe(this, childList: true, subtree: true);
  }

  @reflectable
  void addDivToLightDom([Event e, _]) {
    Polymer
        .dom(this)
        .append(new DivElement()..text = "I am new (${_counter++})");
  }
}
