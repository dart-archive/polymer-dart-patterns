import 'dart:html';
import 'package:polymer/polymer.dart';
import 'my_element.dart';

main() async {
  await initPolymer();
  document.body.children.add(new MyElement()
    ..id = 'my-element-id'
    ..greeting = 'Hello, good morning');
}
