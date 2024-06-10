import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/firework_explosion.dart';

class Fireworks {
  final List<FireworkExplosion> explosions;
  final int flight_duration;

  const Fireworks({required this.explosions, this.flight_duration = 1}) : 
    assert(
      flight_duration > -129 && flight_duration < 128, 
      'flight_duration must be an int8'  
    );

  Map<String, dynamic> getMap() {
    return {
      "explosions" : explosions.map((e) => e.getNbt()),
      "flight_duration":flight_duration
    };
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}