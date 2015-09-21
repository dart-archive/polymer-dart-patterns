@HtmlImport('my_element.html')
library my_element;

import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  static const int _MIN_LENGTH = 5;
  static const int _MAX_LENGTH = 50;
  @Property(observer: 'messageChanged') String message = '';
  @property String messageValidationError = '';

  MyElement.created() : super.created();

  @eventHandler
  void messageChanged([_, __]) {
    var trimmedMessage = message.trim();
    if (trimmedMessage.length < _MIN_LENGTH ||
        trimmedMessage.length > _MAX_LENGTH) {
      set('messageValidationError',
          'Must be between $_MIN_LENGTH and $_MAX_LENGTH characters.');
    } else {
      set('messageValidationError', '');
    }
  }
}
