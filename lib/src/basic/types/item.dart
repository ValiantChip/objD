import 'dart:convert';

import 'package:gson/gson.dart';
import 'package:objd/src/basic/types/instrument.dart';
import 'package:objd/src/basic/types/potion_contents.dart';
import 'package:objd/src/basic/widgets.dart';
import 'package:objd/src/wrappers/summon.dart';
import 'package:deep_collection/deep_collection.dart';

export 'items.dart';

/// The Item class represents an item in an inventory in Minecraft. It is used in the [Give]() or Nbt Commands.

class Item {
  final String type;
  final int? count;
  final Slot? slot;
  final Map<String, dynamic>? tag;

  /// The Item class represents an item in an inventory in Minecraft. It is used in the [Give]() or Nbt Commands.
  ///
  /// |constructor | |
  /// |--|--|
  /// |Item \| Block \| String|the type of item(required, see example)|
  /// |count|Integer value for the amount of stacked items|
  /// |slot|The current Slot of the item(does not work for give)|
  /// |damage|the used durability of the item|
  /// |hideFlags|int from 1 to 63 describing which information to hide|
  /// |model|int describing which model variant should be used|
  /// |name|a TextComponent showing a name|
  /// |lore| a  List of TextComponents giving extra information|
  /// |nbt|additional NBT as Dart Map|
  ///
  /// **Example:**
  /// ```dart
  /// Give(Entity.Selected(),
  /// 	item: Item(
  /// 		Items.iron_axe, // OR Blocks.stone OR "whatever id"
  /// 		count: 5,
  /// 		name: TextComponent("My Item",color:Color.Black),
  /// 		lore: [
  /// 			TextComponent("My Description",color:Color.Blue),
  /// 		],
  /// 		damage: 40,
  /// 		model: 3390001,
  /// 		nbt: {
  /// 			"customNBT":1
  /// 		}
  /// 	)
  /// )
  ///
  /// ⇒ give  @s minecraft:iron_axe{"customNBT":1,"Damage":40,"CustomModelData":3390001,"display":{"Name":"{\"text\":\"My Item\",\"color\":\"black\"}","Lore":["{\"text\":\"My Description\",\"color\":\"blue\"}"]}} 5
  /// ```
  Item(
    dynamic type, {
    this.count,
    this.slot,
    this.damage,
    int? model,

    /// Used to hide flags, VALUE ranges from 1 to 63
    int? hideFlags,
    TextComponent? name,
    List<TextComponent>? lore,
    Map<String, dynamic>? nbt,
  })  : assert(
          type is String || type is Item || type is Block,
          'Please provide either a String, Item or Block',
        ),
        tag = {},
        type = type.toString() {
    // check tags
    _checkTags(model, type, hideFlags, name, lore, nbt);
  }
  const Item.type(
    this.type, {
    this.count,
    this.slot,
    this.damage,
    this.tag,
  });

  Item.SpawnEgg(
    dynamic type,
    Summon entity, {
    this.count,
    this.slot,
    this.damage,
    int? model,
    int? hideFlags,
    TextComponent? name,
    List<TextComponent>? lore,
    Map<String, dynamic>? nbt,
  })  : assert(
          type is String || type is Item || type is Block,
          'Please provide either a String, Item or Block',
        ),
        tag = {},
        type = type.toString()
        {
          nbt ??= {};

          nbt.addAll({
            'EntityTag': {
              'id': entity.type.type,
              ...entity.nbt ?? {},
            }
          });

          _checkTags(model, type, hideFlags, name, lore, nbt);
        }

  // Item.Book(
  //   List<BookPage> pages, {
  //   String title = '',
  //   String author = '',
  //   this.count,
  //   this.slot,
  //   this.damage,
  //   int? model,
  //   int? hideFlags,
  //   TextComponent? name,
  //   List<TextComponent>? lore,
  //   Map<String, dynamic>? nbt,
  // })  : type = Items.written_book.toString(),
  //       tag = {} {
  //   nbt ??= {};
  //   nbt['title'] = title;
  //   nbt['author'] = author;
  //   nbt['pages'] = pages
  //       .map((page) =>
  //           json.encode(page.list.map((item) => item.toMap()).toList()))
  //       .toList();

  //   _checkTags(model, type, hideFlags, name, lore, nbt);
  // }

  /// creates a new object based on a existing Item to modify properties.
  static Item clone(Item it) => Item(
        it.type,
        count: it.count,
        slot: it.slot?.clone(),
        nbt: it.tag != null ? Map.from(it.tag ?? {}) : null,
      );

  void _checkTags(
    int? model, [
    dynamic type,
    int? hideFlags,
    TextComponent? name,
    List<TextComponent>? lore,
    Map<String, dynamic>? nbt,
    Map<String, dynamic>? tg,
  ]) {
    // check item type

    final t = tg ?? tag ?? {};

    if (nbt != null && nbt.isNotEmpty) t.addAll(nbt);
    if (damage != null) t['Damage'] = damage;
    if (model != null) t['CustomModelData'] = model;
    if (hideFlags != null) t['HideFlags'] = hideFlags;
    if (name != null) {
      final n = name.toJson();

      t['display'] = t['display'] ?? {};

      // check if the value is even represented in json
      if (n != null) {
        t['display']['Name'] = n;
      } else {
        t['display'].remove('Name');
      }
    }
    if (lore != null) {
      t['display'] = t['display'] ?? {};
      t['display']['Lore'] = lore.map((lor) => lor.toJson()).toList();
    }
  }

  String getGiveNotation({bool withDamage = true}) {
    var result = type;
    if (tag != null && tag!.isNotEmpty) {
      result += gson.encode(tag);
    }
    result += ' ';
    if (count != null) result += count.toString();
    if (damage != null && withDamage) result += ' $damage';
    return result;
  }

  String getId() => type.replaceFirst('minecraft:', '');

  Map<String, dynamic> getMap([bool useId = true]) {
    final map = <String, dynamic>{};
    final id = useId ? 'id' : 'item';
    map[id] = 'minecraft:${getId()}';
    if (tag != null && tag!.isNotEmpty) map['tag'] = tag;
    if (count != null) map['Count'] = Byte(count!);
    if (slot != null) {
      if (slot!.id == null) throw ('An Item needs the Slot id!');
      if (slot!.id! < 0) {
        print(
          'Please note that you are using Item with a negative slot. This is reserved for a selected item and can\'t be accessed within the Inventory property!',
        );
      }
      map['Slot'] = Byte(slot!.id ?? 0);
    }
    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }

  Item copyWith({
    String? type,
    int? count,
    int? damage,
    Slot? slot,
    int? model,
    int? hideFlags,
    TextComponent? name,
    List<TextComponent>? lore,
    Map<String, dynamic>? nbt,
  }) {
    final t = tag != null
        ? tag!.deepCopy().cast<String, dynamic>()
        : <String, dynamic>{};
    _checkTags(model, type, hideFlags, name, lore, nbt, t);

    return Item(
      type ?? this.type,
      count: count ?? this.count,
      damage: damage ?? this.damage,
      slot: slot ?? this.slot,
      nbt: t,
    );
  }

  @override
  String toString() => type;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.type == type &&
        other.count == count &&
        other.damage == damage &&
        other.slot == slot &&
        other.tag == tag;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        count.hashCode ^
        damage.hashCode ^
        slot.hashCode ^
        tag.hashCode;
  }
}

// class BookPage {
//   late List<TextComponent> list;
//   BookPage(dynamic content) {
//     if (content is TextComponent) list = [content];
//     if (content is String) list = [TextComponent(content)];
//     if (content is List<TextComponent>) list = content;
//   }

//   BookPage.customFont(String char) {
//     list = [TextComponent.customFont(char)];
//   }
// }

enum Rarity {
  common,
  uncommon,
  rare,
  epic,
}