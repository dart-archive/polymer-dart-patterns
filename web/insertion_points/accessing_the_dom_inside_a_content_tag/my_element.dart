@HtmlImport('my_element.html')
library my_element;

import 'dart:html' as dom;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  @property /*final*/ List<String> theNodes = [];

  MyElement.created() : super.created();

  @reflectable
  void showDistributedNodes([_, __]) {
    _getNodes(new PolymerDom($['crucial']).getDistributedNodes());
  }

  @reflectable
  void showChildren([_, __]) {
    _getNodes(new PolymerDom(this).children);
  }

  void _getNodes(List _nodes) {
    clear('theNodes');
    for (int i = 0; i < _nodes.length; i++) {
      String html = (_nodes[i] as dom.Element).outerHtml;
      if (html != null && html.trim().isNotEmpty) {
        add('theNodes', html);
      }
    }
  }
}
