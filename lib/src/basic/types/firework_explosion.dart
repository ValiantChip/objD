import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class FireworkExplosion {
  //Only use Color.fromRGB() for colors and fade_colors
  final FireworkShape shape;
  final List<Color>?  colors,
                      fade_colors;
  final bool? has_trail,
              has_twinkle;
  
  const FireworkExplosion({required this.shape, this.colors, this.fade_colors, this.has_trail, this.has_twinkle});

  Map<String, dynamic> getMap() {
    var map = <String, dynamic>{
      'shape' : shape.name
    };

    if(colors != null){
      map['colors'] = colors!.map((c) => c.toString());
    }
    if(fade_colors != null){
      map['fade_colors'] = fade_colors!.map((c) => c.toString());
    }
    if(has_trail != null){
      map['has_trail'] = has_trail;
    }
    if(has_twinkle != null){
      map['has_twinkle'] = has_twinkle;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

enum FireworkShape {
  small_ball('small_ball'),
  large_ball('large_ball'),
  star('star'),
  creeper('creeper'),
  burst('burst'),
  ;
  const FireworkShape(this.name);

  final String name;
}