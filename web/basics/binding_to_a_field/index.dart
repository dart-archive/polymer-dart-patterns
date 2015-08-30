import 'package:polymer/init.dart';
import 'package:polymer/polymer.dart';
import 'my_element.dart';
import 'package:smoke/static.dart';
import 'package:smoke/smoke.dart';

main() async {
  /// No transformer yet, so need to handcode the static config for smoke!
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
    #ready: (o) => o.ready,
    #attached: (o) => o.attached,
    #detached: (o) => o.detached
  },
      names: {#ready: 'ready', #attached: 'attached', #detached: 'detached'}));
  await initPolymer();
}
