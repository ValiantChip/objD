import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/color.dart';
import 'package:objd/src/basic/types/custom_effect.dart';

class PotionContents {
  final Potion? potion;
  final Color? custom_color;
  final List<CustomEffect>? custom_effects;

  const PotionContents({this.potion, this.custom_color, this.custom_effects});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {};
    if(potion != null){
      map['potion'] = potion!.name;
    }
    if(custom_color != null){
      map['custom_color'] = custom_color!;
    }
    if(custom_effects != null){
      map['custom_effects'] = custom_effects!.map((e) => e.getMap()).toList();
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class Potion{
  final String name;

  const Potion(this.name);
}

class PotionType {
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/potion.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1]
      blocks.append(id)
      cog.outl(f"static const Potion {id} = Potion('{full}');\n")
  ]]]*/
  static const Potion awkward = Potion('minecraft:awkward');

  static const Potion fire_resistance = Potion('minecraft:fire_resistance');

  static const Potion harming = Potion('minecraft:harming');

  static const Potion healing = Potion('minecraft:healing');

  static const Potion infested = Potion('minecraft:infested');

  static const Potion invisibility = Potion('minecraft:invisibility');

  static const Potion leaping = Potion('minecraft:leaping');

  static const Potion long_fire_resistance = Potion('minecraft:long_fire_resistance');

  static const Potion long_invisibility = Potion('minecraft:long_invisibility');

  static const Potion long_leaping = Potion('minecraft:long_leaping');

  static const Potion long_night_vision = Potion('minecraft:long_night_vision');

  static const Potion long_poison = Potion('minecraft:long_poison');

  static const Potion long_regeneration = Potion('minecraft:long_regeneration');

  static const Potion long_slow_falling = Potion('minecraft:long_slow_falling');

  static const Potion long_slowness = Potion('minecraft:long_slowness');

  static const Potion long_strength = Potion('minecraft:long_strength');

  static const Potion long_swiftness = Potion('minecraft:long_swiftness');

  static const Potion long_turtle_master = Potion('minecraft:long_turtle_master');

  static const Potion long_water_breathing = Potion('minecraft:long_water_breathing');

  static const Potion long_weakness = Potion('minecraft:long_weakness');

  static const Potion luck = Potion('minecraft:luck');

  static const Potion mundane = Potion('minecraft:mundane');

  static const Potion night_vision = Potion('minecraft:night_vision');

  static const Potion oozing = Potion('minecraft:oozing');

  static const Potion poison = Potion('minecraft:poison');

  static const Potion regeneration = Potion('minecraft:regeneration');

  static const Potion slow_falling = Potion('minecraft:slow_falling');

  static const Potion slowness = Potion('minecraft:slowness');

  static const Potion strength = Potion('minecraft:strength');

  static const Potion strong_harming = Potion('minecraft:strong_harming');

  static const Potion strong_healing = Potion('minecraft:strong_healing');

  static const Potion strong_leaping = Potion('minecraft:strong_leaping');

  static const Potion strong_poison = Potion('minecraft:strong_poison');

  static const Potion strong_regeneration = Potion('minecraft:strong_regeneration');

  static const Potion strong_slowness = Potion('minecraft:strong_slowness');

  static const Potion strong_strength = Potion('minecraft:strong_strength');

  static const Potion strong_swiftness = Potion('minecraft:strong_swiftness');

  static const Potion strong_turtle_master = Potion('minecraft:strong_turtle_master');

  static const Potion swiftness = Potion('minecraft:swiftness');

  static const Potion thick = Potion('minecraft:thick');

  static const Potion turtle_master = Potion('minecraft:turtle_master');

  static const Potion water = Potion('minecraft:water');

  static const Potion water_breathing = Potion('minecraft:water_breathing');

  static const Potion weakness = Potion('minecraft:weakness');

  static const Potion weaving = Potion('minecraft:weaving');

  static const Potion wind_charged = Potion('minecraft:wind_charged');

  //[[[end]]]
}