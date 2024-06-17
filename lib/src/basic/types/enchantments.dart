import 'dart:convert';

import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/enchantment.dart';

class Enchantments {
  final Map<Enchantment, int> enchantments;
  final bool? show_in_tooltip;

  const Enchantments({required this.enchantments, this.show_in_tooltip});

  Map<String, dynamic> getMap(){
    Map<String, dynamic> map = enchantments.map((e, i) => MapEntry(e.name, i));
    if(show_in_tooltip != null){
      map['show_in_tooltip'] = show_in_tooltip;
    }

    return map;
  }

  String getNbt(){
    return json.encode(getMap());
  }
}