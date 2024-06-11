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

  @override
  String toString() {
    var str = "[";
    str += attribute_modifiers == null ? "attribute_modifiers=${gson.encode(attribute_modifiers!.map((m) => m.getMap()).toList())}": "";
    str += "]";
    return str;
  }
}