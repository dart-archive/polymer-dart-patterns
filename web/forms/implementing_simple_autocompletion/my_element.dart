@HtmlImport('my_element.html')
library my_element;

import 'dart:async';
import 'dart:html'
    show Event, InputElement, KeyboardEvent, KeyCode, Node, window;
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_input.dart';
import 'match_element.dart';

/// Silence analyzer [MatchElement], [PaperInput]
@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  /// In a real project, the following would live elsewhere, e.g. a backend.
  // TODO(zoechi) report reflectable failure when this field is public
  static const List<String> _hardCodedListOfWords = const [
    "apple",
    "ananas",
    "banana",
    "beetroot",
    "cassava",
    "cherry",
    "cucumber",
    "eggplant",
    "grapes",
    "tomato",
    "pear",
    "pomegranate",
    "potato",
    "lettuce",
    "strawberry"
  ];

  @property String inputQuery;
  @property List<String> matchingCandidates =
      []; // TODO(zoechi) make final again when when dart-lang/polymer-dart#587 is fixed
  @property int selectedItemIndex = -1;
  @property String selectedCandidate;

  MyElement.created() : super.created() {}

  @eventHandler
  void keyDown(Event event, [_]) {
    if (!(event is KeyboardEvent)) {
      return;
    }
    switch ((event as KeyboardEvent).keyCode) {
      case KeyCode.DOWN:
        _moveSelection(1);
        event.preventDefault();
        break;
      case KeyCode.UP:
        _moveSelection(-1);
        event.preventDefault();
        break;
      case KeyCode.ENTER:
        if (selectedItemIndex != -1) {
          window.alert("You picked ${selectedCandidate} from the list.");
        } else {
          window.alert(
              "You hit enter on ${inputQuery} without selecting it from the list.");
        }
        event.preventDefault();
        break;
    }
  }

  void _moveSelection(int delta) {
    set('selectedItemIndex', selectedItemIndex + delta);
    if (selectedItemIndex < 0) {
      selectedItemIndex = 0;
    }
    if (selectedItemIndex >= matchingCandidates.length) {
      selectedItemIndex = matchingCandidates.length - 1;
    }
    if (0 <= selectedItemIndex &&
        selectedItemIndex < matchingCandidates.length) {
      set('selectedCandidate', matchingCandidates[selectedItemIndex]);
    } else {
      set('selectedCandidate', '');
    }
  }

  @eventHandler
  String selectedClass(String candidate) =>
      candidate == selectedCandidate ? 'selected' : '';

  @eventHandler
  void findCandidates(Event event, _) {
// TODO(zoechi) use `clear()` when polymer-dart#587 is fixed
    set('matchingCandidates', []);
//      clear('matchingCandidates');
    set('inputQuery', (event.target as InputElement).value);
    if (inputQuery.length < 1) {
      return;
    }
    _queryCandidates().then((List<String> candidates) {
      // Note that we may well end up with multiple requests being in flight at
      // the same time. We deal with this rather simply by clearing our
      // candidate list once more. Another solution would be to cancel the
      // previous in-flight request before making a new one.

// TODO(zoechi) use `clear()` and `addAll()` when polymer-dart#587 is fixed
      set('matchingCandidates', candidates);
//      addAll('matchingCandidates', candidates);
//        ..clear()
//        ..addAll(candidates);
      if (!candidates.contains(selectedCandidate)) {
        set('selectedItemIndex', -1);
        set('selectedCandidate', '');
      }
    });
  }

  /// In a real project, this would query the backend.
  Future<List<String>> _queryCandidates() {
    var completer = new Completer<List<String>>();
    if (inputQuery.isEmpty) {
      completer.complete(_hardCodedListOfWords);
    } else {
      List<String> matchingCandidates = _hardCodedListOfWords
          .where((String s) => s.contains(inputQuery))
          .toList();
      completer.complete(matchingCandidates);
    }
    return completer.future;
  }
}
