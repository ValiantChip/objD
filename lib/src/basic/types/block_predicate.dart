import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class BlockPredicate {
  final BlockSelector blocks;
  final Map<String, dynamic>? nbt;
  final Map<String, dynamic>? state;

  const BlockPredicate({required this.blocks, this.nbt, this.state});

  Map<String, dynamic> getMap(){
    var map = <String, dynamic>{'blocks':blocks.getComponents()};
    if(nbt != null){
      map['nbt'] = nbt;
    }

    if(state != null){
      map['state'] = state;
    }

    return map;
  }

  String getJson(){
    return gson.encode(getMap());
  }
}