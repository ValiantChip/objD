import 'package:meta/meta.dart';
import 'package:objd/src/basic/types/block.dart';

@protected
abstract class BlockSelector {
  dynamic getComponents();
}

class BlockID implements BlockSelector {
  final Block block;

  const BlockID(this.block);

  @override
  dynamic getComponents() {
    return block.id;
  }
}

class BlockIDs implements BlockSelector {
  final List<BlockID> blocks;

  const BlockIDs(this.blocks);

  @override
  dynamic getComponents() {
    return blocks.map((e) => e.getComponents()).toList();
  }
}

class BlockTag implements BlockSelector {
  final String name;

  const BlockTag(this.name);

  @override
  dynamic getComponents() {
    return name;
  }
}

class BlockTags {
  /*[[[cog
  import cog
  import requests

  version = '1.20/releases/1.20.6'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/lists/tags.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split('/', 1)[1].split('.')[0]
      section = full.split('/')[0]
      if section == "blocks":
        blocks.append(id)
        cog.outl(f"static const BlockTag {id.replace('/','_')} = BlockTag('#{id}');\n")
  ]]]*/
  static const BlockTag acacia_logs = BlockTag('#acacia_logs');

  static const BlockTag all_hanging_signs = BlockTag('#all_hanging_signs');

  static const BlockTag all_signs = BlockTag('#all_signs');

  static const BlockTag ancient_city_replaceable = BlockTag('#ancient_city_replaceable');

  static const BlockTag animals_spawnable_on = BlockTag('#animals_spawnable_on');

  static const BlockTag anvil = BlockTag('#anvil');

  static const BlockTag armadillo_spawnable_on = BlockTag('#armadillo_spawnable_on');

  static const BlockTag axolotls_spawnable_on = BlockTag('#axolotls_spawnable_on');

  static const BlockTag azalea_grows_on = BlockTag('#azalea_grows_on');

  static const BlockTag azalea_root_replaceable = BlockTag('#azalea_root_replaceable');

  static const BlockTag badlands_terracotta = BlockTag('#badlands_terracotta');

  static const BlockTag bamboo_blocks = BlockTag('#bamboo_blocks');

  static const BlockTag bamboo_plantable_on = BlockTag('#bamboo_plantable_on');

  static const BlockTag banners = BlockTag('#banners');

  static const BlockTag base_stone_nether = BlockTag('#base_stone_nether');

  static const BlockTag base_stone_overworld = BlockTag('#base_stone_overworld');

  static const BlockTag beacon_base_blocks = BlockTag('#beacon_base_blocks');

  static const BlockTag beds = BlockTag('#beds');

  static const BlockTag beehives = BlockTag('#beehives');

  static const BlockTag bee_growables = BlockTag('#bee_growables');

  static const BlockTag big_dripleaf_placeable = BlockTag('#big_dripleaf_placeable');

  static const BlockTag birch_logs = BlockTag('#birch_logs');

  static const BlockTag buttons = BlockTag('#buttons');

  static const BlockTag camel_sand_step_sound_blocks = BlockTag('#camel_sand_step_sound_blocks');

  static const BlockTag campfires = BlockTag('#campfires');

  static const BlockTag candles = BlockTag('#candles');

  static const BlockTag candle_cakes = BlockTag('#candle_cakes');

  static const BlockTag cauldrons = BlockTag('#cauldrons');

  static const BlockTag cave_vines = BlockTag('#cave_vines');

  static const BlockTag ceiling_hanging_signs = BlockTag('#ceiling_hanging_signs');

  static const BlockTag cherry_logs = BlockTag('#cherry_logs');

  static const BlockTag climbable = BlockTag('#climbable');

  static const BlockTag coal_ores = BlockTag('#coal_ores');

  static const BlockTag combination_step_sound_blocks = BlockTag('#combination_step_sound_blocks');

  static const BlockTag completes_find_tree_tutorial = BlockTag('#completes_find_tree_tutorial');

  static const BlockTag concrete_powder = BlockTag('#concrete_powder');

  static const BlockTag convertable_to_mud = BlockTag('#convertable_to_mud');

  static const BlockTag copper_ores = BlockTag('#copper_ores');

  static const BlockTag corals = BlockTag('#corals');

  static const BlockTag coral_blocks = BlockTag('#coral_blocks');

  static const BlockTag coral_plants = BlockTag('#coral_plants');

  static const BlockTag crimson_stems = BlockTag('#crimson_stems');

  static const BlockTag crops = BlockTag('#crops');

  static const BlockTag crystal_sound_blocks = BlockTag('#crystal_sound_blocks');

  static const BlockTag dampens_vibrations = BlockTag('#dampens_vibrations');

  static const BlockTag dark_oak_logs = BlockTag('#dark_oak_logs');

  static const BlockTag dead_bush_may_place_on = BlockTag('#dead_bush_may_place_on');

  static const BlockTag deepslate_ore_replaceables = BlockTag('#deepslate_ore_replaceables');

  static const BlockTag diamond_ores = BlockTag('#diamond_ores');

  static const BlockTag dirt = BlockTag('#dirt');

  static const BlockTag does_not_block_hoppers = BlockTag('#does_not_block_hoppers');

  static const BlockTag doors = BlockTag('#doors');

  static const BlockTag dragon_immune = BlockTag('#dragon_immune');

  static const BlockTag dragon_transparent = BlockTag('#dragon_transparent');

  static const BlockTag dripstone_replaceable_blocks = BlockTag('#dripstone_replaceable_blocks');

  static const BlockTag emerald_ores = BlockTag('#emerald_ores');

  static const BlockTag enchantment_power_provider = BlockTag('#enchantment_power_provider');

  static const BlockTag enchantment_power_transmitter = BlockTag('#enchantment_power_transmitter');

  static const BlockTag enderman_holdable = BlockTag('#enderman_holdable');

  static const BlockTag fall_damage_resetting = BlockTag('#fall_damage_resetting');

  static const BlockTag features_cannot_replace = BlockTag('#features_cannot_replace');

  static const BlockTag fences = BlockTag('#fences');

  static const BlockTag fence_gates = BlockTag('#fence_gates');

  static const BlockTag fire = BlockTag('#fire');

  static const BlockTag flowers = BlockTag('#flowers');

  static const BlockTag flower_pots = BlockTag('#flower_pots');

  static const BlockTag foxes_spawnable_on = BlockTag('#foxes_spawnable_on');

  static const BlockTag frogs_spawnable_on = BlockTag('#frogs_spawnable_on');

  static const BlockTag frog_prefer_jump_to = BlockTag('#frog_prefer_jump_to');

  static const BlockTag geode_invalid_blocks = BlockTag('#geode_invalid_blocks');

  static const BlockTag goats_spawnable_on = BlockTag('#goats_spawnable_on');

  static const BlockTag gold_ores = BlockTag('#gold_ores');

  static const BlockTag guarded_by_piglins = BlockTag('#guarded_by_piglins');

  static const BlockTag hoglin_repellents = BlockTag('#hoglin_repellents');

  static const BlockTag ice = BlockTag('#ice');

  static const BlockTag impermeable = BlockTag('#impermeable');

  static const BlockTag incorrect_for_diamond_tool = BlockTag('#incorrect_for_diamond_tool');

  static const BlockTag incorrect_for_gold_tool = BlockTag('#incorrect_for_gold_tool');

  static const BlockTag incorrect_for_iron_tool = BlockTag('#incorrect_for_iron_tool');

  static const BlockTag incorrect_for_netherite_tool = BlockTag('#incorrect_for_netherite_tool');

  static const BlockTag incorrect_for_stone_tool = BlockTag('#incorrect_for_stone_tool');

  static const BlockTag incorrect_for_wooden_tool = BlockTag('#incorrect_for_wooden_tool');

  static const BlockTag infiniburn_end = BlockTag('#infiniburn_end');

  static const BlockTag infiniburn_nether = BlockTag('#infiniburn_nether');

  static const BlockTag infiniburn_overworld = BlockTag('#infiniburn_overworld');

  static const BlockTag inside_step_sound_blocks = BlockTag('#inside_step_sound_blocks');

  static const BlockTag invalid_spawn_inside = BlockTag('#invalid_spawn_inside');

  static const BlockTag iron_ores = BlockTag('#iron_ores');

  static const BlockTag jungle_logs = BlockTag('#jungle_logs');

  static const BlockTag lapis_ores = BlockTag('#lapis_ores');

  static const BlockTag lava_pool_stone_cannot_replace = BlockTag('#lava_pool_stone_cannot_replace');

  static const BlockTag leaves = BlockTag('#leaves');

  static const BlockTag logs = BlockTag('#logs');

  static const BlockTag logs_that_burn = BlockTag('#logs_that_burn');

  static const BlockTag lush_ground_replaceable = BlockTag('#lush_ground_replaceable');

  static const BlockTag maintains_farmland = BlockTag('#maintains_farmland');

  static const BlockTag mangrove_logs = BlockTag('#mangrove_logs');

  static const BlockTag mangrove_logs_can_grow_through = BlockTag('#mangrove_logs_can_grow_through');

  static const BlockTag mangrove_roots_can_grow_through = BlockTag('#mangrove_roots_can_grow_through');

  static const BlockTag mineable_axe = BlockTag('#mineable/axe');

  static const BlockTag mineable_hoe = BlockTag('#mineable/hoe');

  static const BlockTag mineable_pickaxe = BlockTag('#mineable/pickaxe');

  static const BlockTag mineable_shovel = BlockTag('#mineable/shovel');

  static const BlockTag mooshrooms_spawnable_on = BlockTag('#mooshrooms_spawnable_on');

  static const BlockTag moss_replaceable = BlockTag('#moss_replaceable');

  static const BlockTag mushroom_grow_block = BlockTag('#mushroom_grow_block');

  static const BlockTag needs_diamond_tool = BlockTag('#needs_diamond_tool');

  static const BlockTag needs_iron_tool = BlockTag('#needs_iron_tool');

  static const BlockTag needs_stone_tool = BlockTag('#needs_stone_tool');

  static const BlockTag nether_carver_replaceables = BlockTag('#nether_carver_replaceables');

  static const BlockTag nylium = BlockTag('#nylium');

  static const BlockTag oak_logs = BlockTag('#oak_logs');

  static const BlockTag occludes_vibration_signals = BlockTag('#occludes_vibration_signals');

  static const BlockTag overworld_carver_replaceables = BlockTag('#overworld_carver_replaceables');

  static const BlockTag overworld_natural_logs = BlockTag('#overworld_natural_logs');

  static const BlockTag parrots_spawnable_on = BlockTag('#parrots_spawnable_on');

  static const BlockTag piglin_repellents = BlockTag('#piglin_repellents');

  static const BlockTag planks = BlockTag('#planks');

  static const BlockTag polar_bears_spawnable_on_alternate = BlockTag('#polar_bears_spawnable_on_alternate');

  static const BlockTag portals = BlockTag('#portals');

  static const BlockTag pressure_plates = BlockTag('#pressure_plates');

  static const BlockTag prevent_mob_spawning_inside = BlockTag('#prevent_mob_spawning_inside');

  static const BlockTag rabbits_spawnable_on = BlockTag('#rabbits_spawnable_on');

  static const BlockTag rails = BlockTag('#rails');

  static const BlockTag redstone_ores = BlockTag('#redstone_ores');

  static const BlockTag replaceable = BlockTag('#replaceable');

  static const BlockTag replaceable_by_trees = BlockTag('#replaceable_by_trees');

  static const BlockTag sand = BlockTag('#sand');

  static const BlockTag saplings = BlockTag('#saplings');

  static const BlockTag sculk_replaceable = BlockTag('#sculk_replaceable');

  static const BlockTag sculk_replaceable_world_gen = BlockTag('#sculk_replaceable_world_gen');

  static const BlockTag shulker_boxes = BlockTag('#shulker_boxes');

  static const BlockTag signs = BlockTag('#signs');

  static const BlockTag slabs = BlockTag('#slabs');

  static const BlockTag small_dripleaf_placeable = BlockTag('#small_dripleaf_placeable');

  static const BlockTag small_flowers = BlockTag('#small_flowers');

  static const BlockTag smelts_to_glass = BlockTag('#smelts_to_glass');

  static const BlockTag snaps_goat_horn = BlockTag('#snaps_goat_horn');

  static const BlockTag sniffer_diggable_block = BlockTag('#sniffer_diggable_block');

  static const BlockTag sniffer_egg_hatch_boost = BlockTag('#sniffer_egg_hatch_boost');

  static const BlockTag snow = BlockTag('#snow');

  static const BlockTag snow_layer_cannot_survive_on = BlockTag('#snow_layer_cannot_survive_on');

  static const BlockTag snow_layer_can_survive_on = BlockTag('#snow_layer_can_survive_on');

  static const BlockTag soul_fire_base_blocks = BlockTag('#soul_fire_base_blocks');

  static const BlockTag soul_speed_blocks = BlockTag('#soul_speed_blocks');

  static const BlockTag spruce_logs = BlockTag('#spruce_logs');

  static const BlockTag stairs = BlockTag('#stairs');

  static const BlockTag standing_signs = BlockTag('#standing_signs');

  static const BlockTag stone_bricks = BlockTag('#stone_bricks');

  static const BlockTag stone_buttons = BlockTag('#stone_buttons');

  static const BlockTag stone_ore_replaceables = BlockTag('#stone_ore_replaceables');

  static const BlockTag stone_pressure_plates = BlockTag('#stone_pressure_plates');

  static const BlockTag strider_warm_blocks = BlockTag('#strider_warm_blocks');

  static const BlockTag sword_efficient = BlockTag('#sword_efficient');

  static const BlockTag tall_flowers = BlockTag('#tall_flowers');

  static const BlockTag terracotta = BlockTag('#terracotta');

  static const BlockTag trail_ruins_replaceable = BlockTag('#trail_ruins_replaceable');

  static const BlockTag trapdoors = BlockTag('#trapdoors');

  static const BlockTag underwater_bonemeals = BlockTag('#underwater_bonemeals');

  static const BlockTag unstable_bottom_center = BlockTag('#unstable_bottom_center');

  static const BlockTag valid_spawn = BlockTag('#valid_spawn');

  static const BlockTag vibration_resonators = BlockTag('#vibration_resonators');

  static const BlockTag walls = BlockTag('#walls');

  static const BlockTag wall_corals = BlockTag('#wall_corals');

  static const BlockTag wall_hanging_signs = BlockTag('#wall_hanging_signs');

  static const BlockTag wall_post_override = BlockTag('#wall_post_override');

  static const BlockTag wall_signs = BlockTag('#wall_signs');

  static const BlockTag warped_stems = BlockTag('#warped_stems');

  static const BlockTag wart_blocks = BlockTag('#wart_blocks');

  static const BlockTag wither_immune = BlockTag('#wither_immune');

  static const BlockTag wither_summon_base_blocks = BlockTag('#wither_summon_base_blocks');

  static const BlockTag wolves_spawnable_on = BlockTag('#wolves_spawnable_on');

  static const BlockTag wooden_buttons = BlockTag('#wooden_buttons');

  static const BlockTag wooden_doors = BlockTag('#wooden_doors');

  static const BlockTag wooden_fences = BlockTag('#wooden_fences');

  static const BlockTag wooden_pressure_plates = BlockTag('#wooden_pressure_plates');

  static const BlockTag wooden_slabs = BlockTag('#wooden_slabs');

  static const BlockTag wooden_stairs = BlockTag('#wooden_stairs');

  static const BlockTag wooden_trapdoors = BlockTag('#wooden_trapdoors');

  static const BlockTag wool = BlockTag('#wool');

  static const BlockTag wool_carpets = BlockTag('#wool_carpets');

  //[[[end]]]
}
