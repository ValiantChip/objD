import 'package:gson/gson.dart';

class Trim {
  final Pattern pattern;
  final Material material;
  final bool? show_in_tooltip;

  const Trim({required this.pattern, required this.material, this.show_in_tooltip});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'pattern' : pattern.name,
      'material' : material.name
    };
    if(show_in_tooltip != null){
      map['show_in_tooltip'] = show_in_tooltip;
    }
    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class Pattern {
  final String name;

  const Pattern(this.name);
}

class Material {
  final String name;

  const Material(this.name);
}

class Patterns{
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/lists/trim_patterns.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split('.')[0]
      blocks.append(id)
      cog.outl(f"static const Pattern {id} = Pattern('minecraft:{id}');\n")
  ]]]*/
  static const Pattern coast = Pattern('minecraft:coast');

  static const Pattern dune = Pattern('minecraft:dune');

  static const Pattern eye = Pattern('minecraft:eye');

  static const Pattern host = Pattern('minecraft:host');

  static const Pattern raiser = Pattern('minecraft:raiser');

  static const Pattern rib = Pattern('minecraft:rib');

  static const Pattern sentry = Pattern('minecraft:sentry');

  static const Pattern shaper = Pattern('minecraft:shaper');

  static const Pattern silence = Pattern('minecraft:silence');

  static const Pattern snout = Pattern('minecraft:snout');

  static const Pattern spire = Pattern('minecraft:spire');

  static const Pattern tide = Pattern('minecraft:tide');

  static const Pattern vex = Pattern('minecraft:vex');

  static const Pattern ward = Pattern('minecraft:ward');

  static const Pattern wayfinder = Pattern('minecraft:wayfinder');

  static const Pattern wild = Pattern('minecraft:wild');

  //[[[end]]]
}

class Materials {
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/lists/trim_materials.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split('.')[0]
      blocks.append(id)
      cog.outl(f"static const Material {id} = Material('minecraft:{id}');\n")
  ]]]*/
  static const Material amethyst = Material('minecraft:amethyst');

  static const Material copper = Material('minecraft:copper');

  static const Material diamond = Material('minecraft:diamond');

  static const Material emerald = Material('minecraft:emerald');

  static const Material gold = Material('minecraft:gold');

  static const Material iron = Material('minecraft:iron');

  static const Material lapis = Material('minecraft:lapis');

  static const Material netherite = Material('minecraft:netherite');

  static const Material quartz = Material('minecraft:quartz');

  static const Material redstone = Material('minecraft:redstone');

  //[[[end]]]
}