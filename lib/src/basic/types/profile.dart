import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class Profile {
  final String? name;
  final UUID? id;
  final String? texture;

  const Profile({this.name, this.id, this.texture});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {};
    if(name != null){
      map['name'] = name;
    }
    if(id != null){
      map['id'] = id.toString();
    }
    if(texture != null){
      map['properties'] = [
        {
          'name':'textures',
          'value':texture
        }
      ];
    }
    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}