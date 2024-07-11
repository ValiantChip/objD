import "package:vector_math/vector_math.dart";
export 'package:vector_math/vector_math.dart';

class Transformation {
  /// Rotation after scaling
  final Quaternion right_rotation;

  /// Rotation before scaling
  final Quaternion left_rotation;

  /// scaling(1 being the default size)
  final Vector3 scale;

  /// translation, shifting the display
  final Vector3 translation;
  /// An object describing the scale, rotation and translation
  Transformation({
    Quaternion? right_rotation,
    Quaternion? left_rotation,
    Vector3? scale,
    Vector3? translation,
  }) : 
    right_rotation = right_rotation ?? Quaternion.identity(),
    left_rotation = left_rotation ?? Quaternion.identity(),
    scale = scale ?? Vector3.all(1),
    translation = translation ?? Vector3.all(0)
    ;
    

  /// scales display entity
  scaled(double x, double y, double z) =>
      Transformation(scale: Vector3(x, y, z));

  /// shifts display entity
  translated(double x, double y, double z) =>
      Transformation(translation: Vector3(x, y, z));

  /// rotates display entity
  rotated(double x, double y, double z) =>
      Transformation(left_rotation: Quaternion.euler(y, z, x));

  /// scales all axies uniformly
  allScaled(double scale) =>
      Transformation(scale: Vector3(scale, scale, scale));

  factory Transformation.centered({
    Vector3? scale,
    Quaternion? right_rotation,
    Quaternion? left_rotation,
  }) {
      Vector3 fixedScale = scale ?? Vector3.all(1);
      return Transformation(
        scale: fixedScale,
        right_rotation: right_rotation ?? Quaternion.identity(),
        left_rotation: left_rotation ?? Quaternion.identity(),
        translation: fixedScale.scaled(-(1/2)),
      );
  }

  Map<String, List<double>> toMap() => {
        'right_rotation': right_rotation.storage,
        'left_rotation': left_rotation.storage,
        'scale': scale.storage,
        'translation': translation.storage,
      };
}