library web.forms.binding_to_a_textarea;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable String message = '';
  MyElement.created() : super.created();
}
