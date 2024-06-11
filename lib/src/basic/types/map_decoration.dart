import 'package:gson/gson.dart';

class MapDecoration {
  final DecorationType type;
  final double x;
  final double z;
  final Double rotation;

  const MapDecoration({required this.type, required this.x, required this.z, required this.rotation});

  Map<String, dynamic> getMap() {
    return {
      'type' : type.name,
      'x' : x,
      'z':z,
      'rotation':rotation
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class DecorationType {
  final String name;

  const DecorationType(this.name);
}

class DecorationTypes {
  // using cog generation tool to fetch blocks
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/map_decoration_type.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1].replace('.','_')
      blocks.append(id)
      cog.outl(f"static const DecorationType {id} = DecorationType('{full}');\n")
  ]]]*/
  static const DecorationType banner_black = DecorationType('minecraft:banner_black');

  static const DecorationType banner_blue = DecorationType('minecraft:banner_blue');

  static const DecorationType banner_brown = DecorationType('minecraft:banner_brown');

  static const DecorationType banner_cyan = DecorationType('minecraft:banner_cyan');

  static const DecorationType banner_gray = DecorationType('minecraft:banner_gray');

  static const DecorationType banner_green = DecorationType('minecraft:banner_green');

  static const DecorationType banner_light_blue = DecorationType('minecraft:banner_light_blue');

  static const DecorationType banner_light_gray = DecorationType('minecraft:banner_light_gray');

  static const DecorationType banner_lime = DecorationType('minecraft:banner_lime');

  static const DecorationType banner_magenta = DecorationType('minecraft:banner_magenta');

  static const DecorationType banner_orange = DecorationType('minecraft:banner_orange');

  static const DecorationType banner_pink = DecorationType('minecraft:banner_pink');

  static const DecorationType banner_purple = DecorationType('minecraft:banner_purple');

  static const DecorationType banner_red = DecorationType('minecraft:banner_red');

  static const DecorationType banner_white = DecorationType('minecraft:banner_white');

  static const DecorationType banner_yellow = DecorationType('minecraft:banner_yellow');

  static const DecorationType blue_marker = DecorationType('minecraft:blue_marker');

  static const DecorationType frame = DecorationType('minecraft:frame');

  static const DecorationType jungle_temple = DecorationType('minecraft:jungle_temple');

  static const DecorationType mansion = DecorationType('minecraft:mansion');

  static const DecorationType monument = DecorationType('minecraft:monument');

  static const DecorationType player = DecorationType('minecraft:player');

  static const DecorationType player_off_limits = DecorationType('minecraft:player_off_limits');

  static const DecorationType player_off_map = DecorationType('minecraft:player_off_map');

  static const DecorationType red_marker = DecorationType('minecraft:red_marker');

  static const DecorationType red_x = DecorationType('minecraft:red_x');

  static const DecorationType swamp_hut = DecorationType('minecraft:swamp_hut');

  static const DecorationType target_point = DecorationType('minecraft:target_point');

  static const DecorationType target_x = DecorationType('minecraft:target_x');

  static const DecorationType trial_chambers = DecorationType('minecraft:trial_chambers');

  static const DecorationType village_desert = DecorationType('minecraft:village_desert');

  static const DecorationType village_plains = DecorationType('minecraft:village_plains');

  static const DecorationType village_savanna = DecorationType('minecraft:village_savanna');

  static const DecorationType village_snowy = DecorationType('minecraft:village_snowy');

  static const DecorationType village_taiga = DecorationType('minecraft:village_taiga');

  //[[[end]]]
}