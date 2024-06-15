import 'package:objd/src/basic/command.dart';
import 'package:objd/src/basic/rest_action.dart';
import 'package:objd/src/basic/types/attribute.dart';
import 'package:objd/src/basic/widget.dart';
import 'package:objd/src/basic/types/entity.dart';
import 'package:objd/src/build/build.dart';

/// The Attribute Widget adds certain abilities to an entity. This Widget gives you a varienty of methods to modify speed, attack damage, health and more.
class Attribute extends RestActionAble {
  final Entity target;
  final AttributeType attribute;
  String? id;
  double? scale;
  double? value;
  AttributeModifier? modifyType;
  final _AttributeType _type;

  /// adds a modifier with an id
  Attribute.add(
    this.target,
    this.attribute, {
    required this.value,
    required this.id,
    this.modifyType = AttributeModifier.add,
  })  : _type = _AttributeType.add,
        assert(id != null),
        assert(value != null);

  /// sets the base modifier to a value
  Attribute.set(
    this.target,
    this.attribute, {
    required this.value,
  })  : _type = _AttributeType.set,
        assert(value != null);

  /// removes a modifier with an id again
  Attribute.remove(
    this.target,
    this.attribute, {
    required this.id,
  })  : _type = _AttributeType.remove,
        assert(id != null);

  ///gets the calculated modifier(with base, armor and custom)
  Attribute.get(
    this.target,
    this.attribute, {
    this.scale,
  }) : _type = _AttributeType.get;

  /// gets the base modifier
  Attribute.get_base(
    this.target,
    this.attribute, {
    this.scale,
  }) : _type = _AttributeType.get_base;

  /// gets the modifiers value by id
  Attribute.get_modifier(
    this.target,
    this.attribute, {
    required this.id,
    this.scale,
  })  : _type = _AttributeType.get_modifier,
        assert(id != null);

  @override
  Widget generate(Context context) {
    var cmd = 'attribute $target $attribute ';

    switch (_type) {
      case _AttributeType.set:
        cmd += 'base set $value';
        break;
      case _AttributeType.get_base:
        cmd += 'base get';
        break;
      case _AttributeType.get_modifier:
        cmd += 'modifier value get $id';
        break;
      case _AttributeType.remove:
        cmd += 'modifier remove $id';
        break;
      case _AttributeType.add:
        var modify = 'add';
        if (modifyType == AttributeModifier.add_multiplied_total) {
          modify = 'add_multiplied_total';
        } else if (modifyType == AttributeModifier.add_multiplied_base) {
          modify = 'add_multiplied_base';
        }
        cmd += 'modifier add $id $value $modify';
        break;

      default:
        cmd += 'get';
    }

    if (scale != null) cmd += ' $scale';

    return Command(cmd);
  }
}

enum AttributeModifier { add, add_multiplied_base, add_multiplied_total }
enum _AttributeType { add, set, get, get_base, get_modifier, remove }
