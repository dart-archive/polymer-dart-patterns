@HtmlImport('child_element.html')
library child_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('child-element')
class ChildElement extends PolymerElement {
  ChildElement.created() : super.created();

  @eventHandler
  void fireEvent([_, __]) {
    fire('spoken', detail: {'message': this.$['myInput'].value});
  }
}
