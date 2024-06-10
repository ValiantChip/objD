import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class Container {
  final List<ContainerSlot> container;

  const Container({required this.container});

  Map<String, dynamic> getMap(){
    return {
      'container':container.map((s) => s.getNbt())
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class ContainerSlot {
  final Item item;
  final Slot slot;

  const ContainerSlot({required this.item, required this.slot});

  Map<String, dynamic> getMap(){
    return {
      'item':item.getNbt(),
      'slot':slot.toString()
    };
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}