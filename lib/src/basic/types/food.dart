import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';
import 'package:objd/src/wrappers/effect.dart';

class Food {
  final int nutrition;
  final double saturation;
  final bool? can_always_eat;
  final Time? eat_seconds;
  //final Item? using_converts_to;
  final List<FoodEffect>? effects;

  const Food({required this.nutrition, required this.saturation, this.can_always_eat, this.eat_seconds, this.effects});

  Map<String, dynamic> getMap() {
    var map = <String, dynamic>{
      'nutrition':nutrition,
      'saturation':saturation,
    };
    if(can_always_eat != null){
      map['can_always_eat'] = can_always_eat;
    }
    if(eat_seconds != null){
      map['eat_seconds'] = eat_seconds!.seconds;
    }
    if(effects != null){
      map['effects'] = effects!.map((e) => e.getMap()).toList();
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class FoodEffect {
  final Effect effect;
  final double? probability;

  const FoodEffect({required this.effect, this.probability});

  Map<String, dynamic> getMap() {
    var map = <String, dynamic>{'effect' : effect.getMap()};
    if(probability != null){
      map['probability'] = probability;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}