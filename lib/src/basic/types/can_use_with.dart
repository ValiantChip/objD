import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class CanUseWith {
  final List<BlockPredicate> predicates;
  final bool? show_in_tooltip;

  CanUseWith({required this.predicates, this.show_in_tooltip});

  Map<String, dynamic> getMap(){
    var map = <String, dynamic>{'predicates':predicates.map((p) => p.getJson()).toList()};
    if(show_in_tooltip != null){
      map['show_in_tooltip'] = show_in_tooltip;
    }
    return map;
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}