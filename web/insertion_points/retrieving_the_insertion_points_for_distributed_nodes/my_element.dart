@HtmlImport('my_element.html')
library web.insertion_points.retrieving_the_insertion_points_for_distributed_nodes;

import 'dart:html' show Element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  final List<String> nodesAndEntryPoints = toObservable([]);

  MyElement.created() : super.created();

  void showNodesAndEntryPoints() {
    nodesAndEntryPoints.clear();
    nodesAndEntryPoints.addAll(this.children.map((child) =>
        '${child.outerHtml} ------> '
        '${(child.getDestinationInsertionPoints()[0] as Element).outerHtml}'));
  }
}
