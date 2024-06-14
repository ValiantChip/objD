/// See all available colors: https://minecraft.wiki/w/Formatting_codes#Color_codes
class Color {
  final String _color;

  ///   With 1.16 you can also use any rgb color now:
  ///
  /// ```dart
  /// Color("#ff6a00")
  /// Color.fromInt(16738816)
  /// Color.fromRGB(255,106,0)
  /// ```
  const Color(this._color);

  static Color fromInt(int color) =>
    Color('#${color.toRadixString(16).padLeft(4, '0')}');
  static Color fromRGB(int r, int g, int b) {
    r = (r < 0) ? -r : r;
    g = (g < 0) ? -g : g;
    b = (b < 0) ? -b : b;
    r = (r > 255) ? 255 : r;
    g = (g > 255) ? 255 : g;
    b = (b > 255) ? 255 : b;
    return Color.fromInt(
      ((r & 0x0ff) << 16) | ((g & 0x0ff) << 8) | (b & 0x0ff),
    );
  }

  static const Color White = Color('white');
  static const Color Black = Color('black');
  static const Color DarkBlue = Color('dark_blue');
  static const Color DarkGreen = Color('dark_green');
  static const Color DarkAqua = Color('dark_aqua');
  static const Color DarkRed = Color('dark_red');
  static const Color DarkPurple = Color('dark_purple');
  static const Color Gold = Color('gold');
  static const Color Gray = Color('gray');
  static const Color DarkGray = Color('dark_gray');
  static const Color Blue = Color('blue');
  static const Color Green = Color('green');
  static const Color Aqua = Color('aqua');
  static const Color Red = Color('red');
  static const Color LightPurple = Color('light_purple');
  static const Color Yellow = Color('yellow');

  @override
  String toString() {
    return _color;
  }

  int toDecimal() {
    return int.parse(_color, radix: 16);
  }
}