import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class DyedColor {
  //Only use Color.fromRGB for rgb
  final Color rgb;
  final bool? show_in_tooltip;

  DyedColor({required this.rgb, this.show_in_tooltip});

  Map<String, dynamic> getMap() {
    var map = <String, dynamic>{
      'rgb':rgb.toString()
    };

    if(show_in_tooltip != null){
      map['show_in_tooltip'] = show_in_tooltip;
    }

    return map;
  }

  String getNbt(){
    return gson.encode(getMap());
  }
}