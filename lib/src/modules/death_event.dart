import "package:objd/core.dart";

class DeathEvent extends Module {
  String path;
  String name;
  Widget? onDeath;
  final Score _score = Score.fromSelected('objd_death');

  DeathEvent({
    this.name = 'objd_death',
    this.onDeath,
    this.path = 'events/',
  });

  @override
  Widget generate(Context context){
    return For.of([
      Scoreboard('objd_death',
        type: "deathCount"),
      Execute.asat(
        Entity.All(
          scores: [
            _score.matchesRange(
              Range.from(1),
            ),
          ]),
        children: [
          File.execute(path + name, create: false)
        ])
    ]);
  }

  @override
  List<File> registerFiles() => <File>[
    File(
      path + name,
      child: For.of([
          if(onDeath != null) onDeath!,
          _score.reset()
        ])
    )
  ];
}