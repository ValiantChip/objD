import 'package:gson/gson.dart';

class Bee {
  final Map<String, dynamic> entity_data;
  final int min_ticks_in_hive;
  final int ticks_in_hive;

  const Bee({required this.entity_data, required this. min_ticks_in_hive, required this.ticks_in_hive});

  Map<String, dynamic> getMap(){
    return {
      'entity_data':entity_data,
      'min_ticks_in_hive':min_ticks_in_hive,
      'ticks_in_hive':ticks_in_hive
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}