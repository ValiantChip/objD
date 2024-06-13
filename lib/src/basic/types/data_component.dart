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
    List<Modifier>? Function()? attribute_modifiers,
    List<BannerPattern>? Function()? banner_patterns,
    Color? Function()? base_color,
    List<Bee>? Function()? bees,
    Map<String, dynamic>? Function()? block_entity_data,
    Map<String, dynamic>? Function()? block_state,
    Map<String, dynamic>? Function()? bucket_entity_data,
    Map<String, dynamic>? Function()? custom_data,
    Map<String, dynamic>? Function()? entity_data,
    List<Item>? Function()? bundle_contents,
    List<Item>? Function()? charged_projectiles,
    CanUseWith? Function()? can_break,
    CanUseWith? Function()? can_place_on,
    Container? Function()? container,
    ContainerLoot? Function()? container_loot,
    int? Function()? custom_model_data,
    TextComponent? Function()? custom_name,
    int? Function()? damage,
    Map<String, String>? Function()? debug_stick_state,
    DyedColor? Function()? dyedColor,
    bool? Function()? enchantment_glint_overide,
    Enchantments? Function()? enchantments,
    Map? Function()? fire_resistant,
    FireworkExplosion? Function()? firework_explosion,
    Fireworks? Function()? fireworks,
    Food? Function()? food,
    Map?  Function()? hide_additional_tooltip,
    Map? Function()? hide_tooltip,
    Instrument? Function()? instrument,
    Map? Function()? intangible_projectile,
    TextComponent? Function()? item_name,
    String? Function()? lock,
    LodestoneTracker? Function()? lodestone_tracker,
    List<TextComponent>? Function()? lore,
    Color? Function()? map_color,
    Map<String, MapDecoration>? Function()? map_decorations,
    int?  Function()? map_id,
    int? Function()? max_damage,
    int? Function()? max_stack_size,
    int? Function()? ominous_bottle_amplifier,
    Sound? Function()? note_block_sound,
    List<Item>? Function()? pot_decorations,
    PotionContents? Function()? potion_contents,
    Profile? Function()? profile,
    Rarity? Function()? rarity,
    List<String>? Function()? recipies,
    int? Function()? repair_cost,
    StoredEnchantments? Function()? stored_enchantments,
    List<SuspiciousStewEffect>? Function()? suspicious_stew_effects,
    Tool? Function()? tool,
    Trim? Function()? trim,
    Map? Function()? unbreakable,
    WritableBookContent? Function()? writable_book_content,
    WrittenBookContent? Function()? written_book_content,
  }) => DataComponent(
      attribute_modifiers: attribute_modifiers != null ? attribute_modifiers() : this.attribute_modifiers,
      banner_patterns: banner_patterns != null ? banner_patterns() : this.banner_patterns,
      base_color: base_color != null ? base_color() : this.base_color,
      bees: bees != null ? bees() : this.bees,
      block_entity_data: block_entity_data != null ? block_entity_data() : this.block_entity_data,
      block_state: block_state != null ? block_state() : this.block_state,
      bucket_entity_data: bucket_entity_data != null ? bucket_entity_data() : this.bucket_entity_data,
      custom_data: custom_data != null ? custom_data() : this.custom_data,
      entity_data: entity_data != null ? entity_data() : this.entity_data,
      bundle_contents: bundle_contents != null ? bundle_contents() : this.bundle_contents,
      charged_projectiles: charged_projectiles != null ? charged_projectiles() : this.charged_projectiles,
      can_break: can_break != null ? can_break() : this.can_break,
      can_place_on: can_place_on != null ? can_place_on() : this.can_place_on,
      container: container != null ? container() : this.container,
      container_loot: container_loot != null ? container_loot() : this.container_loot,
      custom_model_data: custom_model_data != null ? custom_model_data() : this.custom_model_data,
      custom_name: custom_name != null ? custom_name() : this.custom_name,
      damage: damage != null ? damage() : this.damage,
      debug_stick_state: debug_stick_state != null ? debug_stick_state() : this.debug_stick_state,
      dyedColor: dyedColor != null ? dyedColor() : this.dyedColor,
      enchantment_glint_overide: enchantment_glint_overide != null ? enchantment_glint_overide() : this.enchantment_glint_overide,
      enchantments: enchantments != null ? enchantments() : this.enchantments,
      fire_resistant: fire_resistant != null ? fire_resistant() : this.fire_resistant,
      firework_explosion: firework_explosion != null ? firework_explosion() : this.firework_explosion,
      fireworks: fireworks != null ? fireworks() : this.fireworks,
      food: food != null ? food() : this.food,
      hide_additional_tooltip: hide_additional_tooltip != null ? hide_additional_tooltip() : this.hide_additional_tooltip,
      hide_tooltip: hide_tooltip != null ? hide_tooltip() : this.hide_tooltip,
      instrument: instrument != null ? instrument() : this.instrument,
      intangible_projectile: intangible_projectile != null ? intangible_projectile() : this.intangible_projectile,
      item_name: item_name != null ? item_name() : this.item_name,
      lock: lock != null ? lock() : this.lock,
      lodestone_tracker: lodestone_tracker != null ? lodestone_tracker() : this.lodestone_tracker,
      lore: lore != null ? lore() : this.lore,
      map_color: map_color != null ? map_color() : this.map_color,
      map_decorations: map_decorations != null ? map_decorations() : this.map_decorations,
      map_id: map_id != null ? map_id() : this.map_id,
      max_damage: max_damage != null ? max_damage() : this.max_damage,
      max_stack_size: max_stack_size != null ? max_stack_size() : this.max_stack_size,
      ominous_bottle_amplifier: ominous_bottle_amplifier != null ? ominous_bottle_amplifier() : this.ominous_bottle_amplifier,
      note_block_sound: note_block_sound != null ? note_block_sound() : this.note_block_sound,
      pot_decorations: pot_decorations != null ? pot_decorations() : this.pot_decorations,
      potion_contents: potion_contents != null ? potion_contents() : this.potion_contents,
      profile: profile != null ? profile() : this.profile,
      rarity: rarity != null ? rarity() : this.rarity,
      recipies: recipies != null ? recipies() : this.recipies,
      repair_cost: repair_cost != null ? repair_cost() : this.repair_cost,
      stored_enchantments: stored_enchantments != null ? stored_enchantments() : this.stored_enchantments,
      suspicious_stew_effects: suspicious_stew_effects != null ? suspicious_stew_effects() : this.suspicious_stew_effects,
      tool: tool != null ? tool() : this.tool,
      trim: trim != null ? trim() : this.trim,
      unbreakable: unbreakable != null ? unbreakable() : this.unbreakable,
      writable_book_content: writable_book_content != null ? writable_book_content() : this.writable_book_content,
      written_book_content: written_book_content != null ? written_book_content() : this.written_book_content,
    );

  DataComponent mergeWith(DataComponent? d){
    return d != null ? copyWith(
      attribute_modifiers: () => d.attribute_modifiers, 
      banner_patterns: () => d.banner_patterns, 
      base_color: () => d.base_color, 
      bees: () => d.bees, 
      block_entity_data: () => d.block_entity_data, 
      block_state: () => d.block_state, 
      bucket_entity_data: () => d.bucket_entity_data, 
      custom_data: () => d.custom_data, 
      entity_data: () => d.entity_data, 
      bundle_contents: () => d.bundle_contents, 
      charged_projectiles: () => d.charged_projectiles, 
      can_break: () => d.can_break, 
      can_place_on: () => d.can_place_on, 
      container: () => d.container, 
      container_loot: () => d.container_loot, 
      custom_model_data: () => d.custom_model_data, 
      custom_name: () => d.custom_name, 
      damage: () => d.damage, 
      debug_stick_state: () => d.debug_stick_state, 
      dyedColor: () => d.dyedColor, 
      enchantment_glint_overide: () => d.enchantment_glint_overide, 
      enchantments: () => d.enchantments, 
      fire_resistant: () => d.fire_resistant, 
      firework_explosion: () => d.firework_explosion, 
      fireworks: () => d.fireworks, 
      food: () => d.food, 
      hide_additional_tooltip: () => d.hide_additional_tooltip, 
      hide_tooltip: () => d.hide_tooltip, 
      instrument: () => d.instrument, 
      intangible_projectile: () => d.intangible_projectile, 
      item_name: () => d.item_name, 
      lock: () => d.lock, 
      lodestone_tracker: () => d.lodestone_tracker, 
      lore: () => d.lore, 
      map_color: () => d.map_color, 
      map_decorations: () => d.map_decorations, 
      map_id: () => d.map_id, 
      max_damage: () => d.max_damage, 
      max_stack_size: () => d.max_stack_size, 
      ominous_bottle_amplifier: () => d.ominous_bottle_amplifier, 
      note_block_sound: () => d.note_block_sound, 
      pot_decorations: () => d.pot_decorations, 
      potion_contents: () => d.potion_contents, 
      profile: () => d.profile, 
      rarity: () => d.rarity, 
      recipies: () => d.recipies, 
      repair_cost: () => d.repair_cost, 
      stored_enchantments: () => d.stored_enchantments, 
      suspicious_stew_effects: () => d.suspicious_stew_effects, 
      tool: () => d.tool, 
      trim: () => d.trim, 
      unbreakable: () => d.unbreakable, 
      writable_book_content: () => d.writable_book_content, 
      written_book_content: () => d.written_book_content
    ) : this;
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
      map["\"minecraft:attribute_modifiers\""]=attribute_modifiers!.map((m) => m.getMap()).toList();
    }
    if(banner_patterns != null){
      map["\"minecraft:banner_patterns\""]=banner_patterns!.map((p) => p.getMap()).toList();
    }
    if(base_color != null) {
      map["\"minecraft:base_color\""]=base_color.toString();
    }
    if(bees != null) {
      map["\"minecraft:bees\""]=bees!.map((b) => b.getMap()).toList();
    }
    if(block_entity_data != null){
      map["\"minecraft:block_entity_data\""]=block_entity_data;
    }
    if(block_state != null){
      map["\"minecraft:block_state\""]=block_state;
    }
    if(bucket_entity_data != null) {
      map["\"minecraft:bucket_entity_data\""]=bucket_entity_data;
    }
    if(custom_data != null){
      map["\"minecraft:custom_data\""]=custom_data;
    }
    if(entity_data != null){
      map["\"minecraft:entity_data\""]=entity_data;
    }
    if(bundle_contents != null){
      map["\"minecraft:bundle_contents\""]=bundle_contents!.map((c) => c.getMap()).toList();
    }
    if(charged_projectiles != null){
      map["\"minecraft:charged_projectiles\""]=charged_projectiles!.map((c) => c.getMap()).toList();
    }
    if(can_break != null){
      map["\"minecraft:can_break\""]=can_break!.getMap();
    }
    if(can_place_on != null) {
      map["\"minecraft:can_place_on\""]=can_place_on!.getMap();
    }
    if(container != null){
      map["\"minecraft:container\""]=container!.getMap();
    }
    if(container_loot != null) {
      map["\"minecraft:container_loot\""]=container_loot!.getMap();
    }
    if(custom_model_data != null){
      map["\"minecraft:custom_model_data\""]=custom_model_data;
    }
    if(custom_name != null){
      map["\"minecraft:custom_name\""]=custom_name!.toJson();
    }
    if(damage != null) {
      map["\"minecraft:damage\""]=damage;
    }
    if(debug_stick_state != null){
      map["\"minecraft:debug_stick_state\""]=debug_stick_state;
    }
    if(dyedColor != null){
      map["\"minecraft:dyed_color\""]=dyedColor!.getMap();
    }
    if(enchantment_glint_overide != null){
      map["\"minecraft:enchantment_glint_overide\""]=enchantment_glint_overide;
    }
    if(enchantments != null) {
      map["\"minecraft:enchantments\""]=enchantments!.getMap();
    }
    if(fire_resistant != null) {
      map["\"minecraft:fire_resistant\""]=fire_resistant;
    }
    if(firework_explosion != null) {
      map["\"minecraft:firework_explosion\""]=firework_explosion!.getMap();
    }
    if(fireworks != null){
      map["\"minecraft:fireworks\""]=fireworks!.getMap();
    }
    if(food != null) {
      map["\"minecraft:food\""]=food!.getMap();
    }
    if(hide_additional_tooltip != null){
      map["\"minecraft:hide_additional_tooltip\""]=hide_additional_tooltip;
    }
    if(hide_tooltip != null) {
      map["\"minecraft:hide_tooltip\""]=hide_tooltip;
    }
    if(instrument != null) {
      map["\"minecraft:instrument\""]=instrument!.getComponents();
    }
    if(intangible_projectile != null){
      map["\"minecraft:intangible_projectile\""]=intangible_projectile;
    }
    if(item_name != null){
      map["\"minecraft:item_name\""]=item_name!.toJson();
    }
    if(lock != null) {
      map["\"minecraft:lock\""]=lock;
    }
    if(lodestone_tracker != null){
      map["\"minecraft:lodestone_tracker\""]=lodestone_tracker!.getMap();
    }
    if(lore != null) {
      map["\"minecraft:lore\""]=lore!.map((t) => t.toJson()).toList();
    }
    if(map_color != null){
      map["\"minecraft:map_color\""]=map_color.toString();
    }
    if(map_decorations != null){
      map["\"minecraft:map_decorations\""]=map_decorations!.map((key, value) => MapEntry(key, value.getMap()));
    }
    if(map_id != null) {
      map["\"minecraft:map_id\""]=map_id;
    }
    if(max_damage != null) {
      map["\"minecraft:max_damage\""]=max_damage;
    }
    if(max_stack_size != null) {
      map["\"minecraft:max_stack_size\""]=max_stack_size;
    }
    if(ominous_bottle_amplifier != null) {
      map["\"minecraft:omious_bottle_amplifier\""]=ominous_bottle_amplifier;
    }
    if(note_block_sound != null) {
      map["\"minecraft:note_block_sound\""]=note_block_sound!.name;
    }
    if(pot_decorations != null){
      map["\"minecraft:pot_decorations\""]=pot_decorations!.map((i) => i.getMap()).toList();
    }
    if(potion_contents != null){
      map["\"minecraft:potion_contents\""]=potion_contents!.getMap();
    }
    if(profile != null){
      map["\"minecraft:profile\""]=profile!.getMap();
    }
    if(rarity != null) {
      map["\"minecraft:rarity\""]=rarity!.name;
    }
    if(recipies != null) {
      map["\"minecraft:recipies\""]=recipies;
    }
    if(repair_cost != null){
      map["\"minecraft:repair_cost\""]=repair_cost;
    }
    if(stored_enchantments != null){
      map["\"minecraft:stored_enchantments\""]=stored_enchantments!.getMap();
    }
    if(suspicious_stew_effects != null){
      map["\"minecraft:suspicious_stew_effects\""]=suspicious_stew_effects!.map((e) => e.getMap()).toList();
    }
    if(tool != null) {
      map["\"minecraft:tool\""]=tool!.getMap();
    }
    if(unbreakable != null){
      map["\"minecraft:unbreakable\""]=unbreakable;
    }
    if(writable_book_content != null){
      map["\"minecraft:writable_book_content\""]=writable_book_content!.pages;
    }
    if(written_book_content != null) {
      map["\"minecraft:written_book_content\""]=written_book_content!.getMap();
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

class DataComponentCopier {
    final List<Modifier>? Function()? attribute_modifiers;
    final List<BannerPattern>? Function()? banner_patterns;
    final Color? Function()? base_color;
    final List<Bee>? Function()? bees;
    final Map<String, dynamic>? Function()? block_entity_data;
    final Map<String, dynamic>? Function()? block_state;
    final Map<String, dynamic>? Function()? bucket_entity_data;
    final Map<String, dynamic>? Function()? custom_data;
    final Map<String, dynamic>? Function()? entity_data;
    final List<Item>? Function()? bundle_contents;
    final List<Item>? Function()? charged_projectiles;
    final CanUseWith? Function()? can_break;
    final CanUseWith? Function()? can_place_on;
    final Container? Function()? container;
    final ContainerLoot? Function()? container_loot;
    final int? Function()? custom_model_data;
    final TextComponent? Function()? custom_name;
    final int? Function()? damage;
    final Map<String, String>? Function()? debug_stick_state;
    final DyedColor? Function()? dyedColor;
    final bool? Function()? enchantment_glint_overide;
    final Enchantments? Function()? enchantments;
    final Map? Function()? fire_resistant;
    final FireworkExplosion? Function()? firework_explosion;
    final Fireworks? Function()? fireworks;
    final Food? Function()? food;
    final Map?  Function()? hide_additional_tooltip;
    final Map? Function()? hide_tooltip;
    final Instrument? Function()? instrument;
    final Map? Function()? intangible_projectile;
    final TextComponent? Function()? item_name;
    final String? Function()? lock;
    final LodestoneTracker? Function()? lodestone_tracker;
    final List<TextComponent>? Function()? lore;
    final Color? Function()? map_color;
    final Map<String, MapDecoration>? Function()? map_decorations;
    final int?  Function()? map_id;
    final int? Function()? max_damage;
    final int? Function()? max_stack_size;
    final int? Function()? ominous_bottle_amplifier;
    final Sound? Function()? note_block_sound;
    final List<Item>? Function()? pot_decorations;
    final PotionContents? Function()? potion_contents;
    final Profile? Function()? profile;
    final Rarity? Function()? rarity;
    final List<String>? Function()? recipies;
    final int? Function()? repair_cost;
    final StoredEnchantments? Function()? stored_enchantments;
    final List<SuspiciousStewEffect>? Function()? suspicious_stew_effects;
    final Tool? Function()? tool;
    final Trim? Function()? trim;
    final Map? Function()? unbreakable;
    final WritableBookContent? Function()? writable_book_content;
    final WrittenBookContent? Function()? written_book_content;

    const DataComponentCopier({
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

    DataComponent copy(DataComponent? d){
      return (d ?? DataComponent()).copyWith(
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
}