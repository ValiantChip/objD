import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/firework_explosion.dart';

class Fireworks {
  final List<FireworkExplosion> explosions;
  final int flight_duration;

  const Fireworks({required this.explosions, this.flight_duration = 1});

  Map<String, dynamic> getMap() {
    return {
      "explosions" : explosions.map((e) => e.getNbt()).toList(),
      "flight_duration":Byte(flight_duration)
    };
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}