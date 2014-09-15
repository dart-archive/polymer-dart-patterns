library web.basics.binding_to_a_complex_object;

import 'package:polymer/polymer.dart';

class Name {
  String first, last;
  Name(this.first, this.last);
}

class Company {
  String name;
  Company(this.name);
}

class Person {
  Name name;
  String title;
  Company company;
  Person(this.name, this.title, this.company);
}

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable Person person;
  MyElement.created() : super.created() {
    person = new Person(
        new Name('Kathy','Walrath'),
        'Writer Extraordinaire',
        new Company('Google')
    );
  }
}
