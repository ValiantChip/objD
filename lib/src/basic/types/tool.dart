import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/block_selector.dart';

class Tool {
  final double? default_mining_speed;
  final int? damage_per_block;
  final List<Rule>? rules;

  const Tool({this.default_mining_speed, this.damage_per_block, this.rules});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {};
    if(default_mining_speed != null){
      map['default_mining_speed'] = default_mining_speed;
    }
    if(damage_per_block != null){
      map['damage_per_block'] = damage_per_block;
    }
    if(rules != null){
      map['rules'] = rules!.map((r) => r.getMap()).toList();
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class Rule {
  final BlockSelector blocks;
  final double? speed;
  final bool? correct_for_drops;

  const Rule({required this.blocks, this.speed, this.correct_for_drops});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'blocks':blocks.getComponents()
    };
    if(speed != null){
      map['speed'] = Float(speed!);
    }
    if(correct_for_drops != null){
      map['correct_for_drops'] = correct_for_drops;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}