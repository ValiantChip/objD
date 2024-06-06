import 'package:objd/src/basic/widgets.dart';
import 'package:objd/src/build/build.dart';

class PlaySound extends RestActionAble {
    Sound sound;
    String source;
    Entity? target;
    Location position;
    double volume;
    double pitch;
    double minVolume;

    PlaySound(this.sound, this.source, {this.target, this.position = const Location.here(), this.volume = 1, this.pitch = 1, this.minVolume = 0});

    @override
    Widget generate(Context context){
        if(pitch > 2 || pitch < 0){
            throw('pitch cannot be greater than 2 or less than 0');
        }
        if(volume < 0){
            throw('volume cannot be less than 0');
        }
        if(minVolume > 1 || minVolume < 0){
            throw('minVolume cannot be greater than 1 or less than 0');
        }
        return Command('playsound $sound $source ${target != null ? target : "@s"} $position $volume $pitch $minVolume');
    }
}