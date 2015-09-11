@HtmlImport('my_element.html')
library web.basics.binding_to_a_map;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'dart:js';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  JsObject person;
  MyElement.created() : super.created() {
    person = new JsObject.jsify({
      'name': {'first': 'Kathy', 'last': 'Walrath'},
      'title': 'Writer Extraordinaire',
      'company': {'name': 'Google'}
    });
    this.notifyPath('person', person);
  }
}
