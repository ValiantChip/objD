import 'package:objd/core.dart';

class StoredEnchantments {
  final Map<Enchantment, int> levels;
  final bool? show_in_tooltip;

  const StoredEnchantments({required this.levels, this.show_in_tooltip});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'levels':levels.map((e, i) => MapEntry(e.name, i))
    };
    if(show_in_tooltip != null){
      map['show_in_tooltip'] = show_in_tooltip;
    }
    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}