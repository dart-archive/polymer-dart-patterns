@HtmlImport('my_element.html')
library web.basics.binding_to_a_complex_object;

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

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

class Foo extends JsProxy {
  String bar;
  Foo(this.bar);
}

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property
  Person person;
  MyElement.created() : super.created() {
    person = new Person(new Name('Kathy', 'Walrath'), 'Writer Extraordinaire',
        new Company('Google'));
    this.notifyPath('person.name.first', person.name.first);
    this.notifyPath('person.name.last', person.name.last);
    this.notifyPath('person.title', person.title);
    this.notifyPath('person.company.name', person.company.name);
  }
}
