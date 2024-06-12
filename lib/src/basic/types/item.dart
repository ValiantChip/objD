import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';
import 'package:objd/src/wrappers/summon.dart';

export 'items.dart';

/// The Item class represents an item in an inventory in Minecraft. It is used in the [Give]() or Nbt Commands.

class Item {
  final ItemType type;
  final int? count;
  final Slot? slot;
  late final DataComponent? data_component;

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
    this.type, {
    this.count,
    this.slot,
    this.data_component,
  });

  Item.SpawnEgg(
    this.type,
    Summon entity, {
    this.count,
    this.slot,
    DataComponent? data_component,
  })  : assert(
          type is String || type is Item || type is Block,
          'Please provide either a String, Item or Block',
        )
    {
      this.data_component = data_component?.copyWith(entity_data: entity.getNbt()) ?? DataComponent(entity_data: entity.getNbt());
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
  // static Item clone(Item it) => Item(
  //       it.type,
  //       count: it.count,
  //       slot: it.slot?.clone(),
  //       data_component: it.data_component?.clone();
  //     );

  Map<String, dynamic> getMap([bool useId = true]) {
    final map = <String, dynamic>{};
    final id = useId ? 'id' : 'item';
    map[id] = type.name;
    if(data_component != null) map['components'] = data_component!.getMap();
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

  String getId() {
    return type.name;
  }

  String getGiveNotation({bool withDamage = true}) {
    var result = type.name;
    if(data_component != null){
      result += withDamage ? data_component.toString() : data_component!.copyWith(damage: null).toString();
    }
    result += ' ';
    if (count != null) result += count.toString();
    return result;
  }

  Item copyWith({
    ItemType? type,
    int? count,
    Slot? slot,
    DataComponent? data_component,
  }) {
    return Item(
      type ?? this.type,
      count: count ?? this.count,
      slot: slot ?? this.slot,
      data_component: data_component ?? this.data_component,
    );
  }

  @override
  String toString() => type.name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.type == type &&
        other.count == count &&
        other.data_component == data_component &&
        other.slot == slot;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        count.hashCode ^
        slot.hashCode ^
        data_component.hashCode;
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