import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class Modifier {
  final AttributeType type;
  final ModifierSlot slot;
  final UUID uuid;
  late final String name;
  final Double amount;
  final ModifierOperation operation;


  Modifier({required this.type, required this.slot, required this.uuid, required this.amount, required this.operation}){
    name = type.toString();
  }

  Map<String, dynamic> getMap(){
    return {
      'type': type.toString(),
      'slot':slot.name,
      'uuid':uuid.toString(),
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

enum ModifierOperation {
  add_value('add_value'),
  add_multiplied_base('add_multiplied_base'),
  add_multiplied_total('add_multiplied_total');

  const ModifierOperation(this.name);

  final String name;
}