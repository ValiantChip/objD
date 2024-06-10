import 'package:objd/core.dart';
import 'package:gson/gson.dart';

class Modifier {
  ModifierType type;
  ModifierSlot slot;
  List<int> uuid;
  late String name;
  Double amount;
  ModifierOperation operation;


  Modifier({required this.type, required this.slot, required this.uuid, required this.amount, required this.operation}){
    name = type.name;
  }

  Map<String, dynamic> getMap(){
    return {
      'type': type.name,
      'slot':slot.name,
      'uuid':uuid,
      'name':name,
      'amount':amount,
      'operation':operation.name
    };
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}

enum ModifierSlot {
  any('any'),
  hand('hand'),
  mainhand('mainhand'),
  offhand('offhand'),
  armor('armor'),
  head('head'),
  chest('chest'),
  legs('legs'),
  feet('feet'),
  ;

  const ModifierSlot(this.name);

  final String name;
}  

enum ModifierType {
  armor('generic.armor'),
  armor_toughness('generic.armor_toughness'),
  attack_damage('generic.attack_damage'),
  attack_speed('generic.attack_speed'),
  block_break_speed('player.block_break_speed'),
  block_interaction_range('player.block_interaction_range'),
  entity_interaction_range('player.entity_interaction_range'),
  fall_damage_multiplier('generic.fall_damage_multiplier'),
  follow_range('generic.follow_range'),
  gravity('generic.gravity'),
  jump_strength('generic.jump_strength'),
  knockback_resistance('generic.knockback_resistance'),
  luck('generic.luck'),
  max_absorption('generic.max_absorption'),
  max_health('generic.max_health'),
  movement_speed('generic.movement_speed'),
  safe_fall_distance('generic.safe_fall_distance'),
  scale('generic.scale'),
  step_height('generic.step_height'),
;
  const ModifierType(this.name);
  
  final String name;
}

enum ModifierOperation {
  add_value('add_value'),
  add_multiplied_base('add_multiplied_base'),
  add_multiplied_total('add_multiplied_total');

  const ModifierOperation(this.name);

  final String name;
}