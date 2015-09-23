@HtmlImport('my_element.html')
library my_element;

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
  @property Person person;

  MyElement.created() : super.created();

  ready() {
    set(
        'person',
        new Person(new Name('Kathy', 'Walrath'), 'Writer Extraordinaire',
            new Company('Google')));
  }
}
