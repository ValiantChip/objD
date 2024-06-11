class EnchantmentTypes{
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
      cog.outl(f"static const Enchantment {id} = Enchantment('{full}');\n")
  ]]]*/
  static const Enchantment aqua_affinity = Enchantment('minecraft:aqua_affinity');

  static const Enchantment bane_of_arthropods = Enchantment('minecraft:bane_of_arthropods');

  static const Enchantment binding_curse = Enchantment('minecraft:binding_curse');

  static const Enchantment blast_protection = Enchantment('minecraft:blast_protection');

  static const Enchantment breach = Enchantment('minecraft:breach');

  static const Enchantment channeling = Enchantment('minecraft:channeling');

  static const Enchantment density = Enchantment('minecraft:density');

  static const Enchantment depth_strider = Enchantment('minecraft:depth_strider');

  static const Enchantment efficiency = Enchantment('minecraft:efficiency');

  static const Enchantment feather_falling = Enchantment('minecraft:feather_falling');

  static const Enchantment fire_aspect = Enchantment('minecraft:fire_aspect');

  static const Enchantment fire_protection = Enchantment('minecraft:fire_protection');

  static const Enchantment flame = Enchantment('minecraft:flame');

  static const Enchantment fortune = Enchantment('minecraft:fortune');

  static const Enchantment frost_walker = Enchantment('minecraft:frost_walker');

  static const Enchantment impaling = Enchantment('minecraft:impaling');

  static const Enchantment infinity = Enchantment('minecraft:infinity');

  static const Enchantment knockback = Enchantment('minecraft:knockback');

  static const Enchantment looting = Enchantment('minecraft:looting');

  static const Enchantment loyalty = Enchantment('minecraft:loyalty');

  static const Enchantment luck_of_the_sea = Enchantment('minecraft:luck_of_the_sea');

  static const Enchantment lure = Enchantment('minecraft:lure');

  static const Enchantment mending = Enchantment('minecraft:mending');

  static const Enchantment multishot = Enchantment('minecraft:multishot');

  static const Enchantment piercing = Enchantment('minecraft:piercing');

  static const Enchantment power = Enchantment('minecraft:power');

  static const Enchantment projectile_protection = Enchantment('minecraft:projectile_protection');

  static const Enchantment protection = Enchantment('minecraft:protection');

  static const Enchantment punch = Enchantment('minecraft:punch');

  static const Enchantment quick_charge = Enchantment('minecraft:quick_charge');

  static const Enchantment respiration = Enchantment('minecraft:respiration');

  static const Enchantment riptide = Enchantment('minecraft:riptide');

  static const Enchantment sharpness = Enchantment('minecraft:sharpness');

  static const Enchantment silk_touch = Enchantment('minecraft:silk_touch');

  static const Enchantment smite = Enchantment('minecraft:smite');

  static const Enchantment soul_speed = Enchantment('minecraft:soul_speed');

  static const Enchantment sweeping_edge = Enchantment('minecraft:sweeping_edge');

  static const Enchantment swift_sneak = Enchantment('minecraft:swift_sneak');

  static const Enchantment thorns = Enchantment('minecraft:thorns');

  static const Enchantment unbreaking = Enchantment('minecraft:unbreaking');

  static const Enchantment vanishing_curse = Enchantment('minecraft:vanishing_curse');

  static const Enchantment wind_burst = Enchantment('minecraft:wind_burst');

  //[[[end]]]
}

class Enchantment {
  final String name;

  const Enchantment(this.name);
}