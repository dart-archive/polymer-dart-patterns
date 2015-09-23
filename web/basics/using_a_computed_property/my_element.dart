@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property String firstName = 'Seth';
  @property String lastName = 'Ladd';

  // TODO(zoechi) computed property throws on page load
  @Property(computed: 'computeFullName(firstName, lastName')
  String fullName = '';

  MyElement.created() : super.created();

  @eventHandler
  String computeFullName(String firstName, String lastName) =>
      '$firstName $lastName';
}
