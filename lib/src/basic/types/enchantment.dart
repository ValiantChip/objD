
enum Enchantment {
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/enchantment.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1]
      blocks.append(id)
      cog.outl(f"{id}(\"{full}\"),\n")
  ]]]*/
  aqua_affinity("minecraft:aqua_affinity"),

  bane_of_arthropods("minecraft:bane_of_arthropods"),

  binding_curse("minecraft:binding_curse"),

  blast_protection("minecraft:blast_protection"),

  breach("minecraft:breach"),

  channeling("minecraft:channeling"),

  density("minecraft:density"),

  depth_strider("minecraft:depth_strider"),

  efficiency("minecraft:efficiency"),

  feather_falling("minecraft:feather_falling"),

  fire_aspect("minecraft:fire_aspect"),

  fire_protection("minecraft:fire_protection"),

  flame("minecraft:flame"),

  fortune("minecraft:fortune"),

  frost_walker("minecraft:frost_walker"),

  impaling("minecraft:impaling"),

  infinity("minecraft:infinity"),

  knockback("minecraft:knockback"),

  looting("minecraft:looting"),

  loyalty("minecraft:loyalty"),

  luck_of_the_sea("minecraft:luck_of_the_sea"),

  lure("minecraft:lure"),

  mending("minecraft:mending"),

  multishot("minecraft:multishot"),

  piercing("minecraft:piercing"),

  power("minecraft:power"),

  projectile_protection("minecraft:projectile_protection"),

  protection("minecraft:protection"),

  punch("minecraft:punch"),

  quick_charge("minecraft:quick_charge"),

  respiration("minecraft:respiration"),

  riptide("minecraft:riptide"),

  sharpness("minecraft:sharpness"),

  silk_touch("minecraft:silk_touch"),

  smite("minecraft:smite"),

  soul_speed("minecraft:soul_speed"),

  sweeping_edge("minecraft:sweeping_edge"),

  swift_sneak("minecraft:swift_sneak"),

  thorns("minecraft:thorns"),

  unbreaking("minecraft:unbreaking"),

  vanishing_curse("minecraft:vanishing_curse"),

  wind_burst("minecraft:wind_burst"),

  //[[[end]]]
  ;
  const Enchantment(this.name);

  final String name;
}