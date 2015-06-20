@HtmlImport('my_element.html')
library web.forms.implementing_simple_autocompletion;

import 'dart:async';
import 'dart:html' show Event, KeyboardEvent, KeyCode, Node, window;

import 'package:polymer/polymer.dart';
import 'package:core_elements/core_input.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement {

  /// In a real project, the following would live elsewhere, e.g. a backend.
  static const List<String> hardCodedListOfWords = const [
    "apple", "ananas", "banana", "beetroot", "cassava", "cherry", "cucumber",
    "eggplant", "grapes", "tomato", "pear", "pomegranate", "potato",
    "lettuce", "strawberry"
  ];

  @observable String inputQuery;
  @observable final List<String> matchingCandidates = toObservable([]);
  @observable int selectedItemIndex = -1;
  @observable String selectedCandidate;

  MyElement.created() : super.created() {}

  void keyDown(Event event, Object object, CoreInput target) {
    if (!(event is KeyboardEvent)) {
      return;
    }
    switch ((event as KeyboardEvent).keyCode) {
      case KeyCode.DOWN:
        moveSelection(1);
        event.preventDefault();
        break;
      case KeyCode.UP:
        moveSelection(-1);
        event.preventDefault();
        break;
      case KeyCode.ENTER:
        if (selectedItemIndex != -1) {
          window.alert("You picked ${selectedCandidate} from the list.");
        } else {
          window.alert("You hit enter on ${inputQuery} without selecting it from the list.");
        }
        event.preventDefault();
        break;
    }
  }

  void moveSelection(int delta) {
    selectedItemIndex += delta;
    if (selectedItemIndex < 0) {
      selectedItemIndex = 0;
    }
    if (selectedItemIndex >= matchingCandidates.length) {
      selectedItemIndex = matchingCandidates.length - 1;
    }
    if (0 <= selectedItemIndex && selectedItemIndex < matchingCandidates.length) {
      selectedCandidate = matchingCandidates[selectedItemIndex];
    } else {
      selectedCandidate = "";
    }
  }

  void findCandidates(Event event, Object object, CoreInput target) {
    inputQuery = target.value;
    if (inputQuery.length < 1) {
      matchingCandidates.clear();
      return;
    }
    matchingCandidates.clear();
    queryCandidates().then((List<String> candidates) {
      matchingCandidates.addAll(candidates);
      if (!candidates.contains(selectedCandidate)) {
        selectedItemIndex = -1;
        selectedCandidate = "";
      }
    });
  }

  /// In a real project, this would query the backend.
  Future<List<String>> queryCandidates() {
    var completer = new Completer<List<String>>();
    if (inputQuery.isEmpty) {
      completer.complete(hardCodedListOfWords);
    } else {
      List<String> matchingCandidates =
      hardCodedListOfWords.where((String s) => s.contains(inputQuery));
      completer.complete(matchingCandidates);
    }
    return completer.future;
  }
}