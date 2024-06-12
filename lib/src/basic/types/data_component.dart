import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class DataComponent {
  final List<Modifier>? attribute_modifiers;
  final List<BannerPattern>? banner_patterns;
  final Color? base_color;
  final List<Bee>? bees;
  final Map<String, dynamic>? block_entity_data,
                              block_state,
                              bucket_entity_data,
                              custom_data,
                              entity_data;
  final List<Item>? bundle_contents,
                    charged_projectiles;
  final CanUseWith? can_break,
                    can_place_on;
  final Container? container;
  final ContainerLoot? container_loot;
  final int? custom_model_data;
  final TextComponent? custom_name;
  final int? damage; 
  final Map<String, String>? debug_stick_state;
  final DyedColor? dyedColor;
  final bool? enchantment_glint_overide;
  final Enchantments? enchantments;
  final Map? fire_resistant;
  final FireworkExplosion? firework_explosion;
  final Fireworks? fireworks;
  final Food? food;
  final Map?  hide_additional_tooltip,
              hide_tooltip;
  final Instrument? instrument;
  final Map? intangible_projectile;
  final TextComponent? item_name;
  final String? lock;
  final LodestoneTracker? lodestone_tracker;
  final List<TextComponent>? lore;
  final Color? map_color;
  final Map<String, MapDecoration>? map_decorations;
  final int?  map_id,
              max_damage,
              max_stack_size,
              ominous_bottle_amplifier;
  final Sound? note_block_sound;
  final List<Item>? pot_decorations;
  final PotionContents? potion_contents;
  final Profile? profile;
  final Rarity? rarity;
  final List<String>? recipies;
  final int? repair_cost;
  final StoredEnchantments? stored_enchantments;
  final List<SuspiciousStewEffect>? suspicious_stew_effects;
  final Tool? tool;
  final Trim? trim;
  final Map? unbreakable;
  final WritableBookContent? writable_book_content;
  final WrittenBookContent? written_book_content;

  DataComponent({
                this.attribute_modifiers, 
                this.banner_patterns, 
                this.base_color, 
                this.bees, 
                this.block_entity_data, 
                this.block_state, 
                this.bucket_entity_data, 
                this.custom_data, 
                this.entity_data, 
                this.bundle_contents, 
                this.charged_projectiles, 
                this.can_break, 
                this.can_place_on, 
                this.container, 
                this.container_loot, 
                this.custom_model_data, 
                this.custom_name, 
                this.damage, 
                this.debug_stick_state, 
                this.dyedColor, 
                this.enchantment_glint_overide, 
                this.enchantments, 
                this.fire_resistant, 
                this.firework_explosion, 
                this.fireworks, 
                this.food, 
                this.hide_additional_tooltip, 
                this.hide_tooltip, 
                this.instrument, 
                this.intangible_projectile, 
                this.item_name, 
                this.lock, 
                this.lodestone_tracker, 
                this.lore, 
                this.map_color, 
                this.map_decorations, 
                this.map_id, 
                this.max_damage, 
                this.max_stack_size, 
                this.ominous_bottle_amplifier, 
                this.note_block_sound, 
                this.pot_decorations, 
                this.potion_contents, 
                this.profile, 
                this.rarity, 
                this.recipies, 
                this.repair_cost, 
                this.stored_enchantments, 
                this.suspicious_stew_effects, 
                this.tool, 
                this.trim, 
                this.unbreakable, 
                this.writable_book_content, 
                this.written_book_content
              });

  DataComponent copyWith({
    List<Modifier>? attribute_modifiers,
    List<BannerPattern>? banner_patterns,
    Color? base_color,
    List<Bee>? bees,
    Map<String, dynamic>? block_entity_data,
    Map<String, dynamic>? block_state,
    Map<String, dynamic>? bucket_entity_data,
    Map<String, dynamic>? custom_data,
    Map<String, dynamic>? entity_data,
    List<Item>? bundle_contents,
    List<Item>? charged_projectiles,
    CanUseWith? can_break,
    CanUseWith? can_place_on,
    Container? container,
    ContainerLoot? container_loot,
    int? custom_model_data,
    TextComponent? custom_name,
    int? damage,
    Map<String, String>? debug_stick_state,
    DyedColor? dyedColor,
    bool? enchantment_glint_overide,
    Enchantments? enchantments,
    Map? fire_resistant,
    FireworkExplosion? firework_explosion,
    Fireworks? fireworks,
    Food? food,
    Map?  hide_additional_tooltip,
    Map? hide_tooltip,
    Instrument? instrument,
    Map? intangible_projectile,
    TextComponent? item_name,
    String? lock,
    LodestoneTracker? lodestone_tracker,
    List<TextComponent>? lore,
    Color? map_color,
    Map<String, MapDecoration>? map_decorations,
    int?  map_id,
    int? max_damage,
    int? max_stack_size,
    int? ominous_bottle_amplifier,
    Sound? note_block_sound,
    List<Item>? pot_decorations,
    PotionContents? potion_contents,
    Profile? profile,
    Rarity? rarity,
    List<String>? recipies,
    int? repair_cost,
    StoredEnchantments? stored_enchantments,
    List<SuspiciousStewEffect>? suspicious_stew_effects,
    Tool? tool,
    Trim? trim,
    Map? unbreakable,
    WritableBookContent? writable_book_content,
    WrittenBookContent? written_book_content,
  }) {
    return DataComponent(
      attribute_modifiers: attribute_modifiers ?? this.attribute_modifiers,
      banner_patterns: banner_patterns ?? this.banner_patterns,
      base_color: base_color ?? this.base_color,
      bees: bees ?? this.bees,
      block_entity_data: block_entity_data ?? this.block_entity_data,
      block_state: block_state ?? this.block_state,
      bucket_entity_data: bucket_entity_data ?? this.bucket_entity_data,
      custom_data: custom_data ?? this.custom_data,
      entity_data: entity_data ?? this.entity_data,
      bundle_contents: bundle_contents ?? this.bundle_contents,
      charged_projectiles: charged_projectiles ?? this.charged_projectiles,
      can_break: can_break ?? this.can_break,
      can_place_on: can_place_on ?? this.can_place_on,
      container: container ?? this.container,
      container_loot: container_loot ?? this.container_loot,
      custom_model_data: custom_model_data ?? this.custom_model_data,
      custom_name: custom_name ?? this.custom_name,
      damage: damage ?? this.damage,
      debug_stick_state: debug_stick_state ?? this.debug_stick_state,
      dyedColor: dyedColor ?? this.dyedColor,
      enchantment_glint_overide: enchantment_glint_overide ?? this.enchantment_glint_overide,
      enchantments: enchantments ?? this.enchantments,
      fire_resistant: fire_resistant ?? this.fire_resistant,
      firework_explosion: firework_explosion ?? this.firework_explosion,
      fireworks: fireworks ?? this.fireworks,
      food: food ?? this.food,
      hide_additional_tooltip: hide_additional_tooltip ?? this.hide_additional_tooltip,
      hide_tooltip: hide_tooltip ?? this.hide_tooltip,
      instrument: instrument ?? this.instrument,
      intangible_projectile: intangible_projectile ?? this.intangible_projectile,
      item_name: item_name ?? this.item_name,
      lock: lock ?? this.lock,
      lodestone_tracker: lodestone_tracker ?? this.lodestone_tracker,
      lore: lore ?? this.lore,
      map_color: map_color ?? this.map_color,
      map_decorations: map_decorations ?? this.map_decorations,
      map_id: map_id ?? this.map_id,
      max_damage: max_damage ?? this.max_damage,
      max_stack_size: max_stack_size ?? this.max_stack_size,
      ominous_bottle_amplifier: ominous_bottle_amplifier ?? this.ominous_bottle_amplifier,
      note_block_sound: note_block_sound ?? this.note_block_sound,
      pot_decorations: pot_decorations ?? this.pot_decorations,
      potion_contents: potion_contents ?? this.potion_contents,
      profile: profile ?? this.profile,
      rarity: rarity ?? this.rarity,
      recipies: recipies ?? this.recipies,
      repair_cost: repair_cost ?? this.repair_cost,
      stored_enchantments: stored_enchantments ?? this.stored_enchantments,
      suspicious_stew_effects: suspicious_stew_effects ?? this.suspicious_stew_effects,
      tool: tool ?? this.tool,
      trim: trim ?? this.trim,
      unbreakable: unbreakable ?? this.unbreakable,
      writable_book_content: writable_book_content ?? this.writable_book_content,
      written_book_content: written_book_content ?? this.written_book_content,
    );
  }

  @override
  String toString() {
    var entries = getMap().entries;
    var str = "[";
    for(var e in entries){
      str += "${e.key}=${gson.encode(e.value)},";
    }
    str = str.substring(0, str.length - 1);
    str += "]";
    return str;
  }


  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {};
    if(attribute_modifiers != null){
      map["minecraft:attribute_modifiers"]=attribute_modifiers!.map((m) => m.getMap()).toList();
    }
    if(banner_patterns != null){
      map["minecraft:banner_patterns"]=banner_patterns!.map((p) => p.getMap()).toList();
    }
    if(base_color != null) {
      map["minecraft:base_color"]=base_color.toString();
    }
    if(bees != null) {
      map["minecraft:bees"]=bees!.map((b) => b.getMap()).toList();
    }
    if(block_entity_data != null){
      map["minecraft:block_entity_data"]=block_entity_data;
    }
    if(block_state != null){
      map["minecraft:block_state"]=block_state;
    }
    if(bucket_entity_data != null) {
      map["minecraft:bucket_entity_data"]=bucket_entity_data;
    }
    if(custom_data != null){
      map["minecraft:custom_data"]=custom_data;
    }
    if(entity_data != null){
      map["minecraft:entity_data"]=entity_data;
    }
    if(bundle_contents != null){
      map["minecraft:bundle_contents"]=bundle_contents!.map((c) => c.getMap()).toList();
    }
    if(charged_projectiles != null){
      map["minecraft:charged_projectiles"]=charged_projectiles!.map((c) => c.getMap()).toList();
    }
    if(can_break != null){
      map["minecraft:can_break"]=can_break!.getMap();
    }
    if(can_place_on != null) {
      map["minecraft:can_place_on"]=can_place_on!.getMap();
    }
    if(container != null){
      map["minecraft:container"]=container!.getMap();
    }
    if(container_loot != null) {
      map["minecraft:container_loot"]=container_loot!.getMap();
    }
    if(custom_model_data != null){
      map["minecraft:custom_model_data"]=custom_model_data;
    }
    if(custom_name != null){
      map["minecraft:custom_name"]=custom_name!.toJson();
    }
    if(damage != null) {
      map["minecraft:damage"]=damage;
    }
    if(debug_stick_state != null){
      map["minecraft:debug_stick_state"]=debug_stick_state;
    }
    if(dyedColor != null){
      map["minecraft:dyed_color"]=dyedColor!.getMap();
    }
    if(enchantment_glint_overide != null){
      map["minecraft:enchantment_glint_overide"]=enchantment_glint_overide;
    }
    if(enchantments != null) {
      map["minecraft:enchantments"]=enchantments!.getMap();
    }
    if(fire_resistant != null) {
      map["minecraft:fire_resistant"]=fire_resistant;
    }
    if(firework_explosion != null) {
      map["minecraft:firework_explosion"]=firework_explosion!.getMap();
    }
    if(fireworks != null){
      map["minecraft:fireworks"]=fireworks!.getMap();
    }
    if(food != null) {
      map["minecraft:food"]=food!.getMap();
    }
    if(hide_additional_tooltip != null){
      map["minecraft:hide_additional_tooltip"]=hide_additional_tooltip;
    }
    if(hide_tooltip != null) {
      map["minecraft:hide_tooltip"]=hide_tooltip;
    }
    if(instrument != null) {
      map["minecraft:instrument"]=instrument!.getComponents();
    }
    if(intangible_projectile != null){
      map["minecraft:intangible_projectile"]=intangible_projectile;
    }
    if(item_name != null){
      map["minecraft:item_name"]=item_name!.toJson();
    }
    if(lock != null) {
      map["minecraft:lock"]=lock;
    }
    if(lodestone_tracker != null){
      map["minecraft:lodestone_tracker"]=lodestone_tracker!.getMap();
    }
    if(lore != null) {
      map["minecraft:lore"]=lore!.map((t) => t.toJson()).toList();
    }
    if(map_color != null){
      map["minecraft:map_color"]=map_color.toString();
    }
    if(map_decorations != null){
      map["minecraft:map_decorations"]=map_decorations!.map((key, value) => MapEntry(key, value.getMap()));
    }
    if(map_id != null) {
      map["minecraft:map_id"]=map_id;
    }
    if(max_damage != null) {
      map["minecraft:max_damage"]=max_damage;
    }
    if(max_stack_size != null) {
      map["minecraft:max_stack_size"]=max_stack_size;
    }
    if(ominous_bottle_amplifier != null) {
      map["minecraft:omious_bottle_amplifier"]=ominous_bottle_amplifier;
    }
    if(note_block_sound != null) {
      map["minecraft:note_block_sound"]=note_block_sound!.name;
    }
    if(pot_decorations != null){
      map["minecraft:pot_decorations"]=pot_decorations!.map((i) => i.getMap()).toList();
    }
    if(potion_contents != null){
      map["minecraft:potion_contents"]=potion_contents!.getMap();
    }
    if(profile != null){
      map["minecraft:profile"]=profile!.getMap();
    }
    if(rarity != null) {
      map["minecraft:rarity"]=rarity!.name;
    }
    if(recipies != null) {
      map["minecraft:recipies"]=recipies;
    }
    if(repair_cost != null){
      map["minecraft:repair_cost"]=repair_cost;
    }
    if(stored_enchantments != null){
      map["minecraft:stored_enchantments"]=stored_enchantments!.getMap();
    }
    if(suspicious_stew_effects != null){
      map["minecraft:suspicious_stew_effects"]=suspicious_stew_effects!.map((e) => e.getMap()).toList();
    }
    if(tool != null) {
      map["minecraft:tool"]=tool!.getMap();
    }
    if(unbreakable != null){
      map["minecraft:unbreakable"]=unbreakable;
    }
    if(writable_book_content != null){
      map["minecraft:writable_book_content"]=writable_book_content!.pages;
    }
    if(written_book_content != null) {
      map["minecraft:written_book_content"]=written_book_content!.getMap();
    }
  return map;
  }

  DataComponent clone() {
    return DataComponent(
      attribute_modifiers: attribute_modifiers, 
      banner_patterns: banner_patterns, 
      base_color: base_color, 
      bees: bees, 
      block_entity_data: block_entity_data, 
      block_state: block_state, 
      bucket_entity_data: bucket_entity_data, 
      custom_data: custom_data, 
      entity_data: entity_data, 
      bundle_contents: bundle_contents, 
      charged_projectiles: charged_projectiles, 
      can_break: can_break, 
      can_place_on: can_place_on, 
      container: container, 
      container_loot: container_loot, 
      custom_model_data: custom_model_data, 
      custom_name: custom_name, 
      damage: damage, 
      debug_stick_state: debug_stick_state, 
      dyedColor: dyedColor, 
      enchantment_glint_overide: enchantment_glint_overide, 
      enchantments: enchantments, 
      fire_resistant: fire_resistant, 
      firework_explosion: firework_explosion, 
      fireworks: fireworks, 
      food: food, 
      hide_additional_tooltip: hide_additional_tooltip, 
      hide_tooltip: hide_tooltip, 
      instrument: instrument, 
      intangible_projectile: intangible_projectile, 
      item_name: item_name, 
      lock: lock, 
      lodestone_tracker: lodestone_tracker, 
      lore: lore, 
      map_color: map_color, 
      map_decorations: map_decorations, 
      map_id: map_id, 
      max_damage: max_damage, 
      max_stack_size: max_stack_size, 
      ominous_bottle_amplifier: ominous_bottle_amplifier, 
      note_block_sound: note_block_sound, 
      pot_decorations: pot_decorations, 
      potion_contents: potion_contents, 
      profile: profile, 
      rarity: rarity, 
      recipies: recipies, 
      repair_cost: repair_cost, 
      stored_enchantments: stored_enchantments, 
      suspicious_stew_effects: suspicious_stew_effects, 
      tool: tool, 
      trim: trim, 
      unbreakable: unbreakable, 
      writable_book_content: writable_book_content, 
      written_book_content: written_book_content
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataComponent &&
      other.attribute_modifiers == attribute_modifiers &&
      other.banner_patterns == banner_patterns &&
      other.base_color == base_color &&
      other.bees == bees &&
      other.block_entity_data == block_entity_data &&
      other.block_state == block_state &&
      other.bucket_entity_data == bucket_entity_data &&
      other.custom_data == custom_data &&
      other.entity_data == entity_data &&
      other.bundle_contents == bundle_contents &&
      other.charged_projectiles == charged_projectiles &&
      other.can_break == can_break &&
      other.can_place_on == can_place_on &&
      other.container == container &&
      other.container_loot == container_loot &&
      other.custom_model_data == custom_model_data &&
      other.custom_name == custom_name &&
      other.damage == damage &&
      other.debug_stick_state == debug_stick_state &&
      other.dyedColor == dyedColor &&
      other.enchantment_glint_overide == enchantment_glint_overide &&
      other.enchantments == enchantments &&
      other.fire_resistant == fire_resistant &&
      other.firework_explosion == firework_explosion &&
      other.fireworks == fireworks &&
      other.food == food &&
      other.hide_additional_tooltip == hide_additional_tooltip &&
      other.hide_tooltip == hide_tooltip &&
      other.instrument == instrument &&
      other.intangible_projectile == intangible_projectile &&
      other.item_name == item_name &&
      other.lock == lock &&
      other.lodestone_tracker == lodestone_tracker &&
      other.lore == lore &&
      other.map_color == map_color &&
      other.map_decorations == map_decorations &&
      other.map_id == map_id &&
      other.max_damage == max_damage &&
      other.max_stack_size == max_stack_size &&
      other.ominous_bottle_amplifier == ominous_bottle_amplifier &&
      other.note_block_sound == note_block_sound &&
      other.pot_decorations == pot_decorations &&
      other.potion_contents == potion_contents &&
      other.profile == profile &&
      other.rarity == rarity &&
      other.recipies == recipies &&
      other.repair_cost == repair_cost &&
      other.stored_enchantments == stored_enchantments &&
      other.suspicious_stew_effects == suspicious_stew_effects &&
      other.tool == tool &&
      other.trim == trim &&
      other.unbreakable == unbreakable &&
      other.writable_book_content == writable_book_content &&
      other.written_book_content == written_book_content;
  }

  @override
  int get hashCode {
    return
      attribute_modifiers.hashCode^
      banner_patterns.hashCode^
      base_color.hashCode^
      bees.hashCode^
      block_entity_data.hashCode^
      block_state.hashCode^
      bucket_entity_data.hashCode^
      custom_data.hashCode^
      entity_data.hashCode^
      bundle_contents.hashCode^
      charged_projectiles.hashCode^
      can_break.hashCode^
      can_place_on.hashCode^
      container.hashCode^
      container_loot.hashCode^
      custom_model_data.hashCode^
      custom_name.hashCode^
      damage.hashCode^
      debug_stick_state.hashCode^
      dyedColor.hashCode^
      enchantment_glint_overide.hashCode^
      enchantments.hashCode^
      fire_resistant.hashCode^
      firework_explosion.hashCode^
      fireworks.hashCode^
      food.hashCode^
      hide_additional_tooltip.hashCode^
      hide_tooltip.hashCode^
      instrument.hashCode^
      intangible_projectile.hashCode^
      item_name.hashCode^
      lock.hashCode^
      lodestone_tracker.hashCode^
      lore.hashCode^
      map_color.hashCode^
      map_decorations.hashCode^
      map_id.hashCode^
      max_damage.hashCode^
      max_stack_size.hashCode^
      ominous_bottle_amplifier.hashCode^
      note_block_sound.hashCode^
      pot_decorations.hashCode^
      potion_contents.hashCode^
      profile.hashCode^
      rarity.hashCode^
      recipies.hashCode^
      repair_cost.hashCode^
      stored_enchantments.hashCode^
      suspicious_stew_effects.hashCode^
      tool.hashCode^
      trim.hashCode^
      unbreakable.hashCode^
      writable_book_content.hashCode^
      written_book_content.hashCode;
  }
}