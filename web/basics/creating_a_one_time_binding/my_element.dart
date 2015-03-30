@HtmlImport('my_element.html')
library web.basics.creating_a_one_time_binding;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String color = 'red';

  MyElement.created() : super.created();
}
