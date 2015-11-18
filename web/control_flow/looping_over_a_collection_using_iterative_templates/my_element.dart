@HtmlImport('my_element.html')
library my_element;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<String> fruits = [
    'apple',
    'banana',
    'fig',
    'kiwi',
    'guava'
  ];

  MyElement.created() : super.created();
}
