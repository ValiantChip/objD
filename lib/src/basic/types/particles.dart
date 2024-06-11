class Particles {
  // using cog generation tool to fetch blocks
  /*[[[cog
  import cog
  import requests

  version = '1.20/snapshots/23w51b'

  res = requests.get(f'https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/{version}/custom-generated/registries/particle_type.txt')
  blocks = []
  for l in res.iter_lines():
      full = l.decode('UTF-8')
      id = full.split(':')[1]
      blocks.append(id)
      cog.outl(f'/// _({full})_')
      cog.outl(f"static const ParticleType {id} = ParticleType('{full}');\n")
  ]]]*/
  /// _(minecraft:ambient_entity_effect)_
  static const ParticleType ambient_entity_effect =
      ParticleType('minecraft:ambient_entity_effect');

  /// _(minecraft:angry_villager)_
  static const ParticleType angry_villager =
      ParticleType('minecraft:angry_villager');

  /// _(minecraft:ash)_
  static const ParticleType ash = ParticleType('minecraft:ash');

  /// _(minecraft:block)_
  static const ParticleType block = ParticleType('minecraft:block');

  /// _(minecraft:block_marker)_
  static const ParticleType block_marker =
      ParticleType('minecraft:block_marker');

  /// _(minecraft:bubble)_
  static const ParticleType bubble = ParticleType('minecraft:bubble');

  /// _(minecraft:bubble_column_up)_
  static const ParticleType bubble_column_up =
      ParticleType('minecraft:bubble_column_up');

  /// _(minecraft:bubble_pop)_
  static const ParticleType bubble_pop = ParticleType('minecraft:bubble_pop');

  /// _(minecraft:campfire_cosy_smoke)_
  static const ParticleType campfire_cosy_smoke =
      ParticleType('minecraft:campfire_cosy_smoke');

  /// _(minecraft:campfire_signal_smoke)_
  static const ParticleType campfire_signal_smoke =
      ParticleType('minecraft:campfire_signal_smoke');

  /// _(minecraft:cherry_leaves)_
  static const ParticleType cherry_leaves =
      ParticleType('minecraft:cherry_leaves');

  /// _(minecraft:cloud)_
  static const ParticleType cloud = ParticleType('minecraft:cloud');

  /// _(minecraft:composter)_
  static const ParticleType composter = ParticleType('minecraft:composter');

  /// _(minecraft:crimson_spore)_
  static const ParticleType crimson_spore =
      ParticleType('minecraft:crimson_spore');

  /// _(minecraft:crit)_
  static const ParticleType crit = ParticleType('minecraft:crit');

  /// _(minecraft:current_down)_
  static const ParticleType current_down =
      ParticleType('minecraft:current_down');

  /// _(minecraft:damage_indicator)_
  static const ParticleType damage_indicator =
      ParticleType('minecraft:damage_indicator');

  /// _(minecraft:dolphin)_
  static const ParticleType dolphin = ParticleType('minecraft:dolphin');

  /// _(minecraft:dragon_breath)_
  static const ParticleType dragon_breath =
      ParticleType('minecraft:dragon_breath');

  /// _(minecraft:dripping_dripstone_lava)_
  static const ParticleType dripping_dripstone_lava =
      ParticleType('minecraft:dripping_dripstone_lava');

  /// _(minecraft:dripping_dripstone_water)_
  static const ParticleType dripping_dripstone_water =
      ParticleType('minecraft:dripping_dripstone_water');

  /// _(minecraft:dripping_honey)_
  static const ParticleType dripping_honey =
      ParticleType('minecraft:dripping_honey');

  /// _(minecraft:dripping_lava)_
  static const ParticleType dripping_lava =
      ParticleType('minecraft:dripping_lava');

  /// _(minecraft:dripping_obsidian_tear)_
  static const ParticleType dripping_obsidian_tear =
      ParticleType('minecraft:dripping_obsidian_tear');

  /// _(minecraft:dripping_water)_
  static const ParticleType dripping_water =
      ParticleType('minecraft:dripping_water');

  /// _(minecraft:dust)_
  static const ParticleType dust = ParticleType('minecraft:dust');

  /// _(minecraft:dust_color_transition)_
  static const ParticleType dust_color_transition =
      ParticleType('minecraft:dust_color_transition');

  /// _(minecraft:dust_plume)_
  static const ParticleType dust_plume = ParticleType('minecraft:dust_plume');

  /// _(minecraft:effect)_
  static const ParticleType effect = ParticleType('minecraft:effect');

  /// _(minecraft:egg_crack)_
  static const ParticleType egg_crack = ParticleType('minecraft:egg_crack');

  /// _(minecraft:elder_guardian)_
  static const ParticleType elder_guardian =
      ParticleType('minecraft:elder_guardian');

  /// _(minecraft:electric_spark)_
  static const ParticleType electric_spark =
      ParticleType('minecraft:electric_spark');

  /// _(minecraft:enchant)_
  static const ParticleType enchant = ParticleType('minecraft:enchant');

  /// _(minecraft:enchanted_hit)_
  static const ParticleType enchanted_hit =
      ParticleType('minecraft:enchanted_hit');

  /// _(minecraft:end_rod)_
  static const ParticleType end_rod = ParticleType('minecraft:end_rod');

  /// _(minecraft:entity_effect)_
  static const ParticleType entity_effect =
      ParticleType('minecraft:entity_effect');

  /// _(minecraft:explosion)_
  static const ParticleType explosion = ParticleType('minecraft:explosion');

  /// _(minecraft:explosion_emitter)_
  static const ParticleType explosion_emitter =
      ParticleType('minecraft:explosion_emitter');

  /// _(minecraft:falling_dripstone_lava)_
  static const ParticleType falling_dripstone_lava =
      ParticleType('minecraft:falling_dripstone_lava');

  /// _(minecraft:falling_dripstone_water)_
  static const ParticleType falling_dripstone_water =
      ParticleType('minecraft:falling_dripstone_water');

  /// _(minecraft:falling_dust)_
  static const ParticleType falling_dust =
      ParticleType('minecraft:falling_dust');

  /// _(minecraft:falling_honey)_
  static const ParticleType falling_honey =
      ParticleType('minecraft:falling_honey');

  /// _(minecraft:falling_lava)_
  static const ParticleType falling_lava =
      ParticleType('minecraft:falling_lava');

  /// _(minecraft:falling_nectar)_
  static const ParticleType falling_nectar =
      ParticleType('minecraft:falling_nectar');

  /// _(minecraft:falling_obsidian_tear)_
  static const ParticleType falling_obsidian_tear =
      ParticleType('minecraft:falling_obsidian_tear');

  /// _(minecraft:falling_spore_blossom)_
  static const ParticleType falling_spore_blossom =
      ParticleType('minecraft:falling_spore_blossom');

  /// _(minecraft:falling_water)_
  static const ParticleType falling_water =
      ParticleType('minecraft:falling_water');

  /// _(minecraft:firework)_
  static const ParticleType firework = ParticleType('minecraft:firework');

  /// _(minecraft:fishing)_
  static const ParticleType fishing = ParticleType('minecraft:fishing');

  /// _(minecraft:flame)_
  static const ParticleType flame = ParticleType('minecraft:flame');

  /// _(minecraft:flash)_
  static const ParticleType flash = ParticleType('minecraft:flash');

  /// _(minecraft:glow)_
  static const ParticleType glow = ParticleType('minecraft:glow');

  /// _(minecraft:glow_squid_ink)_
  static const ParticleType glow_squid_ink =
      ParticleType('minecraft:glow_squid_ink');

  /// _(minecraft:gust)_
  static const ParticleType gust = ParticleType('minecraft:gust');

  /// _(minecraft:gust_dust)_
  static const ParticleType gust_dust = ParticleType('minecraft:gust_dust');

  /// _(minecraft:gust_emitter)_
  static const ParticleType gust_emitter =
      ParticleType('minecraft:gust_emitter');

  /// _(minecraft:happy_villager)_
  static const ParticleType happy_villager =
      ParticleType('minecraft:happy_villager');

  /// _(minecraft:heart)_
  static const ParticleType heart = ParticleType('minecraft:heart');

  /// _(minecraft:instant_effect)_
  static const ParticleType instant_effect =
      ParticleType('minecraft:instant_effect');

  /// _(minecraft:item)_
  static const ParticleType item = ParticleType('minecraft:item');

  /// _(minecraft:item_slime)_
  static const ParticleType item_slime = ParticleType('minecraft:item_slime');

  /// _(minecraft:item_snowball)_
  static const ParticleType item_snowball =
      ParticleType('minecraft:item_snowball');

  /// _(minecraft:landing_honey)_
  static const ParticleType landing_honey =
      ParticleType('minecraft:landing_honey');

  /// _(minecraft:landing_lava)_
  static const ParticleType landing_lava =
      ParticleType('minecraft:landing_lava');

  /// _(minecraft:landing_obsidian_tear)_
  static const ParticleType landing_obsidian_tear =
      ParticleType('minecraft:landing_obsidian_tear');

  /// _(minecraft:large_smoke)_
  static const ParticleType large_smoke = ParticleType('minecraft:large_smoke');

  /// _(minecraft:lava)_
  static const ParticleType lava = ParticleType('minecraft:lava');

  /// _(minecraft:mycelium)_
  static const ParticleType mycelium = ParticleType('minecraft:mycelium');

  /// _(minecraft:nautilus)_
  static const ParticleType nautilus = ParticleType('minecraft:nautilus');

  /// _(minecraft:note)_
  static const ParticleType note = ParticleType('minecraft:note');

  /// _(minecraft:poof)_
  static const ParticleType poof = ParticleType('minecraft:poof');

  /// _(minecraft:portal)_
  static const ParticleType portal = ParticleType('minecraft:portal');

  /// _(minecraft:rain)_
  static const ParticleType rain = ParticleType('minecraft:rain');

  /// _(minecraft:reverse_portal)_
  static const ParticleType reverse_portal =
      ParticleType('minecraft:reverse_portal');

  /// _(minecraft:scrape)_
  static const ParticleType scrape = ParticleType('minecraft:scrape');

  /// _(minecraft:sculk_charge)_
  static const ParticleType sculk_charge =
      ParticleType('minecraft:sculk_charge');

  /// _(minecraft:sculk_charge_pop)_
  static const ParticleType sculk_charge_pop =
      ParticleType('minecraft:sculk_charge_pop');

  /// _(minecraft:sculk_soul)_
  static const ParticleType sculk_soul = ParticleType('minecraft:sculk_soul');

  /// _(minecraft:shriek)_
  static const ParticleType shriek = ParticleType('minecraft:shriek');

  /// _(minecraft:small_flame)_
  static const ParticleType small_flame = ParticleType('minecraft:small_flame');

  /// _(minecraft:smoke)_
  static const ParticleType smoke = ParticleType('minecraft:smoke');

  /// _(minecraft:sneeze)_
  static const ParticleType sneeze = ParticleType('minecraft:sneeze');

  /// _(minecraft:snowflake)_
  static const ParticleType snowflake = ParticleType('minecraft:snowflake');

  /// _(minecraft:sonic_boom)_
  static const ParticleType sonic_boom = ParticleType('minecraft:sonic_boom');

  /// _(minecraft:soul)_
  static const ParticleType soul = ParticleType('minecraft:soul');

  /// _(minecraft:soul_fire_flame)_
  static const ParticleType soul_fire_flame =
      ParticleType('minecraft:soul_fire_flame');

  /// _(minecraft:spit)_
  static const ParticleType spit = ParticleType('minecraft:spit');

  /// _(minecraft:splash)_
  static const ParticleType splash = ParticleType('minecraft:splash');

  /// _(minecraft:spore_blossom_air)_
  static const ParticleType spore_blossom_air =
      ParticleType('minecraft:spore_blossom_air');

  /// _(minecraft:squid_ink)_
  static const ParticleType squid_ink = ParticleType('minecraft:squid_ink');

  /// _(minecraft:sweep_attack)_
  static const ParticleType sweep_attack =
      ParticleType('minecraft:sweep_attack');

  /// _(minecraft:totem_of_undying)_
  static const ParticleType totem_of_undying =
      ParticleType('minecraft:totem_of_undying');

  /// _(minecraft:trial_spawner_detection)_
  static const ParticleType trial_spawner_detection =
      ParticleType('minecraft:trial_spawner_detection');

  /// _(minecraft:underwater)_
  static const ParticleType underwater = ParticleType('minecraft:underwater');

  /// _(minecraft:vibration)_
  static const ParticleType vibration = ParticleType('minecraft:vibration');

  /// _(minecraft:warped_spore)_
  static const ParticleType warped_spore =
      ParticleType('minecraft:warped_spore');

  /// _(minecraft:wax_off)_
  static const ParticleType wax_off = ParticleType('minecraft:wax_off');

  /// _(minecraft:wax_on)_
  static const ParticleType wax_on = ParticleType('minecraft:wax_on');

  /// _(minecraft:white_ash)_
  static const ParticleType white_ash = ParticleType('minecraft:white_ash');

  /// _(minecraft:white_smoke)_
  static const ParticleType white_smoke = ParticleType('minecraft:white_smoke');

  /// _(minecraft:witch)_
  static const ParticleType witch = ParticleType('minecraft:witch');

  //[[[end]]]

  /// A List of all Minecraft particles
  static List<ParticleType> get all => const [
        /*[[[cog
    for b in blocks:
      cog.outl(f'{b},')
    ]]]*/
        ambient_entity_effect,
        angry_villager,
        ash,
        block,
        block_marker,
        bubble,
        bubble_column_up,
        bubble_pop,
        campfire_cosy_smoke,
        campfire_signal_smoke,
        cherry_leaves,
        cloud,
        composter,
        crimson_spore,
        crit,
        current_down,
        damage_indicator,
        dolphin,
        dragon_breath,
        dripping_dripstone_lava,
        dripping_dripstone_water,
        dripping_honey,
        dripping_lava,
        dripping_obsidian_tear,
        dripping_water,
        dust,
        dust_color_transition,
        dust_plume,
        effect,
        egg_crack,
        elder_guardian,
        electric_spark,
        enchant,
        enchanted_hit,
        end_rod,
        entity_effect,
        explosion,
        explosion_emitter,
        falling_dripstone_lava,
        falling_dripstone_water,
        falling_dust,
        falling_honey,
        falling_lava,
        falling_nectar,
        falling_obsidian_tear,
        falling_spore_blossom,
        falling_water,
        firework,
        fishing,
        flame,
        flash,
        glow,
        glow_squid_ink,
        gust,
        gust_dust,
        gust_emitter,
        happy_villager,
        heart,
        instant_effect,
        item,
        item_slime,
        item_snowball,
        landing_honey,
        landing_lava,
        landing_obsidian_tear,
        large_smoke,
        lava,
        mycelium,
        nautilus,
        note,
        poof,
        portal,
        rain,
        reverse_portal,
        scrape,
        sculk_charge,
        sculk_charge_pop,
        sculk_soul,
        shriek,
        small_flame,
        smoke,
        sneeze,
        snowflake,
        sonic_boom,
        soul,
        soul_fire_flame,
        spit,
        splash,
        spore_blossom_air,
        squid_ink,
        sweep_attack,
        totem_of_undying,
        trial_spawner_detection,
        underwater,
        vibration,
        warped_spore,
        wax_off,
        wax_on,
        white_ash,
        white_smoke,
        witch,
        //[[[end]]]
      ];
}

class ParticleType {
  final String type;
  const ParticleType(this.type);

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    if (other is ParticleType && other.type == type) {
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
