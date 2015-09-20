@HtmlImport('my_element.html')
library web.basics.using_a_computed_property;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  String firstName = 'Seth';

  @property
  String lastName = 'Ladd';

  @Property(computed: 'computeFullName(firstName, lastName)')
  String fullName;

  @eventHandler
  String computeFullName(String firstName, String lastName) => '$firstName $lastName';
  MyElement.created() : super.created();
}
