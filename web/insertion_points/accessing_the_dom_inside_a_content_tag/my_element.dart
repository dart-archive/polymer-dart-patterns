library web.insertion_points.accessing_the_dom_inside_a_content_tag;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> theNodes = toObservable([]);

  MyElement.created() : super.created();

  void showDistributedNodes() {
    getNodes(this.$['crucial'].getDistributedNodes());
  }

  void showChildren() {
    getNodes(this.children);
  }

  getNodes(_nodes) {
    theNodes.clear();
    for (var i = 0; i < _nodes.length; i++) {
      String html = _nodes[i].outerHtml;
      if (html != null && html.trim().isNotEmpty) {
        theNodes.add(html);
      }
    }
  }
}
