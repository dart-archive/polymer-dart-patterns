@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();
  @property String firstName = 'Seth';
  @property String lastName = 'Ladd';

  @Property(computed: 'computeFullName(firstName,lastName)')
  String fullName = '';

  @reflectable
  String computeFullName(String firstName, String lastName) =>
      '$firstName $lastName';
}
