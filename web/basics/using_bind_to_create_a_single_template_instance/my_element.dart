@HtmlImport('my_element.html')
library my_element;

// TODO(zoechi) <template id="dom-bind"> should not be used inside a Polymer element
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

class Name extends JsProxy {
  String first, last;
  Name(this.first, this.last);
}

class Company extends JsProxy {
  String name;
  Company(this.name);
}

class Person extends JsProxy {
  Name name;
  String title;
  Company company;
  Person(this.name, this.title, this.company);
}

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property Person person = new Person(new Name('Kathy', 'Walrath'),
      'Writer Extraordinaire', new Company('Google'));

  MyElement.created() : super.created();
}
