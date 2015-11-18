@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  static const int _minLength = 5;
  static const int _maxLength = 50;
  @Property(observer: 'messageChanged') String message = '';
  @property String messageValidationError = '';

  MyElement.created() : super.created();

  @reflectable
  void messageChanged([_, __]) {
    var trimmedMessage = message.trim();
    if (trimmedMessage.length < _minLength ||
        trimmedMessage.length > _maxLength) {
      set('messageValidationError',
          'Must be between $_minLength and $_maxLength characters.');
    } else {
      set('messageValidationError', '');
    }
  }
}
