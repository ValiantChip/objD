import 'package:gson/gson.dart';

class ContainerLoot {
  final String loot_table;
  final int seed;

  ContainerLoot({required this.loot_table, this.seed = 0});

  Map<String, dynamic> getMap() {
    return {
      'loot_table':loot_table,
      'seed':seed
    };
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}