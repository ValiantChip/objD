// ignore_for_file: constant_identifier_names

class Attributes {
    // using cog generation tool to fetch blocks
  /*[[[cog
  import cog
  import requests

  version = '1.21/releases/1.21.4'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/attribute.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1].replace('.', '_')
      blocks.append(id)
      cog.outl(f"/// _({full})_")
      cog.outl(f"static const AttributeType {id} = AttributeType('{full}');\n")
  ]]]*/
  /// _(minecraft:armor)_
  static const AttributeType armor = AttributeType('minecraft:armor');

  /// _(minecraft:armor_toughness)_
  static const AttributeType armor_toughness = AttributeType('minecraft:armor_toughness');

  /// _(minecraft:attack_damage)_
  static const AttributeType attack_damage = AttributeType('minecraft:attack_damage');

  /// _(minecraft:attack_knockback)_
  static const AttributeType attack_knockback = AttributeType('minecraft:attack_knockback');

  /// _(minecraft:attack_speed)_
  static const AttributeType attack_speed = AttributeType('minecraft:attack_speed');

  /// _(minecraft:block_break_speed)_
  static const AttributeType block_break_speed = AttributeType('minecraft:block_break_speed');

  /// _(minecraft:block_interaction_range)_
  static const AttributeType block_interaction_range = AttributeType('minecraft:block_interaction_range');

  /// _(minecraft:burning_time)_
  static const AttributeType burning_time = AttributeType('minecraft:burning_time');

  /// _(minecraft:entity_interaction_range)_
  static const AttributeType entity_interaction_range = AttributeType('minecraft:entity_interaction_range');

  /// _(minecraft:explosion_knockback_resistance)_
  static const AttributeType explosion_knockback_resistance = AttributeType('minecraft:explosion_knockback_resistance');

  /// _(minecraft:fall_damage_multiplier)_
  static const AttributeType fall_damage_multiplier = AttributeType('minecraft:fall_damage_multiplier');

  /// _(minecraft:flying_speed)_
  static const AttributeType flying_speed = AttributeType('minecraft:flying_speed');

  /// _(minecraft:follow_range)_
  static const AttributeType follow_range = AttributeType('minecraft:follow_range');

  /// _(minecraft:gravity)_
  static const AttributeType gravity = AttributeType('minecraft:gravity');

  /// _(minecraft:jump_strength)_
  static const AttributeType jump_strength = AttributeType('minecraft:jump_strength');

  /// _(minecraft:knockback_resistance)_
  static const AttributeType knockback_resistance = AttributeType('minecraft:knockback_resistance');

  /// _(minecraft:luck)_
  static const AttributeType luck = AttributeType('minecraft:luck');

  /// _(minecraft:max_absorption)_
  static const AttributeType max_absorption = AttributeType('minecraft:max_absorption');

  /// _(minecraft:max_health)_
  static const AttributeType max_health = AttributeType('minecraft:max_health');

  /// _(minecraft:mining_efficiency)_
  static const AttributeType mining_efficiency = AttributeType('minecraft:mining_efficiency');

  /// _(minecraft:movement_efficiency)_
  static const AttributeType movement_efficiency = AttributeType('minecraft:movement_efficiency');

  /// _(minecraft:movement_speed)_
  static const AttributeType movement_speed = AttributeType('minecraft:movement_speed');

  /// _(minecraft:oxygen_bonus)_
  static const AttributeType oxygen_bonus = AttributeType('minecraft:oxygen_bonus');

  /// _(minecraft:safe_fall_distance)_
  static const AttributeType safe_fall_distance = AttributeType('minecraft:safe_fall_distance');

  /// _(minecraft:scale)_
  static const AttributeType scale = AttributeType('minecraft:scale');

  /// _(minecraft:sneaking_speed)_
  static const AttributeType sneaking_speed = AttributeType('minecraft:sneaking_speed');

  /// _(minecraft:spawn_reinforcements)_
  static const AttributeType spawn_reinforcements = AttributeType('minecraft:spawn_reinforcements');

  /// _(minecraft:step_height)_
  static const AttributeType step_height = AttributeType('minecraft:step_height');

  /// _(minecraft:submerged_mining_speed)_
  static const AttributeType submerged_mining_speed = AttributeType('minecraft:submerged_mining_speed');

  /// _(minecraft:sweeping_damage_ratio)_
  static const AttributeType sweeping_damage_ratio = AttributeType('minecraft:sweeping_damage_ratio');

  /// _(minecraft:tempt_range)_
  static const AttributeType tempt_range = AttributeType('minecraft:tempt_range');

  /// _(minecraft:water_movement_efficiency)_
  static const AttributeType water_movement_efficiency = AttributeType('minecraft:water_movement_efficiency');

  //[[[end]]]

    /// A List of all AttributeTypes
  static const List<AttributeType> all = [
    /*[[[cog
    for b in blocks:
      cog.outl(f'{b},')
    ]]]*/
    armor,
    armor_toughness,
    attack_damage,
    attack_knockback,
    attack_speed,
    block_break_speed,
    block_interaction_range,
    burning_time,
    entity_interaction_range,
    explosion_knockback_resistance,
    fall_damage_multiplier,
    flying_speed,
    follow_range,
    gravity,
    jump_strength,
    knockback_resistance,
    luck,
    max_absorption,
    max_health,
    mining_efficiency,
    movement_efficiency,
    movement_speed,
    oxygen_bonus,
    safe_fall_distance,
    scale,
    sneaking_speed,
    spawn_reinforcements,
    step_height,
    submerged_mining_speed,
    sweeping_damage_ratio,
    tempt_range,
    water_movement_efficiency,
    //[[[end]]]

  ];
}

class AttributeType {
  final String type;
  const AttributeType(this.type);

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    if (other is AttributeType && other.type == type) {
      return true;
    }
    if (other is String && other == type) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return type;
  }

  @override
  int get hashCode => type.hashCode;
}
