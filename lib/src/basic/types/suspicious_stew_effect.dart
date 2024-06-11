import 'package:gson/gson.dart';
import 'package:objd/src/basic/time.dart';
import 'package:objd/src/wrappers/effect.dart';

class SuspiciousStewEffect {
  final EffectType id;
  final Time? duration;

  const SuspiciousStewEffect({required this.id, this.duration});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'id':'minecraft:${id.name}'
    };
    if(duration != null){
      map['duration'] = duration!.ticks;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}