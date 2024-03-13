import 'package:objd/src/basic/widgets.dart';
import 'package:objd/src/build/build.dart';

class SpreadPlayers extends RestActionAble {
  final Entity target;
  final Location center;
  final double distance;
  final double maxRange;
  final int? maximumHeight;
  final bool respectTeams;

  /// The Spawnpoint Widget sets a players spawnpoint to the current or specified [position]
  SpreadPlayers(
    this.center, {
    required this.target,
    required this.distance,
    required this.maxRange,
    this.maximumHeight,
    this.respectTeams = false,
  });

  @override
  Widget generate(Context context) {
    var locations = center.toString().split(' ');
    locations.removeAt(1);

    return Command(
      'spreadplayers ${locations.join(' ')} $distance $maxRange${maximumHeight == null ? '' : 'under $maximumHeight'} $respectTeams $target',
    );
  }
}
