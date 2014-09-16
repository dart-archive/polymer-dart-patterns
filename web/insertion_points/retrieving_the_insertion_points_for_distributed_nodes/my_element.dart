library web.insertion_points.retrieving_the_insertion_points_for_distributed_nodes;

import 'dart:html' show Element;

import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {
  @observable List<String> nodesAndEntryPoints = toObservable([]);

  MyElement.created() : super.created();

  void showNodesAndEntryPoints() {
    nodesAndEntryPoints = [];
    for (var i = 0; i < this.children.length; i++) {
      nodesAndEntryPoints.add(
          this.children[i].outerHtml +
          ' ------> ' +
          (this.children[i].getDestinationInsertionPoints()[0] as Element).outerHtml
      );
    }
  }
}