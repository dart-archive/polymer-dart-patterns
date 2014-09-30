library web.basics.dynamically_adding_a_polymer_element_to_the_dom.main;

import 'dart:html';

export 'package:polymer/init.dart';

void main() {
   document.body.children.add(new Element.tag('my-element')
       ..attributes['id'] = 'my-element-id'
       ..attributes['greeting'] = 'Hello, good morning');
}