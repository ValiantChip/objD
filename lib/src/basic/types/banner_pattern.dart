import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class BannerPattern {
  final Color color;
  final dynamic pattern;

  BannerPattern({required this.color, required this.pattern}) 
  : assert(
    pattern is String || pattern is Map<String, String>,
    "pattern should either be a String or a Map<String, String>"
  );

  Map<String, dynamic> getMap() {
    return {
      'pattern' : pattern,
      'color' : color.toString()
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}