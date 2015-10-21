@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

class Name extends JsProxy {
  @reflectable String first;
  @reflectable String last;
  Name(this.first, this.last);
}

class Company extends JsProxy {
  @reflectable String name;
  Company(this.name);
}

class Person extends JsProxy {
  @reflectable Name name;
  @reflectable String title;
  @reflectable Company company;
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
