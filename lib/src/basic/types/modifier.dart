import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class Modifier {
  final AttributeType type;
  final ModifierSlot slot;
  //final UUID uuid;
  final String id;
  final Double amount;
  final ModifierOperation operation;


  const Modifier({required this.type, required this.slot, required this.id, required this.amount, required this.operation});

  Map<String, dynamic> getMap(){
    return {
      'type': type.toString(),
      'slot':slot.name,
      'id':id,
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