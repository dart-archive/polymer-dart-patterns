@HtmlImport('my_element.html')
library web.basics.dynamically_adding_a_polymer_element_to_the_dom.main;

import 'dart:html';
import 'package:polymer/polymer.dart';
export 'package:polymer/init.dart';

@initMethod
void startup() {
  Polymer.onReady.then((_) {
    document.body.children.add(new Element.tag('my-element')
      ..attributes['id'] = 'my-element-id'
      ..attributes['greeting'] = 'Hello, good morning');
  });
}
