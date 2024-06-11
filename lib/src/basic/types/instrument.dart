import 'package:gson/gson.dart';
import 'package:meta/meta.dart';
import 'package:objd/src/basic/time.dart';
import 'package:objd/src/basic/types/sound.dart';

@protected
abstract class Instrument {
  dynamic getComponents();
}

class InstrumentEvent implements Instrument{
  final Sound sound_event;
  final Time use_duration;
  final double range;

  const InstrumentEvent({required this.sound_event, required this.use_duration, required this.range});

  Map<String, dynamic> getMap(){
    return {
      'sound_event' : sound_event.name,
      'use_duration':use_duration.ticks,
      'range':range
    };
  }

  String getNbt(){
    return gson.encode(getMap());
  }

  @override
  dynamic getComponents() {
    return getMap();
  }
}

class InstrumentType implements Instrument{
  const InstrumentType(this.name);

  final String name;

  @override
  dynamic getComponents() {
    return name;
  }
}

class InstrumentTypes {
  static const InstrumentType ponder_goat_horn = InstrumentType('ponder_goat_horn');
  static const InstrumentType sing_goat_horn = InstrumentType('sing_goat_horn');
  static const InstrumentType seek_goat_horn = InstrumentType('seek_goat_horn');
  static const InstrumentType admire_goat_horn = InstrumentType('admire_goat_horn');
  static const InstrumentType feel_goat_horn = InstrumentType('feel_goat_horn');
  static const InstrumentType call_goat_horn = InstrumentType('call_goat_horn');
  static const InstrumentType yearn_goat_horn = InstrumentType('yearn_goat_horn');
  static const InstrumentType dream_goat_horn = InstrumentType('dream_goat_horn');
}

