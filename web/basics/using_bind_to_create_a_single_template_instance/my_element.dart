@HtmlImport('my_element.html')
library my_element;

// TODO(zoechi) <template id="dom-bind"> should not be used inside a Polymer element
// also doesn't work in Polymer 1.0.0-rc.2: Exception: TypeError: Cannot set property '_parent_person' of undefined
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
  @property Person person = new Person(new Name('Kathy', 'Walrath'),
      'Writer Extraordinaire', new Company('Google'));

  MyElement.created() : super.created();
}
