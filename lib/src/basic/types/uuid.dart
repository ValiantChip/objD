import 'package:gson/values.dart';

class UUID extends GsonValue {
  final int i1;
  final int i2;
  final int i3;
  final int i4;

  UUID(this.i1, this.i2, this.i3, this.i4);

  @override
  String toSimple() => toString();

  @override
  String toString() => '[I;$i1,$i2,$i3,$i4]';
}
