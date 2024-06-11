import 'package:gson/gson.dart';
import 'package:objd/src/basic/time.dart';
import 'package:objd/src/wrappers/effect.dart';

class CustomEffect {
  final EffectType id;
  final int? amplifier;
  final Time? duration;
  final bool? ambient;
  final bool? show_particles;
  final bool? show_icon;

  const CustomEffect({required this.id, this.ambient, this.amplifier, this.duration, this.show_icon, this.show_particles});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'id':'minecraft:${id.name}'
    };
    if(amplifier != null){
      map['amplifier'] = Byte(amplifier!);
    }
    if(duration != null){
      map['duration'] = duration!.ticks;
    }
    if(ambient != null){
      map['ambient'] = ambient;
    }
    if(show_particles != null){
      map['show_particles'] = show_particles;
    }
    if(show_icon != null){
      map['show_icon'] = show_icon;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }

}