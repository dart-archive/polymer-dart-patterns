library web.basics.binding_to_a_map;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable Map person;

  MyElement.created() : super.created() {
    person = toObservable({
      'name': {
        'first': 'Kathy',
        'last': 'Walrath'
      },
      'title': 'Writer Extraordinaire',
      'company': {
        'name': 'Google'
      }
    });
  }
}
