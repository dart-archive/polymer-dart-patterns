@HtmlImport('my_element.html')
library my_element;

import 'dart:html' show ContentElement;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property /*final*/ List<String> theNodes = [];

  MyElement.created() : super.created();

  @eventHandler void showDistributedNodes([_, __]) {
    _getNodes(Polymer.dom($['crucial']).getDistributedNodes());
  }

  @eventHandler void showChildren([_, __]) {
    _getNodes(Polymer.dom(this).children);
  }

  _getNodes(_nodes) {
    clear('theNodes');
    for (var i = 0; i < _nodes.length; i++) {
      String html = _nodes[i].outerHtml;
      if (html != null && html.trim().isNotEmpty) {
        add('theNodes', html);
      }
    }
  }
}
