library web.control_flow.using_template_repeat_with_a_table_row_or_an_option;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> fruits = toObservable(
      ['orange', 'strawberry', 'banana']);

  MyElement.created() : super.created() {}
}
