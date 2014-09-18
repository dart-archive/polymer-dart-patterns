library web.forms.implementing_simple_validation;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  static const int MIN_LENGTH = 5;
  static const int MAX_LENGTH = 50;
  @observable String message = '';
  @observable String messageValidationError = '';

  MyElement.created() : super.created();

  void messageChanged() {
    var trimmedMessage = message.trim();
    if (trimmedMessage.length < MIN_LENGTH ||
        trimmedMessage.length > MAX_LENGTH) {
      messageValidationError = 'Must be between $MIN_LENGTH and '
                               '$MAX_LENGTH characters.';
    } else {
      messageValidationError = '';
    }
  }
}
