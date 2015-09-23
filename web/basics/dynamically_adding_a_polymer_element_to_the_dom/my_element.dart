@HtmlImport('my_element.html')
library my_element;

import 'dart:html' show Element;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  String _greeting;
  @property String get greeting => _greeting;
  set greeting(String value) => set('greeting', value);

  MyElement.created() : super.created();

  factory MyElement() => new Element.tag('my-element');
}
