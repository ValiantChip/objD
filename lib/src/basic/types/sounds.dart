import 'sound.dart';

class Sounds {
  // using cog generation tool to fetch blocks
  /*[[[cog
  import cog
  import requests

  version = '1.21/releases/1.21'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/sound_event.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1].replace('.','_')
      blocks.append(id)
      cog.outl(f"static const Sound {id} = Sound('{full}');\n")
  ]]]*/
  static const Sound ambient_basalt_deltas_additions = Sound('minecraft:ambient.basalt_deltas.additions');

  static const Sound ambient_basalt_deltas_loop = Sound('minecraft:ambient.basalt_deltas.loop');

  static const Sound ambient_basalt_deltas_mood = Sound('minecraft:ambient.basalt_deltas.mood');

  static const Sound ambient_cave = Sound('minecraft:ambient.cave');

  static const Sound ambient_crimson_forest_additions = Sound('minecraft:ambient.crimson_forest.additions');

  static const Sound ambient_crimson_forest_loop = Sound('minecraft:ambient.crimson_forest.loop');

  static const Sound ambient_crimson_forest_mood = Sound('minecraft:ambient.crimson_forest.mood');

  static const Sound ambient_nether_wastes_additions = Sound('minecraft:ambient.nether_wastes.additions');

  static const Sound ambient_nether_wastes_loop = Sound('minecraft:ambient.nether_wastes.loop');

  static const Sound ambient_nether_wastes_mood = Sound('minecraft:ambient.nether_wastes.mood');

  static const Sound ambient_soul_sand_valley_additions = Sound('minecraft:ambient.soul_sand_valley.additions');

  static const Sound ambient_soul_sand_valley_loop = Sound('minecraft:ambient.soul_sand_valley.loop');

  static const Sound ambient_soul_sand_valley_mood = Sound('minecraft:ambient.soul_sand_valley.mood');

  static const Sound ambient_underwater_enter = Sound('minecraft:ambient.underwater.enter');

  static const Sound ambient_underwater_exit = Sound('minecraft:ambient.underwater.exit');

  static const Sound ambient_underwater_loop = Sound('minecraft:ambient.underwater.loop');

  static const Sound ambient_underwater_loop_additions = Sound('minecraft:ambient.underwater.loop.additions');

  static const Sound ambient_underwater_loop_additions_rare = Sound('minecraft:ambient.underwater.loop.additions.rare');

  static const Sound ambient_underwater_loop_additions_ultra_rare = Sound('minecraft:ambient.underwater.loop.additions.ultra_rare');

  static const Sound ambient_warped_forest_additions = Sound('minecraft:ambient.warped_forest.additions');

  static const Sound ambient_warped_forest_loop = Sound('minecraft:ambient.warped_forest.loop');

  static const Sound ambient_warped_forest_mood = Sound('minecraft:ambient.warped_forest.mood');

  static const Sound block_amethyst_block_break = Sound('minecraft:block.amethyst_block.break');

  static const Sound block_amethyst_block_chime = Sound('minecraft:block.amethyst_block.chime');

  static const Sound block_amethyst_block_fall = Sound('minecraft:block.amethyst_block.fall');

  static const Sound block_amethyst_block_hit = Sound('minecraft:block.amethyst_block.hit');

  static const Sound block_amethyst_block_place = Sound('minecraft:block.amethyst_block.place');

  static const Sound block_amethyst_block_resonate = Sound('minecraft:block.amethyst_block.resonate');

  static const Sound block_amethyst_block_step = Sound('minecraft:block.amethyst_block.step');

  static const Sound block_amethyst_cluster_break = Sound('minecraft:block.amethyst_cluster.break');

  static const Sound block_amethyst_cluster_fall = Sound('minecraft:block.amethyst_cluster.fall');

  static const Sound block_amethyst_cluster_hit = Sound('minecraft:block.amethyst_cluster.hit');

  static const Sound block_amethyst_cluster_place = Sound('minecraft:block.amethyst_cluster.place');

  static const Sound block_amethyst_cluster_step = Sound('minecraft:block.amethyst_cluster.step');

  static const Sound block_ancient_debris_break = Sound('minecraft:block.ancient_debris.break');

  static const Sound block_ancient_debris_fall = Sound('minecraft:block.ancient_debris.fall');

  static const Sound block_ancient_debris_hit = Sound('minecraft:block.ancient_debris.hit');

  static const Sound block_ancient_debris_place = Sound('minecraft:block.ancient_debris.place');

  static const Sound block_ancient_debris_step = Sound('minecraft:block.ancient_debris.step');

  static const Sound block_anvil_break = Sound('minecraft:block.anvil.break');

  static const Sound block_anvil_destroy = Sound('minecraft:block.anvil.destroy');

  static const Sound block_anvil_fall = Sound('minecraft:block.anvil.fall');

  static const Sound block_anvil_hit = Sound('minecraft:block.anvil.hit');

  static const Sound block_anvil_land = Sound('minecraft:block.anvil.land');

  static const Sound block_anvil_place = Sound('minecraft:block.anvil.place');

  static const Sound block_anvil_step = Sound('minecraft:block.anvil.step');

  static const Sound block_anvil_use = Sound('minecraft:block.anvil.use');

  static const Sound block_azalea_break = Sound('minecraft:block.azalea.break');

  static const Sound block_azalea_fall = Sound('minecraft:block.azalea.fall');

  static const Sound block_azalea_hit = Sound('minecraft:block.azalea.hit');

  static const Sound block_azalea_place = Sound('minecraft:block.azalea.place');

  static const Sound block_azalea_step = Sound('minecraft:block.azalea.step');

  static const Sound block_azalea_leaves_break = Sound('minecraft:block.azalea_leaves.break');

  static const Sound block_azalea_leaves_fall = Sound('minecraft:block.azalea_leaves.fall');

  static const Sound block_azalea_leaves_hit = Sound('minecraft:block.azalea_leaves.hit');

  static const Sound block_azalea_leaves_place = Sound('minecraft:block.azalea_leaves.place');

  static const Sound block_azalea_leaves_step = Sound('minecraft:block.azalea_leaves.step');

  static const Sound block_bamboo_break = Sound('minecraft:block.bamboo.break');

  static const Sound block_bamboo_fall = Sound('minecraft:block.bamboo.fall');

  static const Sound block_bamboo_hit = Sound('minecraft:block.bamboo.hit');

  static const Sound block_bamboo_place = Sound('minecraft:block.bamboo.place');

  static const Sound block_bamboo_step = Sound('minecraft:block.bamboo.step');

  static const Sound block_bamboo_sapling_break = Sound('minecraft:block.bamboo_sapling.break');

  static const Sound block_bamboo_sapling_hit = Sound('minecraft:block.bamboo_sapling.hit');

  static const Sound block_bamboo_sapling_place = Sound('minecraft:block.bamboo_sapling.place');

  static const Sound block_bamboo_wood_break = Sound('minecraft:block.bamboo_wood.break');

  static const Sound block_bamboo_wood_fall = Sound('minecraft:block.bamboo_wood.fall');

  static const Sound block_bamboo_wood_hit = Sound('minecraft:block.bamboo_wood.hit');

  static const Sound block_bamboo_wood_place = Sound('minecraft:block.bamboo_wood.place');

  static const Sound block_bamboo_wood_step = Sound('minecraft:block.bamboo_wood.step');

  static const Sound block_bamboo_wood_button_click_off = Sound('minecraft:block.bamboo_wood_button.click_off');

  static const Sound block_bamboo_wood_button_click_on = Sound('minecraft:block.bamboo_wood_button.click_on');

  static const Sound block_bamboo_wood_door_close = Sound('minecraft:block.bamboo_wood_door.close');

  static const Sound block_bamboo_wood_door_open = Sound('minecraft:block.bamboo_wood_door.open');

  static const Sound block_bamboo_wood_fence_gate_close = Sound('minecraft:block.bamboo_wood_fence_gate.close');

  static const Sound block_bamboo_wood_fence_gate_open = Sound('minecraft:block.bamboo_wood_fence_gate.open');

  static const Sound block_bamboo_wood_hanging_sign_break = Sound('minecraft:block.bamboo_wood_hanging_sign.break');

  static const Sound block_bamboo_wood_hanging_sign_fall = Sound('minecraft:block.bamboo_wood_hanging_sign.fall');

  static const Sound block_bamboo_wood_hanging_sign_hit = Sound('minecraft:block.bamboo_wood_hanging_sign.hit');

  static const Sound block_bamboo_wood_hanging_sign_place = Sound('minecraft:block.bamboo_wood_hanging_sign.place');

  static const Sound block_bamboo_wood_hanging_sign_step = Sound('minecraft:block.bamboo_wood_hanging_sign.step');

  static const Sound block_bamboo_wood_pressure_plate_click_off = Sound('minecraft:block.bamboo_wood_pressure_plate.click_off');

  static const Sound block_bamboo_wood_pressure_plate_click_on = Sound('minecraft:block.bamboo_wood_pressure_plate.click_on');

  static const Sound block_bamboo_wood_trapdoor_close = Sound('minecraft:block.bamboo_wood_trapdoor.close');

  static const Sound block_bamboo_wood_trapdoor_open = Sound('minecraft:block.bamboo_wood_trapdoor.open');

  static const Sound block_barrel_close = Sound('minecraft:block.barrel.close');

  static const Sound block_barrel_open = Sound('minecraft:block.barrel.open');

  static const Sound block_basalt_break = Sound('minecraft:block.basalt.break');

  static const Sound block_basalt_fall = Sound('minecraft:block.basalt.fall');

  static const Sound block_basalt_hit = Sound('minecraft:block.basalt.hit');

  static const Sound block_basalt_place = Sound('minecraft:block.basalt.place');

  static const Sound block_basalt_step = Sound('minecraft:block.basalt.step');

  static const Sound block_beacon_activate = Sound('minecraft:block.beacon.activate');

  static const Sound block_beacon_ambient = Sound('minecraft:block.beacon.ambient');

  static const Sound block_beacon_deactivate = Sound('minecraft:block.beacon.deactivate');

  static const Sound block_beacon_power_select = Sound('minecraft:block.beacon.power_select');

  static const Sound block_beehive_drip = Sound('minecraft:block.beehive.drip');

  static const Sound block_beehive_enter = Sound('minecraft:block.beehive.enter');

  static const Sound block_beehive_exit = Sound('minecraft:block.beehive.exit');

  static const Sound block_beehive_shear = Sound('minecraft:block.beehive.shear');

  static const Sound block_beehive_work = Sound('minecraft:block.beehive.work');

  static const Sound block_bell_resonate = Sound('minecraft:block.bell.resonate');

  static const Sound block_bell_use = Sound('minecraft:block.bell.use');

  static const Sound block_big_dripleaf_break = Sound('minecraft:block.big_dripleaf.break');

  static const Sound block_big_dripleaf_fall = Sound('minecraft:block.big_dripleaf.fall');

  static const Sound block_big_dripleaf_hit = Sound('minecraft:block.big_dripleaf.hit');

  static const Sound block_big_dripleaf_place = Sound('minecraft:block.big_dripleaf.place');

  static const Sound block_big_dripleaf_step = Sound('minecraft:block.big_dripleaf.step');

  static const Sound block_big_dripleaf_tilt_down = Sound('minecraft:block.big_dripleaf.tilt_down');

  static const Sound block_big_dripleaf_tilt_up = Sound('minecraft:block.big_dripleaf.tilt_up');

  static const Sound block_blastfurnace_fire_crackle = Sound('minecraft:block.blastfurnace.fire_crackle');

  static const Sound block_bone_block_break = Sound('minecraft:block.bone_block.break');

  static const Sound block_bone_block_fall = Sound('minecraft:block.bone_block.fall');

  static const Sound block_bone_block_hit = Sound('minecraft:block.bone_block.hit');

  static const Sound block_bone_block_place = Sound('minecraft:block.bone_block.place');

  static const Sound block_bone_block_step = Sound('minecraft:block.bone_block.step');

  static const Sound block_brewing_stand_brew = Sound('minecraft:block.brewing_stand.brew');

  static const Sound block_bubble_column_bubble_pop = Sound('minecraft:block.bubble_column.bubble_pop');

  static const Sound block_bubble_column_upwards_ambient = Sound('minecraft:block.bubble_column.upwards_ambient');

  static const Sound block_bubble_column_upwards_inside = Sound('minecraft:block.bubble_column.upwards_inside');

  static const Sound block_bubble_column_whirlpool_ambient = Sound('minecraft:block.bubble_column.whirlpool_ambient');

  static const Sound block_bubble_column_whirlpool_inside = Sound('minecraft:block.bubble_column.whirlpool_inside');

  static const Sound block_cake_add_candle = Sound('minecraft:block.cake.add_candle');

  static const Sound block_calcite_break = Sound('minecraft:block.calcite.break');

  static const Sound block_calcite_fall = Sound('minecraft:block.calcite.fall');

  static const Sound block_calcite_hit = Sound('minecraft:block.calcite.hit');

  static const Sound block_calcite_place = Sound('minecraft:block.calcite.place');

  static const Sound block_calcite_step = Sound('minecraft:block.calcite.step');

  static const Sound block_campfire_crackle = Sound('minecraft:block.campfire.crackle');

  static const Sound block_candle_ambient = Sound('minecraft:block.candle.ambient');

  static const Sound block_candle_break = Sound('minecraft:block.candle.break');

  static const Sound block_candle_extinguish = Sound('minecraft:block.candle.extinguish');

  static const Sound block_candle_fall = Sound('minecraft:block.candle.fall');

  static const Sound block_candle_hit = Sound('minecraft:block.candle.hit');

  static const Sound block_candle_place = Sound('minecraft:block.candle.place');

  static const Sound block_candle_step = Sound('minecraft:block.candle.step');

  static const Sound block_cave_vines_break = Sound('minecraft:block.cave_vines.break');

  static const Sound block_cave_vines_fall = Sound('minecraft:block.cave_vines.fall');

  static const Sound block_cave_vines_hit = Sound('minecraft:block.cave_vines.hit');

  static const Sound block_cave_vines_pick_berries = Sound('minecraft:block.cave_vines.pick_berries');

  static const Sound block_cave_vines_place = Sound('minecraft:block.cave_vines.place');

  static const Sound block_cave_vines_step = Sound('minecraft:block.cave_vines.step');

  static const Sound block_chain_break = Sound('minecraft:block.chain.break');

  static const Sound block_chain_fall = Sound('minecraft:block.chain.fall');

  static const Sound block_chain_hit = Sound('minecraft:block.chain.hit');

  static const Sound block_chain_place = Sound('minecraft:block.chain.place');

  static const Sound block_chain_step = Sound('minecraft:block.chain.step');

  static const Sound block_cherry_leaves_break = Sound('minecraft:block.cherry_leaves.break');

  static const Sound block_cherry_leaves_fall = Sound('minecraft:block.cherry_leaves.fall');

  static const Sound block_cherry_leaves_hit = Sound('minecraft:block.cherry_leaves.hit');

  static const Sound block_cherry_leaves_place = Sound('minecraft:block.cherry_leaves.place');

  static const Sound block_cherry_leaves_step = Sound('minecraft:block.cherry_leaves.step');

  static const Sound block_cherry_sapling_break = Sound('minecraft:block.cherry_sapling.break');

  static const Sound block_cherry_sapling_fall = Sound('minecraft:block.cherry_sapling.fall');

  static const Sound block_cherry_sapling_hit = Sound('minecraft:block.cherry_sapling.hit');

  static const Sound block_cherry_sapling_place = Sound('minecraft:block.cherry_sapling.place');

  static const Sound block_cherry_sapling_step = Sound('minecraft:block.cherry_sapling.step');

  static const Sound block_cherry_wood_break = Sound('minecraft:block.cherry_wood.break');

  static const Sound block_cherry_wood_fall = Sound('minecraft:block.cherry_wood.fall');

  static const Sound block_cherry_wood_hit = Sound('minecraft:block.cherry_wood.hit');

  static const Sound block_cherry_wood_place = Sound('minecraft:block.cherry_wood.place');

  static const Sound block_cherry_wood_step = Sound('minecraft:block.cherry_wood.step');

  static const Sound block_cherry_wood_button_click_off = Sound('minecraft:block.cherry_wood_button.click_off');

  static const Sound block_cherry_wood_button_click_on = Sound('minecraft:block.cherry_wood_button.click_on');

  static const Sound block_cherry_wood_door_close = Sound('minecraft:block.cherry_wood_door.close');

  static const Sound block_cherry_wood_door_open = Sound('minecraft:block.cherry_wood_door.open');

  static const Sound block_cherry_wood_fence_gate_close = Sound('minecraft:block.cherry_wood_fence_gate.close');

  static const Sound block_cherry_wood_fence_gate_open = Sound('minecraft:block.cherry_wood_fence_gate.open');

  static const Sound block_cherry_wood_hanging_sign_break = Sound('minecraft:block.cherry_wood_hanging_sign.break');

  static const Sound block_cherry_wood_hanging_sign_fall = Sound('minecraft:block.cherry_wood_hanging_sign.fall');

  static const Sound block_cherry_wood_hanging_sign_hit = Sound('minecraft:block.cherry_wood_hanging_sign.hit');

  static const Sound block_cherry_wood_hanging_sign_place = Sound('minecraft:block.cherry_wood_hanging_sign.place');

  static const Sound block_cherry_wood_hanging_sign_step = Sound('minecraft:block.cherry_wood_hanging_sign.step');

  static const Sound block_cherry_wood_pressure_plate_click_off = Sound('minecraft:block.cherry_wood_pressure_plate.click_off');

  static const Sound block_cherry_wood_pressure_plate_click_on = Sound('minecraft:block.cherry_wood_pressure_plate.click_on');

  static const Sound block_cherry_wood_trapdoor_close = Sound('minecraft:block.cherry_wood_trapdoor.close');

  static const Sound block_cherry_wood_trapdoor_open = Sound('minecraft:block.cherry_wood_trapdoor.open');

  static const Sound block_chest_close = Sound('minecraft:block.chest.close');

  static const Sound block_chest_locked = Sound('minecraft:block.chest.locked');

  static const Sound block_chest_open = Sound('minecraft:block.chest.open');

  static const Sound block_chiseled_bookshelf_break = Sound('minecraft:block.chiseled_bookshelf.break');

  static const Sound block_chiseled_bookshelf_fall = Sound('minecraft:block.chiseled_bookshelf.fall');

  static const Sound block_chiseled_bookshelf_hit = Sound('minecraft:block.chiseled_bookshelf.hit');

  static const Sound block_chiseled_bookshelf_insert = Sound('minecraft:block.chiseled_bookshelf.insert');

  static const Sound block_chiseled_bookshelf_insert_enchanted = Sound('minecraft:block.chiseled_bookshelf.insert.enchanted');

  static const Sound block_chiseled_bookshelf_pickup = Sound('minecraft:block.chiseled_bookshelf.pickup');

  static const Sound block_chiseled_bookshelf_pickup_enchanted = Sound('minecraft:block.chiseled_bookshelf.pickup.enchanted');

  static const Sound block_chiseled_bookshelf_place = Sound('minecraft:block.chiseled_bookshelf.place');

  static const Sound block_chiseled_bookshelf_step = Sound('minecraft:block.chiseled_bookshelf.step');

  static const Sound block_chorus_flower_death = Sound('minecraft:block.chorus_flower.death');

  static const Sound block_chorus_flower_grow = Sound('minecraft:block.chorus_flower.grow');

  static const Sound block_cobweb_break = Sound('minecraft:block.cobweb.break');

  static const Sound block_cobweb_fall = Sound('minecraft:block.cobweb.fall');

  static const Sound block_cobweb_hit = Sound('minecraft:block.cobweb.hit');

  static const Sound block_cobweb_place = Sound('minecraft:block.cobweb.place');

  static const Sound block_cobweb_step = Sound('minecraft:block.cobweb.step');

  static const Sound block_comparator_click = Sound('minecraft:block.comparator.click');

  static const Sound block_composter_empty = Sound('minecraft:block.composter.empty');

  static const Sound block_composter_fill = Sound('minecraft:block.composter.fill');

  static const Sound block_composter_fill_success = Sound('minecraft:block.composter.fill_success');

  static const Sound block_composter_ready = Sound('minecraft:block.composter.ready');

  static const Sound block_conduit_activate = Sound('minecraft:block.conduit.activate');

  static const Sound block_conduit_ambient = Sound('minecraft:block.conduit.ambient');

  static const Sound block_conduit_ambient_short = Sound('minecraft:block.conduit.ambient.short');

  static const Sound block_conduit_attack_target = Sound('minecraft:block.conduit.attack.target');

  static const Sound block_conduit_deactivate = Sound('minecraft:block.conduit.deactivate');

  static const Sound block_copper_break = Sound('minecraft:block.copper.break');

  static const Sound block_copper_fall = Sound('minecraft:block.copper.fall');

  static const Sound block_copper_hit = Sound('minecraft:block.copper.hit');

  static const Sound block_copper_place = Sound('minecraft:block.copper.place');

  static const Sound block_copper_step = Sound('minecraft:block.copper.step');

  static const Sound block_copper_bulb_break = Sound('minecraft:block.copper_bulb.break');

  static const Sound block_copper_bulb_fall = Sound('minecraft:block.copper_bulb.fall');

  static const Sound block_copper_bulb_hit = Sound('minecraft:block.copper_bulb.hit');

  static const Sound block_copper_bulb_place = Sound('minecraft:block.copper_bulb.place');

  static const Sound block_copper_bulb_step = Sound('minecraft:block.copper_bulb.step');

  static const Sound block_copper_bulb_turn_off = Sound('minecraft:block.copper_bulb.turn_off');

  static const Sound block_copper_bulb_turn_on = Sound('minecraft:block.copper_bulb.turn_on');

  static const Sound block_copper_door_close = Sound('minecraft:block.copper_door.close');

  static const Sound block_copper_door_open = Sound('minecraft:block.copper_door.open');

  static const Sound block_copper_grate_break = Sound('minecraft:block.copper_grate.break');

  static const Sound block_copper_grate_fall = Sound('minecraft:block.copper_grate.fall');

  static const Sound block_copper_grate_hit = Sound('minecraft:block.copper_grate.hit');

  static const Sound block_copper_grate_place = Sound('minecraft:block.copper_grate.place');

  static const Sound block_copper_grate_step = Sound('minecraft:block.copper_grate.step');

  static const Sound block_copper_trapdoor_close = Sound('minecraft:block.copper_trapdoor.close');

  static const Sound block_copper_trapdoor_open = Sound('minecraft:block.copper_trapdoor.open');

  static const Sound block_coral_block_break = Sound('minecraft:block.coral_block.break');

  static const Sound block_coral_block_fall = Sound('minecraft:block.coral_block.fall');

  static const Sound block_coral_block_hit = Sound('minecraft:block.coral_block.hit');

  static const Sound block_coral_block_place = Sound('minecraft:block.coral_block.place');

  static const Sound block_coral_block_step = Sound('minecraft:block.coral_block.step');

  static const Sound block_crafter_craft = Sound('minecraft:block.crafter.craft');

  static const Sound block_crafter_fail = Sound('minecraft:block.crafter.fail');

  static const Sound block_crop_break = Sound('minecraft:block.crop.break');

  static const Sound block_decorated_pot_break = Sound('minecraft:block.decorated_pot.break');

  static const Sound block_decorated_pot_fall = Sound('minecraft:block.decorated_pot.fall');

  static const Sound block_decorated_pot_hit = Sound('minecraft:block.decorated_pot.hit');

  static const Sound block_decorated_pot_insert = Sound('minecraft:block.decorated_pot.insert');

  static const Sound block_decorated_pot_insert_fail = Sound('minecraft:block.decorated_pot.insert_fail');

  static const Sound block_decorated_pot_place = Sound('minecraft:block.decorated_pot.place');

  static const Sound block_decorated_pot_shatter = Sound('minecraft:block.decorated_pot.shatter');

  static const Sound block_decorated_pot_step = Sound('minecraft:block.decorated_pot.step');

  static const Sound block_deepslate_break = Sound('minecraft:block.deepslate.break');

  static const Sound block_deepslate_fall = Sound('minecraft:block.deepslate.fall');

  static const Sound block_deepslate_hit = Sound('minecraft:block.deepslate.hit');

  static const Sound block_deepslate_place = Sound('minecraft:block.deepslate.place');

  static const Sound block_deepslate_step = Sound('minecraft:block.deepslate.step');

  static const Sound block_deepslate_bricks_break = Sound('minecraft:block.deepslate_bricks.break');

  static const Sound block_deepslate_bricks_fall = Sound('minecraft:block.deepslate_bricks.fall');

  static const Sound block_deepslate_bricks_hit = Sound('minecraft:block.deepslate_bricks.hit');

  static const Sound block_deepslate_bricks_place = Sound('minecraft:block.deepslate_bricks.place');

  static const Sound block_deepslate_bricks_step = Sound('minecraft:block.deepslate_bricks.step');

  static const Sound block_deepslate_tiles_break = Sound('minecraft:block.deepslate_tiles.break');

  static const Sound block_deepslate_tiles_fall = Sound('minecraft:block.deepslate_tiles.fall');

  static const Sound block_deepslate_tiles_hit = Sound('minecraft:block.deepslate_tiles.hit');

  static const Sound block_deepslate_tiles_place = Sound('minecraft:block.deepslate_tiles.place');

  static const Sound block_deepslate_tiles_step = Sound('minecraft:block.deepslate_tiles.step');

  static const Sound block_dispenser_dispense = Sound('minecraft:block.dispenser.dispense');

  static const Sound block_dispenser_fail = Sound('minecraft:block.dispenser.fail');

  static const Sound block_dispenser_launch = Sound('minecraft:block.dispenser.launch');

  static const Sound block_dripstone_block_break = Sound('minecraft:block.dripstone_block.break');

  static const Sound block_dripstone_block_fall = Sound('minecraft:block.dripstone_block.fall');

  static const Sound block_dripstone_block_hit = Sound('minecraft:block.dripstone_block.hit');

  static const Sound block_dripstone_block_place = Sound('minecraft:block.dripstone_block.place');

  static const Sound block_dripstone_block_step = Sound('minecraft:block.dripstone_block.step');

  static const Sound block_enchantment_table_use = Sound('minecraft:block.enchantment_table.use');

  static const Sound block_end_gateway_spawn = Sound('minecraft:block.end_gateway.spawn');

  static const Sound block_end_portal_spawn = Sound('minecraft:block.end_portal.spawn');

  static const Sound block_end_portal_frame_fill = Sound('minecraft:block.end_portal_frame.fill');

  static const Sound block_ender_chest_close = Sound('minecraft:block.ender_chest.close');

  static const Sound block_ender_chest_open = Sound('minecraft:block.ender_chest.open');

  static const Sound block_fence_gate_close = Sound('minecraft:block.fence_gate.close');

  static const Sound block_fence_gate_open = Sound('minecraft:block.fence_gate.open');

  static const Sound block_fire_ambient = Sound('minecraft:block.fire.ambient');

  static const Sound block_fire_extinguish = Sound('minecraft:block.fire.extinguish');

  static const Sound block_flowering_azalea_break = Sound('minecraft:block.flowering_azalea.break');

  static const Sound block_flowering_azalea_fall = Sound('minecraft:block.flowering_azalea.fall');

  static const Sound block_flowering_azalea_hit = Sound('minecraft:block.flowering_azalea.hit');

  static const Sound block_flowering_azalea_place = Sound('minecraft:block.flowering_azalea.place');

  static const Sound block_flowering_azalea_step = Sound('minecraft:block.flowering_azalea.step');

  static const Sound block_froglight_break = Sound('minecraft:block.froglight.break');

  static const Sound block_froglight_fall = Sound('minecraft:block.froglight.fall');

  static const Sound block_froglight_hit = Sound('minecraft:block.froglight.hit');

  static const Sound block_froglight_place = Sound('minecraft:block.froglight.place');

  static const Sound block_froglight_step = Sound('minecraft:block.froglight.step');

  static const Sound block_frogspawn_break = Sound('minecraft:block.frogspawn.break');

  static const Sound block_frogspawn_fall = Sound('minecraft:block.frogspawn.fall');

  static const Sound block_frogspawn_hatch = Sound('minecraft:block.frogspawn.hatch');

  static const Sound block_frogspawn_hit = Sound('minecraft:block.frogspawn.hit');

  static const Sound block_frogspawn_place = Sound('minecraft:block.frogspawn.place');

  static const Sound block_frogspawn_step = Sound('minecraft:block.frogspawn.step');

  static const Sound block_fungus_break = Sound('minecraft:block.fungus.break');

  static const Sound block_fungus_fall = Sound('minecraft:block.fungus.fall');

  static const Sound block_fungus_hit = Sound('minecraft:block.fungus.hit');

  static const Sound block_fungus_place = Sound('minecraft:block.fungus.place');

  static const Sound block_fungus_step = Sound('minecraft:block.fungus.step');

  static const Sound block_furnace_fire_crackle = Sound('minecraft:block.furnace.fire_crackle');

  static const Sound block_gilded_blackstone_break = Sound('minecraft:block.gilded_blackstone.break');

  static const Sound block_gilded_blackstone_fall = Sound('minecraft:block.gilded_blackstone.fall');

  static const Sound block_gilded_blackstone_hit = Sound('minecraft:block.gilded_blackstone.hit');

  static const Sound block_gilded_blackstone_place = Sound('minecraft:block.gilded_blackstone.place');

  static const Sound block_gilded_blackstone_step = Sound('minecraft:block.gilded_blackstone.step');

  static const Sound block_glass_break = Sound('minecraft:block.glass.break');

  static const Sound block_glass_fall = Sound('minecraft:block.glass.fall');

  static const Sound block_glass_hit = Sound('minecraft:block.glass.hit');

  static const Sound block_glass_place = Sound('minecraft:block.glass.place');

  static const Sound block_glass_step = Sound('minecraft:block.glass.step');

  static const Sound block_grass_break = Sound('minecraft:block.grass.break');

  static const Sound block_grass_fall = Sound('minecraft:block.grass.fall');

  static const Sound block_grass_hit = Sound('minecraft:block.grass.hit');

  static const Sound block_grass_place = Sound('minecraft:block.grass.place');

  static const Sound block_grass_step = Sound('minecraft:block.grass.step');

  static const Sound block_gravel_break = Sound('minecraft:block.gravel.break');

  static const Sound block_gravel_fall = Sound('minecraft:block.gravel.fall');

  static const Sound block_gravel_hit = Sound('minecraft:block.gravel.hit');

  static const Sound block_gravel_place = Sound('minecraft:block.gravel.place');

  static const Sound block_gravel_step = Sound('minecraft:block.gravel.step');

  static const Sound block_grindstone_use = Sound('minecraft:block.grindstone.use');

  static const Sound block_growing_plant_crop = Sound('minecraft:block.growing_plant.crop');

  static const Sound block_hanging_roots_break = Sound('minecraft:block.hanging_roots.break');

  static const Sound block_hanging_roots_fall = Sound('minecraft:block.hanging_roots.fall');

  static const Sound block_hanging_roots_hit = Sound('minecraft:block.hanging_roots.hit');

  static const Sound block_hanging_roots_place = Sound('minecraft:block.hanging_roots.place');

  static const Sound block_hanging_roots_step = Sound('minecraft:block.hanging_roots.step');

  static const Sound block_hanging_sign_break = Sound('minecraft:block.hanging_sign.break');

  static const Sound block_hanging_sign_fall = Sound('minecraft:block.hanging_sign.fall');

  static const Sound block_hanging_sign_hit = Sound('minecraft:block.hanging_sign.hit');

  static const Sound block_hanging_sign_place = Sound('minecraft:block.hanging_sign.place');

  static const Sound block_hanging_sign_step = Sound('minecraft:block.hanging_sign.step');

  static const Sound block_hanging_sign_waxed_interact_fail = Sound('minecraft:block.hanging_sign.waxed_interact_fail');

  static const Sound block_heavy_core_break = Sound('minecraft:block.heavy_core.break');

  static const Sound block_heavy_core_fall = Sound('minecraft:block.heavy_core.fall');

  static const Sound block_heavy_core_hit = Sound('minecraft:block.heavy_core.hit');

  static const Sound block_heavy_core_place = Sound('minecraft:block.heavy_core.place');

  static const Sound block_heavy_core_step = Sound('minecraft:block.heavy_core.step');

  static const Sound block_honey_block_break = Sound('minecraft:block.honey_block.break');

  static const Sound block_honey_block_fall = Sound('minecraft:block.honey_block.fall');

  static const Sound block_honey_block_hit = Sound('minecraft:block.honey_block.hit');

  static const Sound block_honey_block_place = Sound('minecraft:block.honey_block.place');

  static const Sound block_honey_block_slide = Sound('minecraft:block.honey_block.slide');

  static const Sound block_honey_block_step = Sound('minecraft:block.honey_block.step');

  static const Sound block_iron_door_close = Sound('minecraft:block.iron_door.close');

  static const Sound block_iron_door_open = Sound('minecraft:block.iron_door.open');

  static const Sound block_iron_trapdoor_close = Sound('minecraft:block.iron_trapdoor.close');

  static const Sound block_iron_trapdoor_open = Sound('minecraft:block.iron_trapdoor.open');

  static const Sound block_ladder_break = Sound('minecraft:block.ladder.break');

  static const Sound block_ladder_fall = Sound('minecraft:block.ladder.fall');

  static const Sound block_ladder_hit = Sound('minecraft:block.ladder.hit');

  static const Sound block_ladder_place = Sound('minecraft:block.ladder.place');

  static const Sound block_ladder_step = Sound('minecraft:block.ladder.step');

  static const Sound block_lantern_break = Sound('minecraft:block.lantern.break');

  static const Sound block_lantern_fall = Sound('minecraft:block.lantern.fall');

  static const Sound block_lantern_hit = Sound('minecraft:block.lantern.hit');

  static const Sound block_lantern_place = Sound('minecraft:block.lantern.place');

  static const Sound block_lantern_step = Sound('minecraft:block.lantern.step');

  static const Sound block_large_amethyst_bud_break = Sound('minecraft:block.large_amethyst_bud.break');

  static const Sound block_large_amethyst_bud_place = Sound('minecraft:block.large_amethyst_bud.place');

  static const Sound block_lava_ambient = Sound('minecraft:block.lava.ambient');

  static const Sound block_lava_extinguish = Sound('minecraft:block.lava.extinguish');

  static const Sound block_lava_pop = Sound('minecraft:block.lava.pop');

  static const Sound block_lever_click = Sound('minecraft:block.lever.click');

  static const Sound block_lily_pad_place = Sound('minecraft:block.lily_pad.place');

  static const Sound block_lodestone_break = Sound('minecraft:block.lodestone.break');

  static const Sound block_lodestone_fall = Sound('minecraft:block.lodestone.fall');

  static const Sound block_lodestone_hit = Sound('minecraft:block.lodestone.hit');

  static const Sound block_lodestone_place = Sound('minecraft:block.lodestone.place');

  static const Sound block_lodestone_step = Sound('minecraft:block.lodestone.step');

  static const Sound block_mangrove_roots_break = Sound('minecraft:block.mangrove_roots.break');

  static const Sound block_mangrove_roots_fall = Sound('minecraft:block.mangrove_roots.fall');

  static const Sound block_mangrove_roots_hit = Sound('minecraft:block.mangrove_roots.hit');

  static const Sound block_mangrove_roots_place = Sound('minecraft:block.mangrove_roots.place');

  static const Sound block_mangrove_roots_step = Sound('minecraft:block.mangrove_roots.step');

  static const Sound block_medium_amethyst_bud_break = Sound('minecraft:block.medium_amethyst_bud.break');

  static const Sound block_medium_amethyst_bud_place = Sound('minecraft:block.medium_amethyst_bud.place');

  static const Sound block_metal_break = Sound('minecraft:block.metal.break');

  static const Sound block_metal_fall = Sound('minecraft:block.metal.fall');

  static const Sound block_metal_hit = Sound('minecraft:block.metal.hit');

  static const Sound block_metal_place = Sound('minecraft:block.metal.place');

  static const Sound block_metal_step = Sound('minecraft:block.metal.step');

  static const Sound block_metal_pressure_plate_click_off = Sound('minecraft:block.metal_pressure_plate.click_off');

  static const Sound block_metal_pressure_plate_click_on = Sound('minecraft:block.metal_pressure_plate.click_on');

  static const Sound block_moss_break = Sound('minecraft:block.moss.break');

  static const Sound block_moss_fall = Sound('minecraft:block.moss.fall');

  static const Sound block_moss_hit = Sound('minecraft:block.moss.hit');

  static const Sound block_moss_place = Sound('minecraft:block.moss.place');

  static const Sound block_moss_step = Sound('minecraft:block.moss.step');

  static const Sound block_moss_carpet_break = Sound('minecraft:block.moss_carpet.break');

  static const Sound block_moss_carpet_fall = Sound('minecraft:block.moss_carpet.fall');

  static const Sound block_moss_carpet_hit = Sound('minecraft:block.moss_carpet.hit');

  static const Sound block_moss_carpet_place = Sound('minecraft:block.moss_carpet.place');

  static const Sound block_moss_carpet_step = Sound('minecraft:block.moss_carpet.step');

  static const Sound block_mud_break = Sound('minecraft:block.mud.break');

  static const Sound block_mud_fall = Sound('minecraft:block.mud.fall');

  static const Sound block_mud_hit = Sound('minecraft:block.mud.hit');

  static const Sound block_mud_place = Sound('minecraft:block.mud.place');

  static const Sound block_mud_step = Sound('minecraft:block.mud.step');

  static const Sound block_mud_bricks_break = Sound('minecraft:block.mud_bricks.break');

  static const Sound block_mud_bricks_fall = Sound('minecraft:block.mud_bricks.fall');

  static const Sound block_mud_bricks_hit = Sound('minecraft:block.mud_bricks.hit');

  static const Sound block_mud_bricks_place = Sound('minecraft:block.mud_bricks.place');

  static const Sound block_mud_bricks_step = Sound('minecraft:block.mud_bricks.step');

  static const Sound block_muddy_mangrove_roots_break = Sound('minecraft:block.muddy_mangrove_roots.break');

  static const Sound block_muddy_mangrove_roots_fall = Sound('minecraft:block.muddy_mangrove_roots.fall');

  static const Sound block_muddy_mangrove_roots_hit = Sound('minecraft:block.muddy_mangrove_roots.hit');

  static const Sound block_muddy_mangrove_roots_place = Sound('minecraft:block.muddy_mangrove_roots.place');

  static const Sound block_muddy_mangrove_roots_step = Sound('minecraft:block.muddy_mangrove_roots.step');

  static const Sound block_nether_bricks_break = Sound('minecraft:block.nether_bricks.break');

  static const Sound block_nether_bricks_fall = Sound('minecraft:block.nether_bricks.fall');

  static const Sound block_nether_bricks_hit = Sound('minecraft:block.nether_bricks.hit');

  static const Sound block_nether_bricks_place = Sound('minecraft:block.nether_bricks.place');

  static const Sound block_nether_bricks_step = Sound('minecraft:block.nether_bricks.step');

  static const Sound block_nether_gold_ore_break = Sound('minecraft:block.nether_gold_ore.break');

  static const Sound block_nether_gold_ore_fall = Sound('minecraft:block.nether_gold_ore.fall');

  static const Sound block_nether_gold_ore_hit = Sound('minecraft:block.nether_gold_ore.hit');

  static const Sound block_nether_gold_ore_place = Sound('minecraft:block.nether_gold_ore.place');

  static const Sound block_nether_gold_ore_step = Sound('minecraft:block.nether_gold_ore.step');

  static const Sound block_nether_ore_break = Sound('minecraft:block.nether_ore.break');

  static const Sound block_nether_ore_fall = Sound('minecraft:block.nether_ore.fall');

  static const Sound block_nether_ore_hit = Sound('minecraft:block.nether_ore.hit');

  static const Sound block_nether_ore_place = Sound('minecraft:block.nether_ore.place');

  static const Sound block_nether_ore_step = Sound('minecraft:block.nether_ore.step');

  static const Sound block_nether_sprouts_break = Sound('minecraft:block.nether_sprouts.break');

  static const Sound block_nether_sprouts_fall = Sound('minecraft:block.nether_sprouts.fall');

  static const Sound block_nether_sprouts_hit = Sound('minecraft:block.nether_sprouts.hit');

  static const Sound block_nether_sprouts_place = Sound('minecraft:block.nether_sprouts.place');

  static const Sound block_nether_sprouts_step = Sound('minecraft:block.nether_sprouts.step');

  static const Sound block_nether_wart_break = Sound('minecraft:block.nether_wart.break');

  static const Sound block_nether_wood_break = Sound('minecraft:block.nether_wood.break');

  static const Sound block_nether_wood_fall = Sound('minecraft:block.nether_wood.fall');

  static const Sound block_nether_wood_hit = Sound('minecraft:block.nether_wood.hit');

  static const Sound block_nether_wood_place = Sound('minecraft:block.nether_wood.place');

  static const Sound block_nether_wood_step = Sound('minecraft:block.nether_wood.step');

  static const Sound block_nether_wood_button_click_off = Sound('minecraft:block.nether_wood_button.click_off');

  static const Sound block_nether_wood_button_click_on = Sound('minecraft:block.nether_wood_button.click_on');

  static const Sound block_nether_wood_door_close = Sound('minecraft:block.nether_wood_door.close');

  static const Sound block_nether_wood_door_open = Sound('minecraft:block.nether_wood_door.open');

  static const Sound block_nether_wood_fence_gate_close = Sound('minecraft:block.nether_wood_fence_gate.close');

  static const Sound block_nether_wood_fence_gate_open = Sound('minecraft:block.nether_wood_fence_gate.open');

  static const Sound block_nether_wood_hanging_sign_break = Sound('minecraft:block.nether_wood_hanging_sign.break');

  static const Sound block_nether_wood_hanging_sign_fall = Sound('minecraft:block.nether_wood_hanging_sign.fall');

  static const Sound block_nether_wood_hanging_sign_hit = Sound('minecraft:block.nether_wood_hanging_sign.hit');

  static const Sound block_nether_wood_hanging_sign_place = Sound('minecraft:block.nether_wood_hanging_sign.place');

  static const Sound block_nether_wood_hanging_sign_step = Sound('minecraft:block.nether_wood_hanging_sign.step');

  static const Sound block_nether_wood_pressure_plate_click_off = Sound('minecraft:block.nether_wood_pressure_plate.click_off');

  static const Sound block_nether_wood_pressure_plate_click_on = Sound('minecraft:block.nether_wood_pressure_plate.click_on');

  static const Sound block_nether_wood_trapdoor_close = Sound('minecraft:block.nether_wood_trapdoor.close');

  static const Sound block_nether_wood_trapdoor_open = Sound('minecraft:block.nether_wood_trapdoor.open');

  static const Sound block_netherite_block_break = Sound('minecraft:block.netherite_block.break');

  static const Sound block_netherite_block_fall = Sound('minecraft:block.netherite_block.fall');

  static const Sound block_netherite_block_hit = Sound('minecraft:block.netherite_block.hit');

  static const Sound block_netherite_block_place = Sound('minecraft:block.netherite_block.place');

  static const Sound block_netherite_block_step = Sound('minecraft:block.netherite_block.step');

  static const Sound block_netherrack_break = Sound('minecraft:block.netherrack.break');

  static const Sound block_netherrack_fall = Sound('minecraft:block.netherrack.fall');

  static const Sound block_netherrack_hit = Sound('minecraft:block.netherrack.hit');

  static const Sound block_netherrack_place = Sound('minecraft:block.netherrack.place');

  static const Sound block_netherrack_step = Sound('minecraft:block.netherrack.step');

  static const Sound block_note_block_banjo = Sound('minecraft:block.note_block.banjo');

  static const Sound block_note_block_basedrum = Sound('minecraft:block.note_block.basedrum');

  static const Sound block_note_block_bass = Sound('minecraft:block.note_block.bass');

  static const Sound block_note_block_bell = Sound('minecraft:block.note_block.bell');

  static const Sound block_note_block_bit = Sound('minecraft:block.note_block.bit');

  static const Sound block_note_block_chime = Sound('minecraft:block.note_block.chime');

  static const Sound block_note_block_cow_bell = Sound('minecraft:block.note_block.cow_bell');

  static const Sound block_note_block_didgeridoo = Sound('minecraft:block.note_block.didgeridoo');

  static const Sound block_note_block_flute = Sound('minecraft:block.note_block.flute');

  static const Sound block_note_block_guitar = Sound('minecraft:block.note_block.guitar');

  static const Sound block_note_block_harp = Sound('minecraft:block.note_block.harp');

  static const Sound block_note_block_hat = Sound('minecraft:block.note_block.hat');

  static const Sound block_note_block_imitate_creeper = Sound('minecraft:block.note_block.imitate.creeper');

  static const Sound block_note_block_imitate_ender_dragon = Sound('minecraft:block.note_block.imitate.ender_dragon');

  static const Sound block_note_block_imitate_piglin = Sound('minecraft:block.note_block.imitate.piglin');

  static const Sound block_note_block_imitate_skeleton = Sound('minecraft:block.note_block.imitate.skeleton');

  static const Sound block_note_block_imitate_wither_skeleton = Sound('minecraft:block.note_block.imitate.wither_skeleton');

  static const Sound block_note_block_imitate_zombie = Sound('minecraft:block.note_block.imitate.zombie');

  static const Sound block_note_block_iron_xylophone = Sound('minecraft:block.note_block.iron_xylophone');

  static const Sound block_note_block_pling = Sound('minecraft:block.note_block.pling');

  static const Sound block_note_block_snare = Sound('minecraft:block.note_block.snare');

  static const Sound block_note_block_xylophone = Sound('minecraft:block.note_block.xylophone');

  static const Sound block_nylium_break = Sound('minecraft:block.nylium.break');

  static const Sound block_nylium_fall = Sound('minecraft:block.nylium.fall');

  static const Sound block_nylium_hit = Sound('minecraft:block.nylium.hit');

  static const Sound block_nylium_place = Sound('minecraft:block.nylium.place');

  static const Sound block_nylium_step = Sound('minecraft:block.nylium.step');

  static const Sound block_packed_mud_break = Sound('minecraft:block.packed_mud.break');

  static const Sound block_packed_mud_fall = Sound('minecraft:block.packed_mud.fall');

  static const Sound block_packed_mud_hit = Sound('minecraft:block.packed_mud.hit');

  static const Sound block_packed_mud_place = Sound('minecraft:block.packed_mud.place');

  static const Sound block_packed_mud_step = Sound('minecraft:block.packed_mud.step');

  static const Sound block_pink_petals_break = Sound('minecraft:block.pink_petals.break');

  static const Sound block_pink_petals_fall = Sound('minecraft:block.pink_petals.fall');

  static const Sound block_pink_petals_hit = Sound('minecraft:block.pink_petals.hit');

  static const Sound block_pink_petals_place = Sound('minecraft:block.pink_petals.place');

  static const Sound block_pink_petals_step = Sound('minecraft:block.pink_petals.step');

  static const Sound block_piston_contract = Sound('minecraft:block.piston.contract');

  static const Sound block_piston_extend = Sound('minecraft:block.piston.extend');

  static const Sound block_pointed_dripstone_break = Sound('minecraft:block.pointed_dripstone.break');

  static const Sound block_pointed_dripstone_drip_lava = Sound('minecraft:block.pointed_dripstone.drip_lava');

  static const Sound block_pointed_dripstone_drip_lava_into_cauldron = Sound('minecraft:block.pointed_dripstone.drip_lava_into_cauldron');

  static const Sound block_pointed_dripstone_drip_water = Sound('minecraft:block.pointed_dripstone.drip_water');

  static const Sound block_pointed_dripstone_drip_water_into_cauldron = Sound('minecraft:block.pointed_dripstone.drip_water_into_cauldron');

  static const Sound block_pointed_dripstone_fall = Sound('minecraft:block.pointed_dripstone.fall');

  static const Sound block_pointed_dripstone_hit = Sound('minecraft:block.pointed_dripstone.hit');

  static const Sound block_pointed_dripstone_land = Sound('minecraft:block.pointed_dripstone.land');

  static const Sound block_pointed_dripstone_place = Sound('minecraft:block.pointed_dripstone.place');

  static const Sound block_pointed_dripstone_step = Sound('minecraft:block.pointed_dripstone.step');

  static const Sound block_polished_deepslate_break = Sound('minecraft:block.polished_deepslate.break');

  static const Sound block_polished_deepslate_fall = Sound('minecraft:block.polished_deepslate.fall');

  static const Sound block_polished_deepslate_hit = Sound('minecraft:block.polished_deepslate.hit');

  static const Sound block_polished_deepslate_place = Sound('minecraft:block.polished_deepslate.place');

  static const Sound block_polished_deepslate_step = Sound('minecraft:block.polished_deepslate.step');

  static const Sound block_polished_tuff_break = Sound('minecraft:block.polished_tuff.break');

  static const Sound block_polished_tuff_fall = Sound('minecraft:block.polished_tuff.fall');

  static const Sound block_polished_tuff_hit = Sound('minecraft:block.polished_tuff.hit');

  static const Sound block_polished_tuff_place = Sound('minecraft:block.polished_tuff.place');

  static const Sound block_polished_tuff_step = Sound('minecraft:block.polished_tuff.step');

  static const Sound block_portal_ambient = Sound('minecraft:block.portal.ambient');

  static const Sound block_portal_travel = Sound('minecraft:block.portal.travel');

  static const Sound block_portal_trigger = Sound('minecraft:block.portal.trigger');

  static const Sound block_powder_snow_break = Sound('minecraft:block.powder_snow.break');

  static const Sound block_powder_snow_fall = Sound('minecraft:block.powder_snow.fall');

  static const Sound block_powder_snow_hit = Sound('minecraft:block.powder_snow.hit');

  static const Sound block_powder_snow_place = Sound('minecraft:block.powder_snow.place');

  static const Sound block_powder_snow_step = Sound('minecraft:block.powder_snow.step');

  static const Sound block_pumpkin_carve = Sound('minecraft:block.pumpkin.carve');

  static const Sound block_redstone_torch_burnout = Sound('minecraft:block.redstone_torch.burnout');

  static const Sound block_respawn_anchor_ambient = Sound('minecraft:block.respawn_anchor.ambient');

  static const Sound block_respawn_anchor_charge = Sound('minecraft:block.respawn_anchor.charge');

  static const Sound block_respawn_anchor_deplete = Sound('minecraft:block.respawn_anchor.deplete');

  static const Sound block_respawn_anchor_set_spawn = Sound('minecraft:block.respawn_anchor.set_spawn');

  static const Sound block_rooted_dirt_break = Sound('minecraft:block.rooted_dirt.break');

  static const Sound block_rooted_dirt_fall = Sound('minecraft:block.rooted_dirt.fall');

  static const Sound block_rooted_dirt_hit = Sound('minecraft:block.rooted_dirt.hit');

  static const Sound block_rooted_dirt_place = Sound('minecraft:block.rooted_dirt.place');

  static const Sound block_rooted_dirt_step = Sound('minecraft:block.rooted_dirt.step');

  static const Sound block_roots_break = Sound('minecraft:block.roots.break');

  static const Sound block_roots_fall = Sound('minecraft:block.roots.fall');

  static const Sound block_roots_hit = Sound('minecraft:block.roots.hit');

  static const Sound block_roots_place = Sound('minecraft:block.roots.place');

  static const Sound block_roots_step = Sound('minecraft:block.roots.step');

  static const Sound block_sand_break = Sound('minecraft:block.sand.break');

  static const Sound block_sand_fall = Sound('minecraft:block.sand.fall');

  static const Sound block_sand_hit = Sound('minecraft:block.sand.hit');

  static const Sound block_sand_place = Sound('minecraft:block.sand.place');

  static const Sound block_sand_step = Sound('minecraft:block.sand.step');

  static const Sound block_scaffolding_break = Sound('minecraft:block.scaffolding.break');

  static const Sound block_scaffolding_fall = Sound('minecraft:block.scaffolding.fall');

  static const Sound block_scaffolding_hit = Sound('minecraft:block.scaffolding.hit');

  static const Sound block_scaffolding_place = Sound('minecraft:block.scaffolding.place');

  static const Sound block_scaffolding_step = Sound('minecraft:block.scaffolding.step');

  static const Sound block_sculk_break = Sound('minecraft:block.sculk.break');

  static const Sound block_sculk_charge = Sound('minecraft:block.sculk.charge');

  static const Sound block_sculk_fall = Sound('minecraft:block.sculk.fall');

  static const Sound block_sculk_hit = Sound('minecraft:block.sculk.hit');

  static const Sound block_sculk_place = Sound('minecraft:block.sculk.place');

  static const Sound block_sculk_spread = Sound('minecraft:block.sculk.spread');

  static const Sound block_sculk_step = Sound('minecraft:block.sculk.step');

  static const Sound block_sculk_catalyst_bloom = Sound('minecraft:block.sculk_catalyst.bloom');

  static const Sound block_sculk_catalyst_break = Sound('minecraft:block.sculk_catalyst.break');

  static const Sound block_sculk_catalyst_fall = Sound('minecraft:block.sculk_catalyst.fall');

  static const Sound block_sculk_catalyst_hit = Sound('minecraft:block.sculk_catalyst.hit');

  static const Sound block_sculk_catalyst_place = Sound('minecraft:block.sculk_catalyst.place');

  static const Sound block_sculk_catalyst_step = Sound('minecraft:block.sculk_catalyst.step');

  static const Sound block_sculk_sensor_break = Sound('minecraft:block.sculk_sensor.break');

  static const Sound block_sculk_sensor_clicking = Sound('minecraft:block.sculk_sensor.clicking');

  static const Sound block_sculk_sensor_clicking_stop = Sound('minecraft:block.sculk_sensor.clicking_stop');

  static const Sound block_sculk_sensor_fall = Sound('minecraft:block.sculk_sensor.fall');

  static const Sound block_sculk_sensor_hit = Sound('minecraft:block.sculk_sensor.hit');

  static const Sound block_sculk_sensor_place = Sound('minecraft:block.sculk_sensor.place');

  static const Sound block_sculk_sensor_step = Sound('minecraft:block.sculk_sensor.step');

  static const Sound block_sculk_shrieker_break = Sound('minecraft:block.sculk_shrieker.break');

  static const Sound block_sculk_shrieker_fall = Sound('minecraft:block.sculk_shrieker.fall');

  static const Sound block_sculk_shrieker_hit = Sound('minecraft:block.sculk_shrieker.hit');

  static const Sound block_sculk_shrieker_place = Sound('minecraft:block.sculk_shrieker.place');

  static const Sound block_sculk_shrieker_shriek = Sound('minecraft:block.sculk_shrieker.shriek');

  static const Sound block_sculk_shrieker_step = Sound('minecraft:block.sculk_shrieker.step');

  static const Sound block_sculk_vein_break = Sound('minecraft:block.sculk_vein.break');

  static const Sound block_sculk_vein_fall = Sound('minecraft:block.sculk_vein.fall');

  static const Sound block_sculk_vein_hit = Sound('minecraft:block.sculk_vein.hit');

  static const Sound block_sculk_vein_place = Sound('minecraft:block.sculk_vein.place');

  static const Sound block_sculk_vein_step = Sound('minecraft:block.sculk_vein.step');

  static const Sound block_shroomlight_break = Sound('minecraft:block.shroomlight.break');

  static const Sound block_shroomlight_fall = Sound('minecraft:block.shroomlight.fall');

  static const Sound block_shroomlight_hit = Sound('minecraft:block.shroomlight.hit');

  static const Sound block_shroomlight_place = Sound('minecraft:block.shroomlight.place');

  static const Sound block_shroomlight_step = Sound('minecraft:block.shroomlight.step');

  static const Sound block_shulker_box_close = Sound('minecraft:block.shulker_box.close');

  static const Sound block_shulker_box_open = Sound('minecraft:block.shulker_box.open');

  static const Sound block_sign_waxed_interact_fail = Sound('minecraft:block.sign.waxed_interact_fail');

  static const Sound block_slime_block_break = Sound('minecraft:block.slime_block.break');

  static const Sound block_slime_block_fall = Sound('minecraft:block.slime_block.fall');

  static const Sound block_slime_block_hit = Sound('minecraft:block.slime_block.hit');

  static const Sound block_slime_block_place = Sound('minecraft:block.slime_block.place');

  static const Sound block_slime_block_step = Sound('minecraft:block.slime_block.step');

  static const Sound block_small_amethyst_bud_break = Sound('minecraft:block.small_amethyst_bud.break');

  static const Sound block_small_amethyst_bud_place = Sound('minecraft:block.small_amethyst_bud.place');

  static const Sound block_small_dripleaf_break = Sound('minecraft:block.small_dripleaf.break');

  static const Sound block_small_dripleaf_fall = Sound('minecraft:block.small_dripleaf.fall');

  static const Sound block_small_dripleaf_hit = Sound('minecraft:block.small_dripleaf.hit');

  static const Sound block_small_dripleaf_place = Sound('minecraft:block.small_dripleaf.place');

  static const Sound block_small_dripleaf_step = Sound('minecraft:block.small_dripleaf.step');

  static const Sound block_smithing_table_use = Sound('minecraft:block.smithing_table.use');

  static const Sound block_smoker_smoke = Sound('minecraft:block.smoker.smoke');

  static const Sound block_sniffer_egg_crack = Sound('minecraft:block.sniffer_egg.crack');

  static const Sound block_sniffer_egg_hatch = Sound('minecraft:block.sniffer_egg.hatch');

  static const Sound block_sniffer_egg_plop = Sound('minecraft:block.sniffer_egg.plop');

  static const Sound block_snow_break = Sound('minecraft:block.snow.break');

  static const Sound block_snow_fall = Sound('minecraft:block.snow.fall');

  static const Sound block_snow_hit = Sound('minecraft:block.snow.hit');

  static const Sound block_snow_place = Sound('minecraft:block.snow.place');

  static const Sound block_snow_step = Sound('minecraft:block.snow.step');

  static const Sound block_soul_sand_break = Sound('minecraft:block.soul_sand.break');

  static const Sound block_soul_sand_fall = Sound('minecraft:block.soul_sand.fall');

  static const Sound block_soul_sand_hit = Sound('minecraft:block.soul_sand.hit');

  static const Sound block_soul_sand_place = Sound('minecraft:block.soul_sand.place');

  static const Sound block_soul_sand_step = Sound('minecraft:block.soul_sand.step');

  static const Sound block_soul_soil_break = Sound('minecraft:block.soul_soil.break');

  static const Sound block_soul_soil_fall = Sound('minecraft:block.soul_soil.fall');

  static const Sound block_soul_soil_hit = Sound('minecraft:block.soul_soil.hit');

  static const Sound block_soul_soil_place = Sound('minecraft:block.soul_soil.place');

  static const Sound block_soul_soil_step = Sound('minecraft:block.soul_soil.step');

  static const Sound block_sponge_absorb = Sound('minecraft:block.sponge.absorb');

  static const Sound block_sponge_break = Sound('minecraft:block.sponge.break');

  static const Sound block_sponge_fall = Sound('minecraft:block.sponge.fall');

  static const Sound block_sponge_hit = Sound('minecraft:block.sponge.hit');

  static const Sound block_sponge_place = Sound('minecraft:block.sponge.place');

  static const Sound block_sponge_step = Sound('minecraft:block.sponge.step');

  static const Sound block_spore_blossom_break = Sound('minecraft:block.spore_blossom.break');

  static const Sound block_spore_blossom_fall = Sound('minecraft:block.spore_blossom.fall');

  static const Sound block_spore_blossom_hit = Sound('minecraft:block.spore_blossom.hit');

  static const Sound block_spore_blossom_place = Sound('minecraft:block.spore_blossom.place');

  static const Sound block_spore_blossom_step = Sound('minecraft:block.spore_blossom.step');

  static const Sound block_stem_break = Sound('minecraft:block.stem.break');

  static const Sound block_stem_fall = Sound('minecraft:block.stem.fall');

  static const Sound block_stem_hit = Sound('minecraft:block.stem.hit');

  static const Sound block_stem_place = Sound('minecraft:block.stem.place');

  static const Sound block_stem_step = Sound('minecraft:block.stem.step');

  static const Sound block_stone_break = Sound('minecraft:block.stone.break');

  static const Sound block_stone_fall = Sound('minecraft:block.stone.fall');

  static const Sound block_stone_hit = Sound('minecraft:block.stone.hit');

  static const Sound block_stone_place = Sound('minecraft:block.stone.place');

  static const Sound block_stone_step = Sound('minecraft:block.stone.step');

  static const Sound block_stone_button_click_off = Sound('minecraft:block.stone_button.click_off');

  static const Sound block_stone_button_click_on = Sound('minecraft:block.stone_button.click_on');

  static const Sound block_stone_pressure_plate_click_off = Sound('minecraft:block.stone_pressure_plate.click_off');

  static const Sound block_stone_pressure_plate_click_on = Sound('minecraft:block.stone_pressure_plate.click_on');

  static const Sound block_suspicious_gravel_break = Sound('minecraft:block.suspicious_gravel.break');

  static const Sound block_suspicious_gravel_fall = Sound('minecraft:block.suspicious_gravel.fall');

  static const Sound block_suspicious_gravel_hit = Sound('minecraft:block.suspicious_gravel.hit');

  static const Sound block_suspicious_gravel_place = Sound('minecraft:block.suspicious_gravel.place');

  static const Sound block_suspicious_gravel_step = Sound('minecraft:block.suspicious_gravel.step');

  static const Sound block_suspicious_sand_break = Sound('minecraft:block.suspicious_sand.break');

  static const Sound block_suspicious_sand_fall = Sound('minecraft:block.suspicious_sand.fall');

  static const Sound block_suspicious_sand_hit = Sound('minecraft:block.suspicious_sand.hit');

  static const Sound block_suspicious_sand_place = Sound('minecraft:block.suspicious_sand.place');

  static const Sound block_suspicious_sand_step = Sound('minecraft:block.suspicious_sand.step');

  static const Sound block_sweet_berry_bush_break = Sound('minecraft:block.sweet_berry_bush.break');

  static const Sound block_sweet_berry_bush_pick_berries = Sound('minecraft:block.sweet_berry_bush.pick_berries');

  static const Sound block_sweet_berry_bush_place = Sound('minecraft:block.sweet_berry_bush.place');

  static const Sound block_trial_spawner_about_to_spawn_item = Sound('minecraft:block.trial_spawner.about_to_spawn_item');

  static const Sound block_trial_spawner_ambient = Sound('minecraft:block.trial_spawner.ambient');

  static const Sound block_trial_spawner_ambient_ominous = Sound('minecraft:block.trial_spawner.ambient_ominous');

  static const Sound block_trial_spawner_break = Sound('minecraft:block.trial_spawner.break');

  static const Sound block_trial_spawner_close_shutter = Sound('minecraft:block.trial_spawner.close_shutter');

  static const Sound block_trial_spawner_detect_player = Sound('minecraft:block.trial_spawner.detect_player');

  static const Sound block_trial_spawner_eject_item = Sound('minecraft:block.trial_spawner.eject_item');

  static const Sound block_trial_spawner_fall = Sound('minecraft:block.trial_spawner.fall');

  static const Sound block_trial_spawner_hit = Sound('minecraft:block.trial_spawner.hit');

  static const Sound block_trial_spawner_ominous_activate = Sound('minecraft:block.trial_spawner.ominous_activate');

  static const Sound block_trial_spawner_open_shutter = Sound('minecraft:block.trial_spawner.open_shutter');

  static const Sound block_trial_spawner_place = Sound('minecraft:block.trial_spawner.place');

  static const Sound block_trial_spawner_spawn_item = Sound('minecraft:block.trial_spawner.spawn_item');

  static const Sound block_trial_spawner_spawn_item_begin = Sound('minecraft:block.trial_spawner.spawn_item_begin');

  static const Sound block_trial_spawner_spawn_mob = Sound('minecraft:block.trial_spawner.spawn_mob');

  static const Sound block_trial_spawner_step = Sound('minecraft:block.trial_spawner.step');

  static const Sound block_tripwire_attach = Sound('minecraft:block.tripwire.attach');

  static const Sound block_tripwire_click_off = Sound('minecraft:block.tripwire.click_off');

  static const Sound block_tripwire_click_on = Sound('minecraft:block.tripwire.click_on');

  static const Sound block_tripwire_detach = Sound('minecraft:block.tripwire.detach');

  static const Sound block_tuff_break = Sound('minecraft:block.tuff.break');

  static const Sound block_tuff_fall = Sound('minecraft:block.tuff.fall');

  static const Sound block_tuff_hit = Sound('minecraft:block.tuff.hit');

  static const Sound block_tuff_place = Sound('minecraft:block.tuff.place');

  static const Sound block_tuff_step = Sound('minecraft:block.tuff.step');

  static const Sound block_tuff_bricks_break = Sound('minecraft:block.tuff_bricks.break');

  static const Sound block_tuff_bricks_fall = Sound('minecraft:block.tuff_bricks.fall');

  static const Sound block_tuff_bricks_hit = Sound('minecraft:block.tuff_bricks.hit');

  static const Sound block_tuff_bricks_place = Sound('minecraft:block.tuff_bricks.place');

  static const Sound block_tuff_bricks_step = Sound('minecraft:block.tuff_bricks.step');

  static const Sound block_vault_activate = Sound('minecraft:block.vault.activate');

  static const Sound block_vault_ambient = Sound('minecraft:block.vault.ambient');

  static const Sound block_vault_break = Sound('minecraft:block.vault.break');

  static const Sound block_vault_close_shutter = Sound('minecraft:block.vault.close_shutter');

  static const Sound block_vault_deactivate = Sound('minecraft:block.vault.deactivate');

  static const Sound block_vault_eject_item = Sound('minecraft:block.vault.eject_item');

  static const Sound block_vault_fall = Sound('minecraft:block.vault.fall');

  static const Sound block_vault_hit = Sound('minecraft:block.vault.hit');

  static const Sound block_vault_insert_item = Sound('minecraft:block.vault.insert_item');

  static const Sound block_vault_insert_item_fail = Sound('minecraft:block.vault.insert_item_fail');

  static const Sound block_vault_open_shutter = Sound('minecraft:block.vault.open_shutter');

  static const Sound block_vault_place = Sound('minecraft:block.vault.place');

  static const Sound block_vault_reject_rewarded_player = Sound('minecraft:block.vault.reject_rewarded_player');

  static const Sound block_vault_step = Sound('minecraft:block.vault.step');

  static const Sound block_vine_break = Sound('minecraft:block.vine.break');

  static const Sound block_vine_fall = Sound('minecraft:block.vine.fall');

  static const Sound block_vine_hit = Sound('minecraft:block.vine.hit');

  static const Sound block_vine_place = Sound('minecraft:block.vine.place');

  static const Sound block_vine_step = Sound('minecraft:block.vine.step');

  static const Sound block_wart_block_break = Sound('minecraft:block.wart_block.break');

  static const Sound block_wart_block_fall = Sound('minecraft:block.wart_block.fall');

  static const Sound block_wart_block_hit = Sound('minecraft:block.wart_block.hit');

  static const Sound block_wart_block_place = Sound('minecraft:block.wart_block.place');

  static const Sound block_wart_block_step = Sound('minecraft:block.wart_block.step');

  static const Sound block_water_ambient = Sound('minecraft:block.water.ambient');

  static const Sound block_weeping_vines_break = Sound('minecraft:block.weeping_vines.break');

  static const Sound block_weeping_vines_fall = Sound('minecraft:block.weeping_vines.fall');

  static const Sound block_weeping_vines_hit = Sound('minecraft:block.weeping_vines.hit');

  static const Sound block_weeping_vines_place = Sound('minecraft:block.weeping_vines.place');

  static const Sound block_weeping_vines_step = Sound('minecraft:block.weeping_vines.step');

  static const Sound block_wet_grass_break = Sound('minecraft:block.wet_grass.break');

  static const Sound block_wet_grass_fall = Sound('minecraft:block.wet_grass.fall');

  static const Sound block_wet_grass_hit = Sound('minecraft:block.wet_grass.hit');

  static const Sound block_wet_grass_place = Sound('minecraft:block.wet_grass.place');

  static const Sound block_wet_grass_step = Sound('minecraft:block.wet_grass.step');

  static const Sound block_wet_sponge_break = Sound('minecraft:block.wet_sponge.break');

  static const Sound block_wet_sponge_dries = Sound('minecraft:block.wet_sponge.dries');

  static const Sound block_wet_sponge_fall = Sound('minecraft:block.wet_sponge.fall');

  static const Sound block_wet_sponge_hit = Sound('minecraft:block.wet_sponge.hit');

  static const Sound block_wet_sponge_place = Sound('minecraft:block.wet_sponge.place');

  static const Sound block_wet_sponge_step = Sound('minecraft:block.wet_sponge.step');

  static const Sound block_wood_break = Sound('minecraft:block.wood.break');

  static const Sound block_wood_fall = Sound('minecraft:block.wood.fall');

  static const Sound block_wood_hit = Sound('minecraft:block.wood.hit');

  static const Sound block_wood_place = Sound('minecraft:block.wood.place');

  static const Sound block_wood_step = Sound('minecraft:block.wood.step');

  static const Sound block_wooden_button_click_off = Sound('minecraft:block.wooden_button.click_off');

  static const Sound block_wooden_button_click_on = Sound('minecraft:block.wooden_button.click_on');

  static const Sound block_wooden_door_close = Sound('minecraft:block.wooden_door.close');

  static const Sound block_wooden_door_open = Sound('minecraft:block.wooden_door.open');

  static const Sound block_wooden_pressure_plate_click_off = Sound('minecraft:block.wooden_pressure_plate.click_off');

  static const Sound block_wooden_pressure_plate_click_on = Sound('minecraft:block.wooden_pressure_plate.click_on');

  static const Sound block_wooden_trapdoor_close = Sound('minecraft:block.wooden_trapdoor.close');

  static const Sound block_wooden_trapdoor_open = Sound('minecraft:block.wooden_trapdoor.open');

  static const Sound block_wool_break = Sound('minecraft:block.wool.break');

  static const Sound block_wool_fall = Sound('minecraft:block.wool.fall');

  static const Sound block_wool_hit = Sound('minecraft:block.wool.hit');

  static const Sound block_wool_place = Sound('minecraft:block.wool.place');

  static const Sound block_wool_step = Sound('minecraft:block.wool.step');

  static const Sound enchant_thorns_hit = Sound('minecraft:enchant.thorns.hit');

  static const Sound entity_allay_ambient_with_item = Sound('minecraft:entity.allay.ambient_with_item');

  static const Sound entity_allay_ambient_without_item = Sound('minecraft:entity.allay.ambient_without_item');

  static const Sound entity_allay_death = Sound('minecraft:entity.allay.death');

  static const Sound entity_allay_hurt = Sound('minecraft:entity.allay.hurt');

  static const Sound entity_allay_item_given = Sound('minecraft:entity.allay.item_given');

  static const Sound entity_allay_item_taken = Sound('minecraft:entity.allay.item_taken');

  static const Sound entity_allay_item_thrown = Sound('minecraft:entity.allay.item_thrown');

  static const Sound entity_armadillo_ambient = Sound('minecraft:entity.armadillo.ambient');

  static const Sound entity_armadillo_brush = Sound('minecraft:entity.armadillo.brush');

  static const Sound entity_armadillo_death = Sound('minecraft:entity.armadillo.death');

  static const Sound entity_armadillo_eat = Sound('minecraft:entity.armadillo.eat');

  static const Sound entity_armadillo_hurt = Sound('minecraft:entity.armadillo.hurt');

  static const Sound entity_armadillo_hurt_reduced = Sound('minecraft:entity.armadillo.hurt_reduced');

  static const Sound entity_armadillo_land = Sound('minecraft:entity.armadillo.land');

  static const Sound entity_armadillo_peek = Sound('minecraft:entity.armadillo.peek');

  static const Sound entity_armadillo_roll = Sound('minecraft:entity.armadillo.roll');

  static const Sound entity_armadillo_scute_drop = Sound('minecraft:entity.armadillo.scute_drop');

  static const Sound entity_armadillo_step = Sound('minecraft:entity.armadillo.step');

  static const Sound entity_armadillo_unroll_finish = Sound('minecraft:entity.armadillo.unroll_finish');

  static const Sound entity_armadillo_unroll_start = Sound('minecraft:entity.armadillo.unroll_start');

  static const Sound entity_armor_stand_break = Sound('minecraft:entity.armor_stand.break');

  static const Sound entity_armor_stand_fall = Sound('minecraft:entity.armor_stand.fall');

  static const Sound entity_armor_stand_hit = Sound('minecraft:entity.armor_stand.hit');

  static const Sound entity_armor_stand_place = Sound('minecraft:entity.armor_stand.place');

  static const Sound entity_arrow_hit = Sound('minecraft:entity.arrow.hit');

  static const Sound entity_arrow_hit_player = Sound('minecraft:entity.arrow.hit_player');

  static const Sound entity_arrow_shoot = Sound('minecraft:entity.arrow.shoot');

  static const Sound entity_axolotl_attack = Sound('minecraft:entity.axolotl.attack');

  static const Sound entity_axolotl_death = Sound('minecraft:entity.axolotl.death');

  static const Sound entity_axolotl_hurt = Sound('minecraft:entity.axolotl.hurt');

  static const Sound entity_axolotl_idle_air = Sound('minecraft:entity.axolotl.idle_air');

  static const Sound entity_axolotl_idle_water = Sound('minecraft:entity.axolotl.idle_water');

  static const Sound entity_axolotl_splash = Sound('minecraft:entity.axolotl.splash');

  static const Sound entity_axolotl_swim = Sound('minecraft:entity.axolotl.swim');

  static const Sound entity_bat_ambient = Sound('minecraft:entity.bat.ambient');

  static const Sound entity_bat_death = Sound('minecraft:entity.bat.death');

  static const Sound entity_bat_hurt = Sound('minecraft:entity.bat.hurt');

  static const Sound entity_bat_loop = Sound('minecraft:entity.bat.loop');

  static const Sound entity_bat_takeoff = Sound('minecraft:entity.bat.takeoff');

  static const Sound entity_bee_death = Sound('minecraft:entity.bee.death');

  static const Sound entity_bee_hurt = Sound('minecraft:entity.bee.hurt');

  static const Sound entity_bee_loop = Sound('minecraft:entity.bee.loop');

  static const Sound entity_bee_loop_aggressive = Sound('minecraft:entity.bee.loop_aggressive');

  static const Sound entity_bee_pollinate = Sound('minecraft:entity.bee.pollinate');

  static const Sound entity_bee_sting = Sound('minecraft:entity.bee.sting');

  static const Sound entity_blaze_ambient = Sound('minecraft:entity.blaze.ambient');

  static const Sound entity_blaze_burn = Sound('minecraft:entity.blaze.burn');

  static const Sound entity_blaze_death = Sound('minecraft:entity.blaze.death');

  static const Sound entity_blaze_hurt = Sound('minecraft:entity.blaze.hurt');

  static const Sound entity_blaze_shoot = Sound('minecraft:entity.blaze.shoot');

  static const Sound entity_boat_paddle_land = Sound('minecraft:entity.boat.paddle_land');

  static const Sound entity_boat_paddle_water = Sound('minecraft:entity.boat.paddle_water');

  static const Sound entity_bogged_ambient = Sound('minecraft:entity.bogged.ambient');

  static const Sound entity_bogged_death = Sound('minecraft:entity.bogged.death');

  static const Sound entity_bogged_hurt = Sound('minecraft:entity.bogged.hurt');

  static const Sound entity_bogged_shear = Sound('minecraft:entity.bogged.shear');

  static const Sound entity_bogged_step = Sound('minecraft:entity.bogged.step');

  static const Sound entity_breeze_charge = Sound('minecraft:entity.breeze.charge');

  static const Sound entity_breeze_death = Sound('minecraft:entity.breeze.death');

  static const Sound entity_breeze_deflect = Sound('minecraft:entity.breeze.deflect');

  static const Sound entity_breeze_hurt = Sound('minecraft:entity.breeze.hurt');

  static const Sound entity_breeze_idle_air = Sound('minecraft:entity.breeze.idle_air');

  static const Sound entity_breeze_idle_ground = Sound('minecraft:entity.breeze.idle_ground');

  static const Sound entity_breeze_inhale = Sound('minecraft:entity.breeze.inhale');

  static const Sound entity_breeze_jump = Sound('minecraft:entity.breeze.jump');

  static const Sound entity_breeze_land = Sound('minecraft:entity.breeze.land');

  static const Sound entity_breeze_shoot = Sound('minecraft:entity.breeze.shoot');

  static const Sound entity_breeze_slide = Sound('minecraft:entity.breeze.slide');

  static const Sound entity_breeze_whirl = Sound('minecraft:entity.breeze.whirl');

  static const Sound entity_breeze_wind_burst = Sound('minecraft:entity.breeze.wind_burst');

  static const Sound entity_camel_ambient = Sound('minecraft:entity.camel.ambient');

  static const Sound entity_camel_dash = Sound('minecraft:entity.camel.dash');

  static const Sound entity_camel_dash_ready = Sound('minecraft:entity.camel.dash_ready');

  static const Sound entity_camel_death = Sound('minecraft:entity.camel.death');

  static const Sound entity_camel_eat = Sound('minecraft:entity.camel.eat');

  static const Sound entity_camel_hurt = Sound('minecraft:entity.camel.hurt');

  static const Sound entity_camel_saddle = Sound('minecraft:entity.camel.saddle');

  static const Sound entity_camel_sit = Sound('minecraft:entity.camel.sit');

  static const Sound entity_camel_stand = Sound('minecraft:entity.camel.stand');

  static const Sound entity_camel_step = Sound('minecraft:entity.camel.step');

  static const Sound entity_camel_step_sand = Sound('minecraft:entity.camel.step_sand');

  static const Sound entity_cat_ambient = Sound('minecraft:entity.cat.ambient');

  static const Sound entity_cat_beg_for_food = Sound('minecraft:entity.cat.beg_for_food');

  static const Sound entity_cat_death = Sound('minecraft:entity.cat.death');

  static const Sound entity_cat_eat = Sound('minecraft:entity.cat.eat');

  static const Sound entity_cat_hiss = Sound('minecraft:entity.cat.hiss');

  static const Sound entity_cat_hurt = Sound('minecraft:entity.cat.hurt');

  static const Sound entity_cat_purr = Sound('minecraft:entity.cat.purr');

  static const Sound entity_cat_purreow = Sound('minecraft:entity.cat.purreow');

  static const Sound entity_cat_stray_ambient = Sound('minecraft:entity.cat.stray_ambient');

  static const Sound entity_chicken_ambient = Sound('minecraft:entity.chicken.ambient');

  static const Sound entity_chicken_death = Sound('minecraft:entity.chicken.death');

  static const Sound entity_chicken_egg = Sound('minecraft:entity.chicken.egg');

  static const Sound entity_chicken_hurt = Sound('minecraft:entity.chicken.hurt');

  static const Sound entity_chicken_step = Sound('minecraft:entity.chicken.step');

  static const Sound entity_cod_ambient = Sound('minecraft:entity.cod.ambient');

  static const Sound entity_cod_death = Sound('minecraft:entity.cod.death');

  static const Sound entity_cod_flop = Sound('minecraft:entity.cod.flop');

  static const Sound entity_cod_hurt = Sound('minecraft:entity.cod.hurt');

  static const Sound entity_cow_ambient = Sound('minecraft:entity.cow.ambient');

  static const Sound entity_cow_death = Sound('minecraft:entity.cow.death');

  static const Sound entity_cow_hurt = Sound('minecraft:entity.cow.hurt');

  static const Sound entity_cow_milk = Sound('minecraft:entity.cow.milk');

  static const Sound entity_cow_step = Sound('minecraft:entity.cow.step');

  static const Sound entity_creeper_death = Sound('minecraft:entity.creeper.death');

  static const Sound entity_creeper_hurt = Sound('minecraft:entity.creeper.hurt');

  static const Sound entity_creeper_primed = Sound('minecraft:entity.creeper.primed');

  static const Sound entity_dolphin_ambient = Sound('minecraft:entity.dolphin.ambient');

  static const Sound entity_dolphin_ambient_water = Sound('minecraft:entity.dolphin.ambient_water');

  static const Sound entity_dolphin_attack = Sound('minecraft:entity.dolphin.attack');

  static const Sound entity_dolphin_death = Sound('minecraft:entity.dolphin.death');

  static const Sound entity_dolphin_eat = Sound('minecraft:entity.dolphin.eat');

  static const Sound entity_dolphin_hurt = Sound('minecraft:entity.dolphin.hurt');

  static const Sound entity_dolphin_jump = Sound('minecraft:entity.dolphin.jump');

  static const Sound entity_dolphin_play = Sound('minecraft:entity.dolphin.play');

  static const Sound entity_dolphin_splash = Sound('minecraft:entity.dolphin.splash');

  static const Sound entity_dolphin_swim = Sound('minecraft:entity.dolphin.swim');

  static const Sound entity_donkey_ambient = Sound('minecraft:entity.donkey.ambient');

  static const Sound entity_donkey_angry = Sound('minecraft:entity.donkey.angry');

  static const Sound entity_donkey_chest = Sound('minecraft:entity.donkey.chest');

  static const Sound entity_donkey_death = Sound('minecraft:entity.donkey.death');

  static const Sound entity_donkey_eat = Sound('minecraft:entity.donkey.eat');

  static const Sound entity_donkey_hurt = Sound('minecraft:entity.donkey.hurt');

  static const Sound entity_donkey_jump = Sound('minecraft:entity.donkey.jump');

  static const Sound entity_dragon_fireball_explode = Sound('minecraft:entity.dragon_fireball.explode');

  static const Sound entity_drowned_ambient = Sound('minecraft:entity.drowned.ambient');

  static const Sound entity_drowned_ambient_water = Sound('minecraft:entity.drowned.ambient_water');

  static const Sound entity_drowned_death = Sound('minecraft:entity.drowned.death');

  static const Sound entity_drowned_death_water = Sound('minecraft:entity.drowned.death_water');

  static const Sound entity_drowned_hurt = Sound('minecraft:entity.drowned.hurt');

  static const Sound entity_drowned_hurt_water = Sound('minecraft:entity.drowned.hurt_water');

  static const Sound entity_drowned_shoot = Sound('minecraft:entity.drowned.shoot');

  static const Sound entity_drowned_step = Sound('minecraft:entity.drowned.step');

  static const Sound entity_drowned_swim = Sound('minecraft:entity.drowned.swim');

  static const Sound entity_egg_throw = Sound('minecraft:entity.egg.throw');

  static const Sound entity_elder_guardian_ambient = Sound('minecraft:entity.elder_guardian.ambient');

  static const Sound entity_elder_guardian_ambient_land = Sound('minecraft:entity.elder_guardian.ambient_land');

  static const Sound entity_elder_guardian_curse = Sound('minecraft:entity.elder_guardian.curse');

  static const Sound entity_elder_guardian_death = Sound('minecraft:entity.elder_guardian.death');

  static const Sound entity_elder_guardian_death_land = Sound('minecraft:entity.elder_guardian.death_land');

  static const Sound entity_elder_guardian_flop = Sound('minecraft:entity.elder_guardian.flop');

  static const Sound entity_elder_guardian_hurt = Sound('minecraft:entity.elder_guardian.hurt');

  static const Sound entity_elder_guardian_hurt_land = Sound('minecraft:entity.elder_guardian.hurt_land');

  static const Sound entity_ender_dragon_ambient = Sound('minecraft:entity.ender_dragon.ambient');

  static const Sound entity_ender_dragon_death = Sound('minecraft:entity.ender_dragon.death');

  static const Sound entity_ender_dragon_flap = Sound('minecraft:entity.ender_dragon.flap');

  static const Sound entity_ender_dragon_growl = Sound('minecraft:entity.ender_dragon.growl');

  static const Sound entity_ender_dragon_hurt = Sound('minecraft:entity.ender_dragon.hurt');

  static const Sound entity_ender_dragon_shoot = Sound('minecraft:entity.ender_dragon.shoot');

  static const Sound entity_ender_eye_death = Sound('minecraft:entity.ender_eye.death');

  static const Sound entity_ender_eye_launch = Sound('minecraft:entity.ender_eye.launch');

  static const Sound entity_ender_pearl_throw = Sound('minecraft:entity.ender_pearl.throw');

  static const Sound entity_enderman_ambient = Sound('minecraft:entity.enderman.ambient');

  static const Sound entity_enderman_death = Sound('minecraft:entity.enderman.death');

  static const Sound entity_enderman_hurt = Sound('minecraft:entity.enderman.hurt');

  static const Sound entity_enderman_scream = Sound('minecraft:entity.enderman.scream');

  static const Sound entity_enderman_stare = Sound('minecraft:entity.enderman.stare');

  static const Sound entity_enderman_teleport = Sound('minecraft:entity.enderman.teleport');

  static const Sound entity_endermite_ambient = Sound('minecraft:entity.endermite.ambient');

  static const Sound entity_endermite_death = Sound('minecraft:entity.endermite.death');

  static const Sound entity_endermite_hurt = Sound('minecraft:entity.endermite.hurt');

  static const Sound entity_endermite_step = Sound('minecraft:entity.endermite.step');

  static const Sound entity_evoker_ambient = Sound('minecraft:entity.evoker.ambient');

  static const Sound entity_evoker_cast_spell = Sound('minecraft:entity.evoker.cast_spell');

  static const Sound entity_evoker_celebrate = Sound('minecraft:entity.evoker.celebrate');

  static const Sound entity_evoker_death = Sound('minecraft:entity.evoker.death');

  static const Sound entity_evoker_hurt = Sound('minecraft:entity.evoker.hurt');

  static const Sound entity_evoker_prepare_attack = Sound('minecraft:entity.evoker.prepare_attack');

  static const Sound entity_evoker_prepare_summon = Sound('minecraft:entity.evoker.prepare_summon');

  static const Sound entity_evoker_prepare_wololo = Sound('minecraft:entity.evoker.prepare_wololo');

  static const Sound entity_evoker_fangs_attack = Sound('minecraft:entity.evoker_fangs.attack');

  static const Sound entity_experience_bottle_throw = Sound('minecraft:entity.experience_bottle.throw');

  static const Sound entity_experience_orb_pickup = Sound('minecraft:entity.experience_orb.pickup');

  static const Sound entity_firework_rocket_blast = Sound('minecraft:entity.firework_rocket.blast');

  static const Sound entity_firework_rocket_blast_far = Sound('minecraft:entity.firework_rocket.blast_far');

  static const Sound entity_firework_rocket_large_blast = Sound('minecraft:entity.firework_rocket.large_blast');

  static const Sound entity_firework_rocket_large_blast_far = Sound('minecraft:entity.firework_rocket.large_blast_far');

  static const Sound entity_firework_rocket_launch = Sound('minecraft:entity.firework_rocket.launch');

  static const Sound entity_firework_rocket_shoot = Sound('minecraft:entity.firework_rocket.shoot');

  static const Sound entity_firework_rocket_twinkle = Sound('minecraft:entity.firework_rocket.twinkle');

  static const Sound entity_firework_rocket_twinkle_far = Sound('minecraft:entity.firework_rocket.twinkle_far');

  static const Sound entity_fish_swim = Sound('minecraft:entity.fish.swim');

  static const Sound entity_fishing_bobber_retrieve = Sound('minecraft:entity.fishing_bobber.retrieve');

  static const Sound entity_fishing_bobber_splash = Sound('minecraft:entity.fishing_bobber.splash');

  static const Sound entity_fishing_bobber_throw = Sound('minecraft:entity.fishing_bobber.throw');

  static const Sound entity_fox_aggro = Sound('minecraft:entity.fox.aggro');

  static const Sound entity_fox_ambient = Sound('minecraft:entity.fox.ambient');

  static const Sound entity_fox_bite = Sound('minecraft:entity.fox.bite');

  static const Sound entity_fox_death = Sound('minecraft:entity.fox.death');

  static const Sound entity_fox_eat = Sound('minecraft:entity.fox.eat');

  static const Sound entity_fox_hurt = Sound('minecraft:entity.fox.hurt');

  static const Sound entity_fox_screech = Sound('minecraft:entity.fox.screech');

  static const Sound entity_fox_sleep = Sound('minecraft:entity.fox.sleep');

  static const Sound entity_fox_sniff = Sound('minecraft:entity.fox.sniff');

  static const Sound entity_fox_spit = Sound('minecraft:entity.fox.spit');

  static const Sound entity_fox_teleport = Sound('minecraft:entity.fox.teleport');

  static const Sound entity_frog_ambient = Sound('minecraft:entity.frog.ambient');

  static const Sound entity_frog_death = Sound('minecraft:entity.frog.death');

  static const Sound entity_frog_eat = Sound('minecraft:entity.frog.eat');

  static const Sound entity_frog_hurt = Sound('minecraft:entity.frog.hurt');

  static const Sound entity_frog_lay_spawn = Sound('minecraft:entity.frog.lay_spawn');

  static const Sound entity_frog_long_jump = Sound('minecraft:entity.frog.long_jump');

  static const Sound entity_frog_step = Sound('minecraft:entity.frog.step');

  static const Sound entity_frog_tongue = Sound('minecraft:entity.frog.tongue');

  static const Sound entity_generic_big_fall = Sound('minecraft:entity.generic.big_fall');

  static const Sound entity_generic_burn = Sound('minecraft:entity.generic.burn');

  static const Sound entity_generic_death = Sound('minecraft:entity.generic.death');

  static const Sound entity_generic_drink = Sound('minecraft:entity.generic.drink');

  static const Sound entity_generic_eat = Sound('minecraft:entity.generic.eat');

  static const Sound entity_generic_explode = Sound('minecraft:entity.generic.explode');

  static const Sound entity_generic_extinguish_fire = Sound('minecraft:entity.generic.extinguish_fire');

  static const Sound entity_generic_hurt = Sound('minecraft:entity.generic.hurt');

  static const Sound entity_generic_small_fall = Sound('minecraft:entity.generic.small_fall');

  static const Sound entity_generic_splash = Sound('minecraft:entity.generic.splash');

  static const Sound entity_generic_swim = Sound('minecraft:entity.generic.swim');

  static const Sound entity_ghast_ambient = Sound('minecraft:entity.ghast.ambient');

  static const Sound entity_ghast_death = Sound('minecraft:entity.ghast.death');

  static const Sound entity_ghast_hurt = Sound('minecraft:entity.ghast.hurt');

  static const Sound entity_ghast_scream = Sound('minecraft:entity.ghast.scream');

  static const Sound entity_ghast_shoot = Sound('minecraft:entity.ghast.shoot');

  static const Sound entity_ghast_warn = Sound('minecraft:entity.ghast.warn');

  static const Sound entity_glow_item_frame_add_item = Sound('minecraft:entity.glow_item_frame.add_item');

  static const Sound entity_glow_item_frame_break = Sound('minecraft:entity.glow_item_frame.break');

  static const Sound entity_glow_item_frame_place = Sound('minecraft:entity.glow_item_frame.place');

  static const Sound entity_glow_item_frame_remove_item = Sound('minecraft:entity.glow_item_frame.remove_item');

  static const Sound entity_glow_item_frame_rotate_item = Sound('minecraft:entity.glow_item_frame.rotate_item');

  static const Sound entity_glow_squid_ambient = Sound('minecraft:entity.glow_squid.ambient');

  static const Sound entity_glow_squid_death = Sound('minecraft:entity.glow_squid.death');

  static const Sound entity_glow_squid_hurt = Sound('minecraft:entity.glow_squid.hurt');

  static const Sound entity_glow_squid_squirt = Sound('minecraft:entity.glow_squid.squirt');

  static const Sound entity_goat_ambient = Sound('minecraft:entity.goat.ambient');

  static const Sound entity_goat_death = Sound('minecraft:entity.goat.death');

  static const Sound entity_goat_eat = Sound('minecraft:entity.goat.eat');

  static const Sound entity_goat_horn_break = Sound('minecraft:entity.goat.horn_break');

  static const Sound entity_goat_hurt = Sound('minecraft:entity.goat.hurt');

  static const Sound entity_goat_long_jump = Sound('minecraft:entity.goat.long_jump');

  static const Sound entity_goat_milk = Sound('minecraft:entity.goat.milk');

  static const Sound entity_goat_prepare_ram = Sound('minecraft:entity.goat.prepare_ram');

  static const Sound entity_goat_ram_impact = Sound('minecraft:entity.goat.ram_impact');

  static const Sound entity_goat_screaming_ambient = Sound('minecraft:entity.goat.screaming.ambient');

  static const Sound entity_goat_screaming_death = Sound('minecraft:entity.goat.screaming.death');

  static const Sound entity_goat_screaming_eat = Sound('minecraft:entity.goat.screaming.eat');

  static const Sound entity_goat_screaming_horn_break = Sound('minecraft:entity.goat.screaming.horn_break');

  static const Sound entity_goat_screaming_hurt = Sound('minecraft:entity.goat.screaming.hurt');

  static const Sound entity_goat_screaming_long_jump = Sound('minecraft:entity.goat.screaming.long_jump');

  static const Sound entity_goat_screaming_milk = Sound('minecraft:entity.goat.screaming.milk');

  static const Sound entity_goat_screaming_prepare_ram = Sound('minecraft:entity.goat.screaming.prepare_ram');

  static const Sound entity_goat_screaming_ram_impact = Sound('minecraft:entity.goat.screaming.ram_impact');

  static const Sound entity_goat_step = Sound('minecraft:entity.goat.step');

  static const Sound entity_guardian_ambient = Sound('minecraft:entity.guardian.ambient');

  static const Sound entity_guardian_ambient_land = Sound('minecraft:entity.guardian.ambient_land');

  static const Sound entity_guardian_attack = Sound('minecraft:entity.guardian.attack');

  static const Sound entity_guardian_death = Sound('minecraft:entity.guardian.death');

  static const Sound entity_guardian_death_land = Sound('minecraft:entity.guardian.death_land');

  static const Sound entity_guardian_flop = Sound('minecraft:entity.guardian.flop');

  static const Sound entity_guardian_hurt = Sound('minecraft:entity.guardian.hurt');

  static const Sound entity_guardian_hurt_land = Sound('minecraft:entity.guardian.hurt_land');

  static const Sound entity_hoglin_ambient = Sound('minecraft:entity.hoglin.ambient');

  static const Sound entity_hoglin_angry = Sound('minecraft:entity.hoglin.angry');

  static const Sound entity_hoglin_attack = Sound('minecraft:entity.hoglin.attack');

  static const Sound entity_hoglin_converted_to_zombified = Sound('minecraft:entity.hoglin.converted_to_zombified');

  static const Sound entity_hoglin_death = Sound('minecraft:entity.hoglin.death');

  static const Sound entity_hoglin_hurt = Sound('minecraft:entity.hoglin.hurt');

  static const Sound entity_hoglin_retreat = Sound('minecraft:entity.hoglin.retreat');

  static const Sound entity_hoglin_step = Sound('minecraft:entity.hoglin.step');

  static const Sound entity_horse_ambient = Sound('minecraft:entity.horse.ambient');

  static const Sound entity_horse_angry = Sound('minecraft:entity.horse.angry');

  static const Sound entity_horse_armor = Sound('minecraft:entity.horse.armor');

  static const Sound entity_horse_breathe = Sound('minecraft:entity.horse.breathe');

  static const Sound entity_horse_death = Sound('minecraft:entity.horse.death');

  static const Sound entity_horse_eat = Sound('minecraft:entity.horse.eat');

  static const Sound entity_horse_gallop = Sound('minecraft:entity.horse.gallop');

  static const Sound entity_horse_hurt = Sound('minecraft:entity.horse.hurt');

  static const Sound entity_horse_jump = Sound('minecraft:entity.horse.jump');

  static const Sound entity_horse_land = Sound('minecraft:entity.horse.land');

  static const Sound entity_horse_saddle = Sound('minecraft:entity.horse.saddle');

  static const Sound entity_horse_step = Sound('minecraft:entity.horse.step');

  static const Sound entity_horse_step_wood = Sound('minecraft:entity.horse.step_wood');

  static const Sound entity_hostile_big_fall = Sound('minecraft:entity.hostile.big_fall');

  static const Sound entity_hostile_death = Sound('minecraft:entity.hostile.death');

  static const Sound entity_hostile_hurt = Sound('minecraft:entity.hostile.hurt');

  static const Sound entity_hostile_small_fall = Sound('minecraft:entity.hostile.small_fall');

  static const Sound entity_hostile_splash = Sound('minecraft:entity.hostile.splash');

  static const Sound entity_hostile_swim = Sound('minecraft:entity.hostile.swim');

  static const Sound entity_husk_ambient = Sound('minecraft:entity.husk.ambient');

  static const Sound entity_husk_converted_to_zombie = Sound('minecraft:entity.husk.converted_to_zombie');

  static const Sound entity_husk_death = Sound('minecraft:entity.husk.death');

  static const Sound entity_husk_hurt = Sound('minecraft:entity.husk.hurt');

  static const Sound entity_husk_step = Sound('minecraft:entity.husk.step');

  static const Sound entity_illusioner_ambient = Sound('minecraft:entity.illusioner.ambient');

  static const Sound entity_illusioner_cast_spell = Sound('minecraft:entity.illusioner.cast_spell');

  static const Sound entity_illusioner_death = Sound('minecraft:entity.illusioner.death');

  static const Sound entity_illusioner_hurt = Sound('minecraft:entity.illusioner.hurt');

  static const Sound entity_illusioner_mirror_move = Sound('minecraft:entity.illusioner.mirror_move');

  static const Sound entity_illusioner_prepare_blindness = Sound('minecraft:entity.illusioner.prepare_blindness');

  static const Sound entity_illusioner_prepare_mirror = Sound('minecraft:entity.illusioner.prepare_mirror');

  static const Sound entity_iron_golem_attack = Sound('minecraft:entity.iron_golem.attack');

  static const Sound entity_iron_golem_damage = Sound('minecraft:entity.iron_golem.damage');

  static const Sound entity_iron_golem_death = Sound('minecraft:entity.iron_golem.death');

  static const Sound entity_iron_golem_hurt = Sound('minecraft:entity.iron_golem.hurt');

  static const Sound entity_iron_golem_repair = Sound('minecraft:entity.iron_golem.repair');

  static const Sound entity_iron_golem_step = Sound('minecraft:entity.iron_golem.step');

  static const Sound entity_item_break = Sound('minecraft:entity.item.break');

  static const Sound entity_item_pickup = Sound('minecraft:entity.item.pickup');

  static const Sound entity_item_frame_add_item = Sound('minecraft:entity.item_frame.add_item');

  static const Sound entity_item_frame_break = Sound('minecraft:entity.item_frame.break');

  static const Sound entity_item_frame_place = Sound('minecraft:entity.item_frame.place');

  static const Sound entity_item_frame_remove_item = Sound('minecraft:entity.item_frame.remove_item');

  static const Sound entity_item_frame_rotate_item = Sound('minecraft:entity.item_frame.rotate_item');

  static const Sound entity_leash_knot_break = Sound('minecraft:entity.leash_knot.break');

  static const Sound entity_leash_knot_place = Sound('minecraft:entity.leash_knot.place');

  static const Sound entity_lightning_bolt_impact = Sound('minecraft:entity.lightning_bolt.impact');

  static const Sound entity_lightning_bolt_thunder = Sound('minecraft:entity.lightning_bolt.thunder');

  static const Sound entity_lingering_potion_throw = Sound('minecraft:entity.lingering_potion.throw');

  static const Sound entity_llama_ambient = Sound('minecraft:entity.llama.ambient');

  static const Sound entity_llama_angry = Sound('minecraft:entity.llama.angry');

  static const Sound entity_llama_chest = Sound('minecraft:entity.llama.chest');

  static const Sound entity_llama_death = Sound('minecraft:entity.llama.death');

  static const Sound entity_llama_eat = Sound('minecraft:entity.llama.eat');

  static const Sound entity_llama_hurt = Sound('minecraft:entity.llama.hurt');

  static const Sound entity_llama_spit = Sound('minecraft:entity.llama.spit');

  static const Sound entity_llama_step = Sound('minecraft:entity.llama.step');

  static const Sound entity_llama_swag = Sound('minecraft:entity.llama.swag');

  static const Sound entity_magma_cube_death = Sound('minecraft:entity.magma_cube.death');

  static const Sound entity_magma_cube_death_small = Sound('minecraft:entity.magma_cube.death_small');

  static const Sound entity_magma_cube_hurt = Sound('minecraft:entity.magma_cube.hurt');

  static const Sound entity_magma_cube_hurt_small = Sound('minecraft:entity.magma_cube.hurt_small');

  static const Sound entity_magma_cube_jump = Sound('minecraft:entity.magma_cube.jump');

  static const Sound entity_magma_cube_squish = Sound('minecraft:entity.magma_cube.squish');

  static const Sound entity_magma_cube_squish_small = Sound('minecraft:entity.magma_cube.squish_small');

  static const Sound entity_minecart_inside = Sound('minecraft:entity.minecart.inside');

  static const Sound entity_minecart_inside_underwater = Sound('minecraft:entity.minecart.inside.underwater');

  static const Sound entity_minecart_riding = Sound('minecraft:entity.minecart.riding');

  static const Sound entity_mooshroom_convert = Sound('minecraft:entity.mooshroom.convert');

  static const Sound entity_mooshroom_eat = Sound('minecraft:entity.mooshroom.eat');

  static const Sound entity_mooshroom_milk = Sound('minecraft:entity.mooshroom.milk');

  static const Sound entity_mooshroom_shear = Sound('minecraft:entity.mooshroom.shear');

  static const Sound entity_mooshroom_suspicious_milk = Sound('minecraft:entity.mooshroom.suspicious_milk');

  static const Sound entity_mule_ambient = Sound('minecraft:entity.mule.ambient');

  static const Sound entity_mule_angry = Sound('minecraft:entity.mule.angry');

  static const Sound entity_mule_chest = Sound('minecraft:entity.mule.chest');

  static const Sound entity_mule_death = Sound('minecraft:entity.mule.death');

  static const Sound entity_mule_eat = Sound('minecraft:entity.mule.eat');

  static const Sound entity_mule_hurt = Sound('minecraft:entity.mule.hurt');

  static const Sound entity_mule_jump = Sound('minecraft:entity.mule.jump');

  static const Sound entity_ocelot_ambient = Sound('minecraft:entity.ocelot.ambient');

  static const Sound entity_ocelot_death = Sound('minecraft:entity.ocelot.death');

  static const Sound entity_ocelot_hurt = Sound('minecraft:entity.ocelot.hurt');

  static const Sound entity_painting_break = Sound('minecraft:entity.painting.break');

  static const Sound entity_painting_place = Sound('minecraft:entity.painting.place');

  static const Sound entity_panda_aggressive_ambient = Sound('minecraft:entity.panda.aggressive_ambient');

  static const Sound entity_panda_ambient = Sound('minecraft:entity.panda.ambient');

  static const Sound entity_panda_bite = Sound('minecraft:entity.panda.bite');

  static const Sound entity_panda_cant_breed = Sound('minecraft:entity.panda.cant_breed');

  static const Sound entity_panda_death = Sound('minecraft:entity.panda.death');

  static const Sound entity_panda_eat = Sound('minecraft:entity.panda.eat');

  static const Sound entity_panda_hurt = Sound('minecraft:entity.panda.hurt');

  static const Sound entity_panda_pre_sneeze = Sound('minecraft:entity.panda.pre_sneeze');

  static const Sound entity_panda_sneeze = Sound('minecraft:entity.panda.sneeze');

  static const Sound entity_panda_step = Sound('minecraft:entity.panda.step');

  static const Sound entity_panda_worried_ambient = Sound('minecraft:entity.panda.worried_ambient');

  static const Sound entity_parrot_ambient = Sound('minecraft:entity.parrot.ambient');

  static const Sound entity_parrot_death = Sound('minecraft:entity.parrot.death');

  static const Sound entity_parrot_eat = Sound('minecraft:entity.parrot.eat');

  static const Sound entity_parrot_fly = Sound('minecraft:entity.parrot.fly');

  static const Sound entity_parrot_hurt = Sound('minecraft:entity.parrot.hurt');

  static const Sound entity_parrot_imitate_blaze = Sound('minecraft:entity.parrot.imitate.blaze');

  static const Sound entity_parrot_imitate_bogged = Sound('minecraft:entity.parrot.imitate.bogged');

  static const Sound entity_parrot_imitate_breeze = Sound('minecraft:entity.parrot.imitate.breeze');

  static const Sound entity_parrot_imitate_creeper = Sound('minecraft:entity.parrot.imitate.creeper');

  static const Sound entity_parrot_imitate_drowned = Sound('minecraft:entity.parrot.imitate.drowned');

  static const Sound entity_parrot_imitate_elder_guardian = Sound('minecraft:entity.parrot.imitate.elder_guardian');

  static const Sound entity_parrot_imitate_ender_dragon = Sound('minecraft:entity.parrot.imitate.ender_dragon');

  static const Sound entity_parrot_imitate_endermite = Sound('minecraft:entity.parrot.imitate.endermite');

  static const Sound entity_parrot_imitate_evoker = Sound('minecraft:entity.parrot.imitate.evoker');

  static const Sound entity_parrot_imitate_ghast = Sound('minecraft:entity.parrot.imitate.ghast');

  static const Sound entity_parrot_imitate_guardian = Sound('minecraft:entity.parrot.imitate.guardian');

  static const Sound entity_parrot_imitate_hoglin = Sound('minecraft:entity.parrot.imitate.hoglin');

  static const Sound entity_parrot_imitate_husk = Sound('minecraft:entity.parrot.imitate.husk');

  static const Sound entity_parrot_imitate_illusioner = Sound('minecraft:entity.parrot.imitate.illusioner');

  static const Sound entity_parrot_imitate_magma_cube = Sound('minecraft:entity.parrot.imitate.magma_cube');

  static const Sound entity_parrot_imitate_phantom = Sound('minecraft:entity.parrot.imitate.phantom');

  static const Sound entity_parrot_imitate_piglin = Sound('minecraft:entity.parrot.imitate.piglin');

  static const Sound entity_parrot_imitate_piglin_brute = Sound('minecraft:entity.parrot.imitate.piglin_brute');

  static const Sound entity_parrot_imitate_pillager = Sound('minecraft:entity.parrot.imitate.pillager');

  static const Sound entity_parrot_imitate_ravager = Sound('minecraft:entity.parrot.imitate.ravager');

  static const Sound entity_parrot_imitate_shulker = Sound('minecraft:entity.parrot.imitate.shulker');

  static const Sound entity_parrot_imitate_silverfish = Sound('minecraft:entity.parrot.imitate.silverfish');

  static const Sound entity_parrot_imitate_skeleton = Sound('minecraft:entity.parrot.imitate.skeleton');

  static const Sound entity_parrot_imitate_slime = Sound('minecraft:entity.parrot.imitate.slime');

  static const Sound entity_parrot_imitate_spider = Sound('minecraft:entity.parrot.imitate.spider');

  static const Sound entity_parrot_imitate_stray = Sound('minecraft:entity.parrot.imitate.stray');

  static const Sound entity_parrot_imitate_vex = Sound('minecraft:entity.parrot.imitate.vex');

  static const Sound entity_parrot_imitate_vindicator = Sound('minecraft:entity.parrot.imitate.vindicator');

  static const Sound entity_parrot_imitate_warden = Sound('minecraft:entity.parrot.imitate.warden');

  static const Sound entity_parrot_imitate_witch = Sound('minecraft:entity.parrot.imitate.witch');

  static const Sound entity_parrot_imitate_wither = Sound('minecraft:entity.parrot.imitate.wither');

  static const Sound entity_parrot_imitate_wither_skeleton = Sound('minecraft:entity.parrot.imitate.wither_skeleton');

  static const Sound entity_parrot_imitate_zoglin = Sound('minecraft:entity.parrot.imitate.zoglin');

  static const Sound entity_parrot_imitate_zombie = Sound('minecraft:entity.parrot.imitate.zombie');

  static const Sound entity_parrot_imitate_zombie_villager = Sound('minecraft:entity.parrot.imitate.zombie_villager');

  static const Sound entity_parrot_step = Sound('minecraft:entity.parrot.step');

  static const Sound entity_phantom_ambient = Sound('minecraft:entity.phantom.ambient');

  static const Sound entity_phantom_bite = Sound('minecraft:entity.phantom.bite');

  static const Sound entity_phantom_death = Sound('minecraft:entity.phantom.death');

  static const Sound entity_phantom_flap = Sound('minecraft:entity.phantom.flap');

  static const Sound entity_phantom_hurt = Sound('minecraft:entity.phantom.hurt');

  static const Sound entity_phantom_swoop = Sound('minecraft:entity.phantom.swoop');

  static const Sound entity_pig_ambient = Sound('minecraft:entity.pig.ambient');

  static const Sound entity_pig_death = Sound('minecraft:entity.pig.death');

  static const Sound entity_pig_hurt = Sound('minecraft:entity.pig.hurt');

  static const Sound entity_pig_saddle = Sound('minecraft:entity.pig.saddle');

  static const Sound entity_pig_step = Sound('minecraft:entity.pig.step');

  static const Sound entity_piglin_admiring_item = Sound('minecraft:entity.piglin.admiring_item');

  static const Sound entity_piglin_ambient = Sound('minecraft:entity.piglin.ambient');

  static const Sound entity_piglin_angry = Sound('minecraft:entity.piglin.angry');

  static const Sound entity_piglin_celebrate = Sound('minecraft:entity.piglin.celebrate');

  static const Sound entity_piglin_converted_to_zombified = Sound('minecraft:entity.piglin.converted_to_zombified');

  static const Sound entity_piglin_death = Sound('minecraft:entity.piglin.death');

  static const Sound entity_piglin_hurt = Sound('minecraft:entity.piglin.hurt');

  static const Sound entity_piglin_jealous = Sound('minecraft:entity.piglin.jealous');

  static const Sound entity_piglin_retreat = Sound('minecraft:entity.piglin.retreat');

  static const Sound entity_piglin_step = Sound('minecraft:entity.piglin.step');

  static const Sound entity_piglin_brute_ambient = Sound('minecraft:entity.piglin_brute.ambient');

  static const Sound entity_piglin_brute_angry = Sound('minecraft:entity.piglin_brute.angry');

  static const Sound entity_piglin_brute_converted_to_zombified = Sound('minecraft:entity.piglin_brute.converted_to_zombified');

  static const Sound entity_piglin_brute_death = Sound('minecraft:entity.piglin_brute.death');

  static const Sound entity_piglin_brute_hurt = Sound('minecraft:entity.piglin_brute.hurt');

  static const Sound entity_piglin_brute_step = Sound('minecraft:entity.piglin_brute.step');

  static const Sound entity_pillager_ambient = Sound('minecraft:entity.pillager.ambient');

  static const Sound entity_pillager_celebrate = Sound('minecraft:entity.pillager.celebrate');

  static const Sound entity_pillager_death = Sound('minecraft:entity.pillager.death');

  static const Sound entity_pillager_hurt = Sound('minecraft:entity.pillager.hurt');

  static const Sound entity_player_attack_crit = Sound('minecraft:entity.player.attack.crit');

  static const Sound entity_player_attack_knockback = Sound('minecraft:entity.player.attack.knockback');

  static const Sound entity_player_attack_nodamage = Sound('minecraft:entity.player.attack.nodamage');

  static const Sound entity_player_attack_strong = Sound('minecraft:entity.player.attack.strong');

  static const Sound entity_player_attack_sweep = Sound('minecraft:entity.player.attack.sweep');

  static const Sound entity_player_attack_weak = Sound('minecraft:entity.player.attack.weak');

  static const Sound entity_player_big_fall = Sound('minecraft:entity.player.big_fall');

  static const Sound entity_player_breath = Sound('minecraft:entity.player.breath');

  static const Sound entity_player_burp = Sound('minecraft:entity.player.burp');

  static const Sound entity_player_death = Sound('minecraft:entity.player.death');

  static const Sound entity_player_hurt = Sound('minecraft:entity.player.hurt');

  static const Sound entity_player_hurt_drown = Sound('minecraft:entity.player.hurt_drown');

  static const Sound entity_player_hurt_freeze = Sound('minecraft:entity.player.hurt_freeze');

  static const Sound entity_player_hurt_on_fire = Sound('minecraft:entity.player.hurt_on_fire');

  static const Sound entity_player_hurt_sweet_berry_bush = Sound('minecraft:entity.player.hurt_sweet_berry_bush');

  static const Sound entity_player_levelup = Sound('minecraft:entity.player.levelup');

  static const Sound entity_player_small_fall = Sound('minecraft:entity.player.small_fall');

  static const Sound entity_player_splash = Sound('minecraft:entity.player.splash');

  static const Sound entity_player_splash_high_speed = Sound('minecraft:entity.player.splash.high_speed');

  static const Sound entity_player_swim = Sound('minecraft:entity.player.swim');

  static const Sound entity_player_teleport = Sound('minecraft:entity.player.teleport');

  static const Sound entity_polar_bear_ambient = Sound('minecraft:entity.polar_bear.ambient');

  static const Sound entity_polar_bear_ambient_baby = Sound('minecraft:entity.polar_bear.ambient_baby');

  static const Sound entity_polar_bear_death = Sound('minecraft:entity.polar_bear.death');

  static const Sound entity_polar_bear_hurt = Sound('minecraft:entity.polar_bear.hurt');

  static const Sound entity_polar_bear_step = Sound('minecraft:entity.polar_bear.step');

  static const Sound entity_polar_bear_warning = Sound('minecraft:entity.polar_bear.warning');

  static const Sound entity_puffer_fish_ambient = Sound('minecraft:entity.puffer_fish.ambient');

  static const Sound entity_puffer_fish_blow_out = Sound('minecraft:entity.puffer_fish.blow_out');

  static const Sound entity_puffer_fish_blow_up = Sound('minecraft:entity.puffer_fish.blow_up');

  static const Sound entity_puffer_fish_death = Sound('minecraft:entity.puffer_fish.death');

  static const Sound entity_puffer_fish_flop = Sound('minecraft:entity.puffer_fish.flop');

  static const Sound entity_puffer_fish_hurt = Sound('minecraft:entity.puffer_fish.hurt');

  static const Sound entity_puffer_fish_sting = Sound('minecraft:entity.puffer_fish.sting');

  static const Sound entity_rabbit_ambient = Sound('minecraft:entity.rabbit.ambient');

  static const Sound entity_rabbit_attack = Sound('minecraft:entity.rabbit.attack');

  static const Sound entity_rabbit_death = Sound('minecraft:entity.rabbit.death');

  static const Sound entity_rabbit_hurt = Sound('minecraft:entity.rabbit.hurt');

  static const Sound entity_rabbit_jump = Sound('minecraft:entity.rabbit.jump');

  static const Sound entity_ravager_ambient = Sound('minecraft:entity.ravager.ambient');

  static const Sound entity_ravager_attack = Sound('minecraft:entity.ravager.attack');

  static const Sound entity_ravager_celebrate = Sound('minecraft:entity.ravager.celebrate');

  static const Sound entity_ravager_death = Sound('minecraft:entity.ravager.death');

  static const Sound entity_ravager_hurt = Sound('minecraft:entity.ravager.hurt');

  static const Sound entity_ravager_roar = Sound('minecraft:entity.ravager.roar');

  static const Sound entity_ravager_step = Sound('minecraft:entity.ravager.step');

  static const Sound entity_ravager_stunned = Sound('minecraft:entity.ravager.stunned');

  static const Sound entity_salmon_ambient = Sound('minecraft:entity.salmon.ambient');

  static const Sound entity_salmon_death = Sound('minecraft:entity.salmon.death');

  static const Sound entity_salmon_flop = Sound('minecraft:entity.salmon.flop');

  static const Sound entity_salmon_hurt = Sound('minecraft:entity.salmon.hurt');

  static const Sound entity_sheep_ambient = Sound('minecraft:entity.sheep.ambient');

  static const Sound entity_sheep_death = Sound('minecraft:entity.sheep.death');

  static const Sound entity_sheep_hurt = Sound('minecraft:entity.sheep.hurt');

  static const Sound entity_sheep_shear = Sound('minecraft:entity.sheep.shear');

  static const Sound entity_sheep_step = Sound('minecraft:entity.sheep.step');

  static const Sound entity_shulker_ambient = Sound('minecraft:entity.shulker.ambient');

  static const Sound entity_shulker_close = Sound('minecraft:entity.shulker.close');

  static const Sound entity_shulker_death = Sound('minecraft:entity.shulker.death');

  static const Sound entity_shulker_hurt = Sound('minecraft:entity.shulker.hurt');

  static const Sound entity_shulker_hurt_closed = Sound('minecraft:entity.shulker.hurt_closed');

  static const Sound entity_shulker_open = Sound('minecraft:entity.shulker.open');

  static const Sound entity_shulker_shoot = Sound('minecraft:entity.shulker.shoot');

  static const Sound entity_shulker_teleport = Sound('minecraft:entity.shulker.teleport');

  static const Sound entity_shulker_bullet_hit = Sound('minecraft:entity.shulker_bullet.hit');

  static const Sound entity_shulker_bullet_hurt = Sound('minecraft:entity.shulker_bullet.hurt');

  static const Sound entity_silverfish_ambient = Sound('minecraft:entity.silverfish.ambient');

  static const Sound entity_silverfish_death = Sound('minecraft:entity.silverfish.death');

  static const Sound entity_silverfish_hurt = Sound('minecraft:entity.silverfish.hurt');

  static const Sound entity_silverfish_step = Sound('minecraft:entity.silverfish.step');

  static const Sound entity_skeleton_ambient = Sound('minecraft:entity.skeleton.ambient');

  static const Sound entity_skeleton_converted_to_stray = Sound('minecraft:entity.skeleton.converted_to_stray');

  static const Sound entity_skeleton_death = Sound('minecraft:entity.skeleton.death');

  static const Sound entity_skeleton_hurt = Sound('minecraft:entity.skeleton.hurt');

  static const Sound entity_skeleton_shoot = Sound('minecraft:entity.skeleton.shoot');

  static const Sound entity_skeleton_step = Sound('minecraft:entity.skeleton.step');

  static const Sound entity_skeleton_horse_ambient = Sound('minecraft:entity.skeleton_horse.ambient');

  static const Sound entity_skeleton_horse_ambient_water = Sound('minecraft:entity.skeleton_horse.ambient_water');

  static const Sound entity_skeleton_horse_death = Sound('minecraft:entity.skeleton_horse.death');

  static const Sound entity_skeleton_horse_gallop_water = Sound('minecraft:entity.skeleton_horse.gallop_water');

  static const Sound entity_skeleton_horse_hurt = Sound('minecraft:entity.skeleton_horse.hurt');

  static const Sound entity_skeleton_horse_jump_water = Sound('minecraft:entity.skeleton_horse.jump_water');

  static const Sound entity_skeleton_horse_step_water = Sound('minecraft:entity.skeleton_horse.step_water');

  static const Sound entity_skeleton_horse_swim = Sound('minecraft:entity.skeleton_horse.swim');

  static const Sound entity_slime_attack = Sound('minecraft:entity.slime.attack');

  static const Sound entity_slime_death = Sound('minecraft:entity.slime.death');

  static const Sound entity_slime_death_small = Sound('minecraft:entity.slime.death_small');

  static const Sound entity_slime_hurt = Sound('minecraft:entity.slime.hurt');

  static const Sound entity_slime_hurt_small = Sound('minecraft:entity.slime.hurt_small');

  static const Sound entity_slime_jump = Sound('minecraft:entity.slime.jump');

  static const Sound entity_slime_jump_small = Sound('minecraft:entity.slime.jump_small');

  static const Sound entity_slime_squish = Sound('minecraft:entity.slime.squish');

  static const Sound entity_slime_squish_small = Sound('minecraft:entity.slime.squish_small');

  static const Sound entity_sniffer_death = Sound('minecraft:entity.sniffer.death');

  static const Sound entity_sniffer_digging = Sound('minecraft:entity.sniffer.digging');

  static const Sound entity_sniffer_digging_stop = Sound('minecraft:entity.sniffer.digging_stop');

  static const Sound entity_sniffer_drop_seed = Sound('minecraft:entity.sniffer.drop_seed');

  static const Sound entity_sniffer_eat = Sound('minecraft:entity.sniffer.eat');

  static const Sound entity_sniffer_happy = Sound('minecraft:entity.sniffer.happy');

  static const Sound entity_sniffer_hurt = Sound('minecraft:entity.sniffer.hurt');

  static const Sound entity_sniffer_idle = Sound('minecraft:entity.sniffer.idle');

  static const Sound entity_sniffer_scenting = Sound('minecraft:entity.sniffer.scenting');

  static const Sound entity_sniffer_searching = Sound('minecraft:entity.sniffer.searching');

  static const Sound entity_sniffer_sniffing = Sound('minecraft:entity.sniffer.sniffing');

  static const Sound entity_sniffer_step = Sound('minecraft:entity.sniffer.step');

  static const Sound entity_snow_golem_ambient = Sound('minecraft:entity.snow_golem.ambient');

  static const Sound entity_snow_golem_death = Sound('minecraft:entity.snow_golem.death');

  static const Sound entity_snow_golem_hurt = Sound('minecraft:entity.snow_golem.hurt');

  static const Sound entity_snow_golem_shear = Sound('minecraft:entity.snow_golem.shear');

  static const Sound entity_snow_golem_shoot = Sound('minecraft:entity.snow_golem.shoot');

  static const Sound entity_snowball_throw = Sound('minecraft:entity.snowball.throw');

  static const Sound entity_spider_ambient = Sound('minecraft:entity.spider.ambient');

  static const Sound entity_spider_death = Sound('minecraft:entity.spider.death');

  static const Sound entity_spider_hurt = Sound('minecraft:entity.spider.hurt');

  static const Sound entity_spider_step = Sound('minecraft:entity.spider.step');

  static const Sound entity_splash_potion_break = Sound('minecraft:entity.splash_potion.break');

  static const Sound entity_splash_potion_throw = Sound('minecraft:entity.splash_potion.throw');

  static const Sound entity_squid_ambient = Sound('minecraft:entity.squid.ambient');

  static const Sound entity_squid_death = Sound('minecraft:entity.squid.death');

  static const Sound entity_squid_hurt = Sound('minecraft:entity.squid.hurt');

  static const Sound entity_squid_squirt = Sound('minecraft:entity.squid.squirt');

  static const Sound entity_stray_ambient = Sound('minecraft:entity.stray.ambient');

  static const Sound entity_stray_death = Sound('minecraft:entity.stray.death');

  static const Sound entity_stray_hurt = Sound('minecraft:entity.stray.hurt');

  static const Sound entity_stray_step = Sound('minecraft:entity.stray.step');

  static const Sound entity_strider_ambient = Sound('minecraft:entity.strider.ambient');

  static const Sound entity_strider_death = Sound('minecraft:entity.strider.death');

  static const Sound entity_strider_eat = Sound('minecraft:entity.strider.eat');

  static const Sound entity_strider_happy = Sound('minecraft:entity.strider.happy');

  static const Sound entity_strider_hurt = Sound('minecraft:entity.strider.hurt');

  static const Sound entity_strider_retreat = Sound('minecraft:entity.strider.retreat');

  static const Sound entity_strider_saddle = Sound('minecraft:entity.strider.saddle');

  static const Sound entity_strider_step = Sound('minecraft:entity.strider.step');

  static const Sound entity_strider_step_lava = Sound('minecraft:entity.strider.step_lava');

  static const Sound entity_tadpole_death = Sound('minecraft:entity.tadpole.death');

  static const Sound entity_tadpole_flop = Sound('minecraft:entity.tadpole.flop');

  static const Sound entity_tadpole_grow_up = Sound('minecraft:entity.tadpole.grow_up');

  static const Sound entity_tadpole_hurt = Sound('minecraft:entity.tadpole.hurt');

  static const Sound entity_tnt_primed = Sound('minecraft:entity.tnt.primed');

  static const Sound entity_tropical_fish_ambient = Sound('minecraft:entity.tropical_fish.ambient');

  static const Sound entity_tropical_fish_death = Sound('minecraft:entity.tropical_fish.death');

  static const Sound entity_tropical_fish_flop = Sound('minecraft:entity.tropical_fish.flop');

  static const Sound entity_tropical_fish_hurt = Sound('minecraft:entity.tropical_fish.hurt');

  static const Sound entity_turtle_ambient_land = Sound('minecraft:entity.turtle.ambient_land');

  static const Sound entity_turtle_death = Sound('minecraft:entity.turtle.death');

  static const Sound entity_turtle_death_baby = Sound('minecraft:entity.turtle.death_baby');

  static const Sound entity_turtle_egg_break = Sound('minecraft:entity.turtle.egg_break');

  static const Sound entity_turtle_egg_crack = Sound('minecraft:entity.turtle.egg_crack');

  static const Sound entity_turtle_egg_hatch = Sound('minecraft:entity.turtle.egg_hatch');

  static const Sound entity_turtle_hurt = Sound('minecraft:entity.turtle.hurt');

  static const Sound entity_turtle_hurt_baby = Sound('minecraft:entity.turtle.hurt_baby');

  static const Sound entity_turtle_lay_egg = Sound('minecraft:entity.turtle.lay_egg');

  static const Sound entity_turtle_shamble = Sound('minecraft:entity.turtle.shamble');

  static const Sound entity_turtle_shamble_baby = Sound('minecraft:entity.turtle.shamble_baby');

  static const Sound entity_turtle_swim = Sound('minecraft:entity.turtle.swim');

  static const Sound entity_vex_ambient = Sound('minecraft:entity.vex.ambient');

  static const Sound entity_vex_charge = Sound('minecraft:entity.vex.charge');

  static const Sound entity_vex_death = Sound('minecraft:entity.vex.death');

  static const Sound entity_vex_hurt = Sound('minecraft:entity.vex.hurt');

  static const Sound entity_villager_ambient = Sound('minecraft:entity.villager.ambient');

  static const Sound entity_villager_celebrate = Sound('minecraft:entity.villager.celebrate');

  static const Sound entity_villager_death = Sound('minecraft:entity.villager.death');

  static const Sound entity_villager_hurt = Sound('minecraft:entity.villager.hurt');

  static const Sound entity_villager_no = Sound('minecraft:entity.villager.no');

  static const Sound entity_villager_trade = Sound('minecraft:entity.villager.trade');

  static const Sound entity_villager_work_armorer = Sound('minecraft:entity.villager.work_armorer');

  static const Sound entity_villager_work_butcher = Sound('minecraft:entity.villager.work_butcher');

  static const Sound entity_villager_work_cartographer = Sound('minecraft:entity.villager.work_cartographer');

  static const Sound entity_villager_work_cleric = Sound('minecraft:entity.villager.work_cleric');

  static const Sound entity_villager_work_farmer = Sound('minecraft:entity.villager.work_farmer');

  static const Sound entity_villager_work_fisherman = Sound('minecraft:entity.villager.work_fisherman');

  static const Sound entity_villager_work_fletcher = Sound('minecraft:entity.villager.work_fletcher');

  static const Sound entity_villager_work_leatherworker = Sound('minecraft:entity.villager.work_leatherworker');

  static const Sound entity_villager_work_librarian = Sound('minecraft:entity.villager.work_librarian');

  static const Sound entity_villager_work_mason = Sound('minecraft:entity.villager.work_mason');

  static const Sound entity_villager_work_shepherd = Sound('minecraft:entity.villager.work_shepherd');

  static const Sound entity_villager_work_toolsmith = Sound('minecraft:entity.villager.work_toolsmith');

  static const Sound entity_villager_work_weaponsmith = Sound('minecraft:entity.villager.work_weaponsmith');

  static const Sound entity_villager_yes = Sound('minecraft:entity.villager.yes');

  static const Sound entity_vindicator_ambient = Sound('minecraft:entity.vindicator.ambient');

  static const Sound entity_vindicator_celebrate = Sound('minecraft:entity.vindicator.celebrate');

  static const Sound entity_vindicator_death = Sound('minecraft:entity.vindicator.death');

  static const Sound entity_vindicator_hurt = Sound('minecraft:entity.vindicator.hurt');

  static const Sound entity_wandering_trader_ambient = Sound('minecraft:entity.wandering_trader.ambient');

  static const Sound entity_wandering_trader_death = Sound('minecraft:entity.wandering_trader.death');

  static const Sound entity_wandering_trader_disappeared = Sound('minecraft:entity.wandering_trader.disappeared');

  static const Sound entity_wandering_trader_drink_milk = Sound('minecraft:entity.wandering_trader.drink_milk');

  static const Sound entity_wandering_trader_drink_potion = Sound('minecraft:entity.wandering_trader.drink_potion');

  static const Sound entity_wandering_trader_hurt = Sound('minecraft:entity.wandering_trader.hurt');

  static const Sound entity_wandering_trader_no = Sound('minecraft:entity.wandering_trader.no');

  static const Sound entity_wandering_trader_reappeared = Sound('minecraft:entity.wandering_trader.reappeared');

  static const Sound entity_wandering_trader_trade = Sound('minecraft:entity.wandering_trader.trade');

  static const Sound entity_wandering_trader_yes = Sound('minecraft:entity.wandering_trader.yes');

  static const Sound entity_warden_agitated = Sound('minecraft:entity.warden.agitated');

  static const Sound entity_warden_ambient = Sound('minecraft:entity.warden.ambient');

  static const Sound entity_warden_angry = Sound('minecraft:entity.warden.angry');

  static const Sound entity_warden_attack_impact = Sound('minecraft:entity.warden.attack_impact');

  static const Sound entity_warden_death = Sound('minecraft:entity.warden.death');

  static const Sound entity_warden_dig = Sound('minecraft:entity.warden.dig');

  static const Sound entity_warden_emerge = Sound('minecraft:entity.warden.emerge');

  static const Sound entity_warden_heartbeat = Sound('minecraft:entity.warden.heartbeat');

  static const Sound entity_warden_hurt = Sound('minecraft:entity.warden.hurt');

  static const Sound entity_warden_listening = Sound('minecraft:entity.warden.listening');

  static const Sound entity_warden_listening_angry = Sound('minecraft:entity.warden.listening_angry');

  static const Sound entity_warden_nearby_close = Sound('minecraft:entity.warden.nearby_close');

  static const Sound entity_warden_nearby_closer = Sound('minecraft:entity.warden.nearby_closer');

  static const Sound entity_warden_nearby_closest = Sound('minecraft:entity.warden.nearby_closest');

  static const Sound entity_warden_roar = Sound('minecraft:entity.warden.roar');

  static const Sound entity_warden_sniff = Sound('minecraft:entity.warden.sniff');

  static const Sound entity_warden_sonic_boom = Sound('minecraft:entity.warden.sonic_boom');

  static const Sound entity_warden_sonic_charge = Sound('minecraft:entity.warden.sonic_charge');

  static const Sound entity_warden_step = Sound('minecraft:entity.warden.step');

  static const Sound entity_warden_tendril_clicks = Sound('minecraft:entity.warden.tendril_clicks');

  static const Sound entity_wind_charge_throw = Sound('minecraft:entity.wind_charge.throw');

  static const Sound entity_wind_charge_wind_burst = Sound('minecraft:entity.wind_charge.wind_burst');

  static const Sound entity_witch_ambient = Sound('minecraft:entity.witch.ambient');

  static const Sound entity_witch_celebrate = Sound('minecraft:entity.witch.celebrate');

  static const Sound entity_witch_death = Sound('minecraft:entity.witch.death');

  static const Sound entity_witch_drink = Sound('minecraft:entity.witch.drink');

  static const Sound entity_witch_hurt = Sound('minecraft:entity.witch.hurt');

  static const Sound entity_witch_throw = Sound('minecraft:entity.witch.throw');

  static const Sound entity_wither_ambient = Sound('minecraft:entity.wither.ambient');

  static const Sound entity_wither_break_block = Sound('minecraft:entity.wither.break_block');

  static const Sound entity_wither_death = Sound('minecraft:entity.wither.death');

  static const Sound entity_wither_hurt = Sound('minecraft:entity.wither.hurt');

  static const Sound entity_wither_shoot = Sound('minecraft:entity.wither.shoot');

  static const Sound entity_wither_spawn = Sound('minecraft:entity.wither.spawn');

  static const Sound entity_wither_skeleton_ambient = Sound('minecraft:entity.wither_skeleton.ambient');

  static const Sound entity_wither_skeleton_death = Sound('minecraft:entity.wither_skeleton.death');

  static const Sound entity_wither_skeleton_hurt = Sound('minecraft:entity.wither_skeleton.hurt');

  static const Sound entity_wither_skeleton_step = Sound('minecraft:entity.wither_skeleton.step');

  static const Sound entity_wolf_ambient = Sound('minecraft:entity.wolf.ambient');

  static const Sound entity_wolf_death = Sound('minecraft:entity.wolf.death');

  static const Sound entity_wolf_growl = Sound('minecraft:entity.wolf.growl');

  static const Sound entity_wolf_howl = Sound('minecraft:entity.wolf.howl');

  static const Sound entity_wolf_hurt = Sound('minecraft:entity.wolf.hurt');

  static const Sound entity_wolf_pant = Sound('minecraft:entity.wolf.pant');

  static const Sound entity_wolf_shake = Sound('minecraft:entity.wolf.shake');

  static const Sound entity_wolf_step = Sound('minecraft:entity.wolf.step');

  static const Sound entity_wolf_whine = Sound('minecraft:entity.wolf.whine');

  static const Sound entity_zoglin_ambient = Sound('minecraft:entity.zoglin.ambient');

  static const Sound entity_zoglin_angry = Sound('minecraft:entity.zoglin.angry');

  static const Sound entity_zoglin_attack = Sound('minecraft:entity.zoglin.attack');

  static const Sound entity_zoglin_death = Sound('minecraft:entity.zoglin.death');

  static const Sound entity_zoglin_hurt = Sound('minecraft:entity.zoglin.hurt');

  static const Sound entity_zoglin_step = Sound('minecraft:entity.zoglin.step');

  static const Sound entity_zombie_ambient = Sound('minecraft:entity.zombie.ambient');

  static const Sound entity_zombie_attack_iron_door = Sound('minecraft:entity.zombie.attack_iron_door');

  static const Sound entity_zombie_attack_wooden_door = Sound('minecraft:entity.zombie.attack_wooden_door');

  static const Sound entity_zombie_break_wooden_door = Sound('minecraft:entity.zombie.break_wooden_door');

  static const Sound entity_zombie_converted_to_drowned = Sound('minecraft:entity.zombie.converted_to_drowned');

  static const Sound entity_zombie_death = Sound('minecraft:entity.zombie.death');

  static const Sound entity_zombie_destroy_egg = Sound('minecraft:entity.zombie.destroy_egg');

  static const Sound entity_zombie_hurt = Sound('minecraft:entity.zombie.hurt');

  static const Sound entity_zombie_infect = Sound('minecraft:entity.zombie.infect');

  static const Sound entity_zombie_step = Sound('minecraft:entity.zombie.step');

  static const Sound entity_zombie_horse_ambient = Sound('minecraft:entity.zombie_horse.ambient');

  static const Sound entity_zombie_horse_death = Sound('minecraft:entity.zombie_horse.death');

  static const Sound entity_zombie_horse_hurt = Sound('minecraft:entity.zombie_horse.hurt');

  static const Sound entity_zombie_villager_ambient = Sound('minecraft:entity.zombie_villager.ambient');

  static const Sound entity_zombie_villager_converted = Sound('minecraft:entity.zombie_villager.converted');

  static const Sound entity_zombie_villager_cure = Sound('minecraft:entity.zombie_villager.cure');

  static const Sound entity_zombie_villager_death = Sound('minecraft:entity.zombie_villager.death');

  static const Sound entity_zombie_villager_hurt = Sound('minecraft:entity.zombie_villager.hurt');

  static const Sound entity_zombie_villager_step = Sound('minecraft:entity.zombie_villager.step');

  static const Sound entity_zombified_piglin_ambient = Sound('minecraft:entity.zombified_piglin.ambient');

  static const Sound entity_zombified_piglin_angry = Sound('minecraft:entity.zombified_piglin.angry');

  static const Sound entity_zombified_piglin_death = Sound('minecraft:entity.zombified_piglin.death');

  static const Sound entity_zombified_piglin_hurt = Sound('minecraft:entity.zombified_piglin.hurt');

  static const Sound event_mob_effect_bad_omen = Sound('minecraft:event.mob_effect.bad_omen');

  static const Sound event_mob_effect_raid_omen = Sound('minecraft:event.mob_effect.raid_omen');

  static const Sound event_mob_effect_trial_omen = Sound('minecraft:event.mob_effect.trial_omen');

  static const Sound event_raid_horn = Sound('minecraft:event.raid.horn');

  static const Sound intentionally_empty = Sound('minecraft:intentionally_empty');

  static const Sound item_armor_equip_chain = Sound('minecraft:item.armor.equip_chain');

  static const Sound item_armor_equip_diamond = Sound('minecraft:item.armor.equip_diamond');

  static const Sound item_armor_equip_elytra = Sound('minecraft:item.armor.equip_elytra');

  static const Sound item_armor_equip_generic = Sound('minecraft:item.armor.equip_generic');

  static const Sound item_armor_equip_gold = Sound('minecraft:item.armor.equip_gold');

  static const Sound item_armor_equip_iron = Sound('minecraft:item.armor.equip_iron');

  static const Sound item_armor_equip_leather = Sound('minecraft:item.armor.equip_leather');

  static const Sound item_armor_equip_netherite = Sound('minecraft:item.armor.equip_netherite');

  static const Sound item_armor_equip_turtle = Sound('minecraft:item.armor.equip_turtle');

  static const Sound item_armor_equip_wolf = Sound('minecraft:item.armor.equip_wolf');

  static const Sound item_armor_unequip_wolf = Sound('minecraft:item.armor.unequip_wolf');

  static const Sound item_axe_scrape = Sound('minecraft:item.axe.scrape');

  static const Sound item_axe_strip = Sound('minecraft:item.axe.strip');

  static const Sound item_axe_wax_off = Sound('minecraft:item.axe.wax_off');

  static const Sound item_bone_meal_use = Sound('minecraft:item.bone_meal.use');

  static const Sound item_book_page_turn = Sound('minecraft:item.book.page_turn');

  static const Sound item_book_put = Sound('minecraft:item.book.put');

  static const Sound item_bottle_empty = Sound('minecraft:item.bottle.empty');

  static const Sound item_bottle_fill = Sound('minecraft:item.bottle.fill');

  static const Sound item_bottle_fill_dragonbreath = Sound('minecraft:item.bottle.fill_dragonbreath');

  static const Sound item_brush_brushing_generic = Sound('minecraft:item.brush.brushing.generic');

  static const Sound item_brush_brushing_gravel = Sound('minecraft:item.brush.brushing.gravel');

  static const Sound item_brush_brushing_gravel_complete = Sound('minecraft:item.brush.brushing.gravel.complete');

  static const Sound item_brush_brushing_sand = Sound('minecraft:item.brush.brushing.sand');

  static const Sound item_brush_brushing_sand_complete = Sound('minecraft:item.brush.brushing.sand.complete');

  static const Sound item_bucket_empty = Sound('minecraft:item.bucket.empty');

  static const Sound item_bucket_empty_axolotl = Sound('minecraft:item.bucket.empty_axolotl');

  static const Sound item_bucket_empty_fish = Sound('minecraft:item.bucket.empty_fish');

  static const Sound item_bucket_empty_lava = Sound('minecraft:item.bucket.empty_lava');

  static const Sound item_bucket_empty_powder_snow = Sound('minecraft:item.bucket.empty_powder_snow');

  static const Sound item_bucket_empty_tadpole = Sound('minecraft:item.bucket.empty_tadpole');

  static const Sound item_bucket_fill = Sound('minecraft:item.bucket.fill');

  static const Sound item_bucket_fill_axolotl = Sound('minecraft:item.bucket.fill_axolotl');

  static const Sound item_bucket_fill_fish = Sound('minecraft:item.bucket.fill_fish');

  static const Sound item_bucket_fill_lava = Sound('minecraft:item.bucket.fill_lava');

  static const Sound item_bucket_fill_powder_snow = Sound('minecraft:item.bucket.fill_powder_snow');

  static const Sound item_bucket_fill_tadpole = Sound('minecraft:item.bucket.fill_tadpole');

  static const Sound item_bundle_drop_contents = Sound('minecraft:item.bundle.drop_contents');

  static const Sound item_bundle_insert = Sound('minecraft:item.bundle.insert');

  static const Sound item_bundle_remove_one = Sound('minecraft:item.bundle.remove_one');

  static const Sound item_chorus_fruit_teleport = Sound('minecraft:item.chorus_fruit.teleport');

  static const Sound item_crop_plant = Sound('minecraft:item.crop.plant');

  static const Sound item_crossbow_hit = Sound('minecraft:item.crossbow.hit');

  static const Sound item_crossbow_loading_end = Sound('minecraft:item.crossbow.loading_end');

  static const Sound item_crossbow_loading_middle = Sound('minecraft:item.crossbow.loading_middle');

  static const Sound item_crossbow_loading_start = Sound('minecraft:item.crossbow.loading_start');

  static const Sound item_crossbow_quick_charge_1 = Sound('minecraft:item.crossbow.quick_charge_1');

  static const Sound item_crossbow_quick_charge_2 = Sound('minecraft:item.crossbow.quick_charge_2');

  static const Sound item_crossbow_quick_charge_3 = Sound('minecraft:item.crossbow.quick_charge_3');

  static const Sound item_crossbow_shoot = Sound('minecraft:item.crossbow.shoot');

  static const Sound item_dye_use = Sound('minecraft:item.dye.use');

  static const Sound item_elytra_flying = Sound('minecraft:item.elytra.flying');

  static const Sound item_firecharge_use = Sound('minecraft:item.firecharge.use');

  static const Sound item_flintandsteel_use = Sound('minecraft:item.flintandsteel.use');

  static const Sound item_glow_ink_sac_use = Sound('minecraft:item.glow_ink_sac.use');

  static const Sound item_goat_horn_play = Sound('minecraft:item.goat_horn.play');

  static const Sound item_goat_horn_sound_0 = Sound('minecraft:item.goat_horn.sound.0');

  static const Sound item_goat_horn_sound_1 = Sound('minecraft:item.goat_horn.sound.1');

  static const Sound item_goat_horn_sound_2 = Sound('minecraft:item.goat_horn.sound.2');

  static const Sound item_goat_horn_sound_3 = Sound('minecraft:item.goat_horn.sound.3');

  static const Sound item_goat_horn_sound_4 = Sound('minecraft:item.goat_horn.sound.4');

  static const Sound item_goat_horn_sound_5 = Sound('minecraft:item.goat_horn.sound.5');

  static const Sound item_goat_horn_sound_6 = Sound('minecraft:item.goat_horn.sound.6');

  static const Sound item_goat_horn_sound_7 = Sound('minecraft:item.goat_horn.sound.7');

  static const Sound item_hoe_till = Sound('minecraft:item.hoe.till');

  static const Sound item_honey_bottle_drink = Sound('minecraft:item.honey_bottle.drink');

  static const Sound item_honeycomb_wax_on = Sound('minecraft:item.honeycomb.wax_on');

  static const Sound item_ink_sac_use = Sound('minecraft:item.ink_sac.use');

  static const Sound item_lodestone_compass_lock = Sound('minecraft:item.lodestone_compass.lock');

  static const Sound item_mace_smash_air = Sound('minecraft:item.mace.smash_air');

  static const Sound item_mace_smash_ground = Sound('minecraft:item.mace.smash_ground');

  static const Sound item_mace_smash_ground_heavy = Sound('minecraft:item.mace.smash_ground_heavy');

  static const Sound item_nether_wart_plant = Sound('minecraft:item.nether_wart.plant');

  static const Sound item_ominous_bottle_dispose = Sound('minecraft:item.ominous_bottle.dispose');

  static const Sound item_shield_block = Sound('minecraft:item.shield.block');

  static const Sound item_shield_break = Sound('minecraft:item.shield.break');

  static const Sound item_shovel_flatten = Sound('minecraft:item.shovel.flatten');

  static const Sound item_spyglass_stop_using = Sound('minecraft:item.spyglass.stop_using');

  static const Sound item_spyglass_use = Sound('minecraft:item.spyglass.use');

  static const Sound item_totem_use = Sound('minecraft:item.totem.use');

  static const Sound item_trident_hit = Sound('minecraft:item.trident.hit');

  static const Sound item_trident_hit_ground = Sound('minecraft:item.trident.hit_ground');

  static const Sound item_trident_return = Sound('minecraft:item.trident.return');

  static const Sound item_trident_riptide_1 = Sound('minecraft:item.trident.riptide_1');

  static const Sound item_trident_riptide_2 = Sound('minecraft:item.trident.riptide_2');

  static const Sound item_trident_riptide_3 = Sound('minecraft:item.trident.riptide_3');

  static const Sound item_trident_throw = Sound('minecraft:item.trident.throw');

  static const Sound item_trident_thunder = Sound('minecraft:item.trident.thunder');

  static const Sound item_wolf_armor_break = Sound('minecraft:item.wolf_armor.break');

  static const Sound item_wolf_armor_crack = Sound('minecraft:item.wolf_armor.crack');

  static const Sound item_wolf_armor_damage = Sound('minecraft:item.wolf_armor.damage');

  static const Sound item_wolf_armor_repair = Sound('minecraft:item.wolf_armor.repair');

  static const Sound music_creative = Sound('minecraft:music.creative');

  static const Sound music_credits = Sound('minecraft:music.credits');

  static const Sound music_dragon = Sound('minecraft:music.dragon');

  static const Sound music_end = Sound('minecraft:music.end');

  static const Sound music_game = Sound('minecraft:music.game');

  static const Sound music_menu = Sound('minecraft:music.menu');

  static const Sound music_nether_basalt_deltas = Sound('minecraft:music.nether.basalt_deltas');

  static const Sound music_nether_crimson_forest = Sound('minecraft:music.nether.crimson_forest');

  static const Sound music_nether_nether_wastes = Sound('minecraft:music.nether.nether_wastes');

  static const Sound music_nether_soul_sand_valley = Sound('minecraft:music.nether.soul_sand_valley');

  static const Sound music_nether_warped_forest = Sound('minecraft:music.nether.warped_forest');

  static const Sound music_overworld_badlands = Sound('minecraft:music.overworld.badlands');

  static const Sound music_overworld_bamboo_jungle = Sound('minecraft:music.overworld.bamboo_jungle');

  static const Sound music_overworld_cherry_grove = Sound('minecraft:music.overworld.cherry_grove');

  static const Sound music_overworld_deep_dark = Sound('minecraft:music.overworld.deep_dark');

  static const Sound music_overworld_desert = Sound('minecraft:music.overworld.desert');

  static const Sound music_overworld_dripstone_caves = Sound('minecraft:music.overworld.dripstone_caves');

  static const Sound music_overworld_flower_forest = Sound('minecraft:music.overworld.flower_forest');

  static const Sound music_overworld_forest = Sound('minecraft:music.overworld.forest');

  static const Sound music_overworld_frozen_peaks = Sound('minecraft:music.overworld.frozen_peaks');

  static const Sound music_overworld_grove = Sound('minecraft:music.overworld.grove');

  static const Sound music_overworld_jagged_peaks = Sound('minecraft:music.overworld.jagged_peaks');

  static const Sound music_overworld_jungle = Sound('minecraft:music.overworld.jungle');

  static const Sound music_overworld_lush_caves = Sound('minecraft:music.overworld.lush_caves');

  static const Sound music_overworld_meadow = Sound('minecraft:music.overworld.meadow');

  static const Sound music_overworld_old_growth_taiga = Sound('minecraft:music.overworld.old_growth_taiga');

  static const Sound music_overworld_snowy_slopes = Sound('minecraft:music.overworld.snowy_slopes');

  static const Sound music_overworld_sparse_jungle = Sound('minecraft:music.overworld.sparse_jungle');

  static const Sound music_overworld_stony_peaks = Sound('minecraft:music.overworld.stony_peaks');

  static const Sound music_overworld_swamp = Sound('minecraft:music.overworld.swamp');

  static const Sound music_under_water = Sound('minecraft:music.under_water');

  static const Sound music_disc_11 = Sound('minecraft:music_disc.11');

  static const Sound music_disc_13 = Sound('minecraft:music_disc.13');

  static const Sound music_disc_5 = Sound('minecraft:music_disc.5');

  static const Sound music_disc_blocks = Sound('minecraft:music_disc.blocks');

  static const Sound music_disc_cat = Sound('minecraft:music_disc.cat');

  static const Sound music_disc_chirp = Sound('minecraft:music_disc.chirp');

  static const Sound music_disc_creator = Sound('minecraft:music_disc.creator');

  static const Sound music_disc_creator_music_box = Sound('minecraft:music_disc.creator_music_box');

  static const Sound music_disc_far = Sound('minecraft:music_disc.far');

  static const Sound music_disc_mall = Sound('minecraft:music_disc.mall');

  static const Sound music_disc_mellohi = Sound('minecraft:music_disc.mellohi');

  static const Sound music_disc_otherside = Sound('minecraft:music_disc.otherside');

  static const Sound music_disc_pigstep = Sound('minecraft:music_disc.pigstep');

  static const Sound music_disc_precipice = Sound('minecraft:music_disc.precipice');

  static const Sound music_disc_relic = Sound('minecraft:music_disc.relic');

  static const Sound music_disc_stal = Sound('minecraft:music_disc.stal');

  static const Sound music_disc_strad = Sound('minecraft:music_disc.strad');

  static const Sound music_disc_wait = Sound('minecraft:music_disc.wait');

  static const Sound music_disc_ward = Sound('minecraft:music_disc.ward');

  static const Sound particle_soul_escape = Sound('minecraft:particle.soul_escape');

  static const Sound ui_button_click = Sound('minecraft:ui.button.click');

  static const Sound ui_cartography_table_take_result = Sound('minecraft:ui.cartography_table.take_result');

  static const Sound ui_loom_select_pattern = Sound('minecraft:ui.loom.select_pattern');

  static const Sound ui_loom_take_result = Sound('minecraft:ui.loom.take_result');

  static const Sound ui_stonecutter_select_recipe = Sound('minecraft:ui.stonecutter.select_recipe');

  static const Sound ui_stonecutter_take_result = Sound('minecraft:ui.stonecutter.take_result');

  static const Sound ui_toast_challenge_complete = Sound('minecraft:ui.toast.challenge_complete');

  static const Sound ui_toast_in = Sound('minecraft:ui.toast.in');

  static const Sound ui_toast_out = Sound('minecraft:ui.toast.out');

  static const Sound weather_rain = Sound('minecraft:weather.rain');

  static const Sound weather_rain_above = Sound('minecraft:weather.rain.above');

  //[[[end]]]
}