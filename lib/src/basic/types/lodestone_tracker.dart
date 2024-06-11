import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/target.dart';

class LodestoneTracker {
  final Target? target;
  final bool? tracked;

  const LodestoneTracker({this.target, this.tracked});

  Map<String, dynamic> getMap() {
    var map = <String, dynamic>{};

    if(target != null){
      map['target'] = target!.getMap();
    }
    if(tracked != null){
      map['tracked'] = tracked;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}