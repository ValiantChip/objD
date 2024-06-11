import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class Target {
  //Only accepts global coordinates
  final Location pos;
  final Dimension dimension;

  const Target({required this.pos, required this.dimension});

  Map<String, dynamic> getMap() {
    return {
      'pos':[pos.x.toInt(), pos.y.toInt(), pos.z.toInt()],
      'dimension':dimension.name
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class Dimension {
  final String name;

  const Dimension(this.name);
}

class Dimensions {
  static const Dimension overworld = Dimension('minecraft:overworld');
  static const Dimension the_nether = Dimension('minecraft:the_nether');
  static const Dimension the_end = Dimension('minecraft:the_end');
}