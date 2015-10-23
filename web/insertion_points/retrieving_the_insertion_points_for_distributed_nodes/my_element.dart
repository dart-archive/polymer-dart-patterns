@HtmlImport('my_element.html')
library my_element;

import 'dart:html' show Element;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property final List<String> nodesAndEntryPoints = [];

  MyElement.created() : super.created();

  @reflectable
  void showNodesAndEntryPoints([_, __]) {
    clear('nodesAndEntryPoints');
    addAll(
        'nodesAndEntryPoints',
        Polymer.dom(this).children.map((child) => '${child.outerHtml} ------> '
            '${(Polymer.dom(child).getDestinationInsertionPoints()[0] as Element).outerHtml}'));
  }
}
