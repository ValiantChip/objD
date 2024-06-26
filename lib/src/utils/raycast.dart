import 'package:objd/core.dart';

/// The Raycast Widget is one of the most powerful widgets by giving you many options to configure raytracing in Minecraft.
/// Internally it uses local coordinates, a distance counter and recursion.
class Raycast extends RestActionAble {
  int? id;
  Entity entity;
  int max;
  double step;
  Block? through;
  Widget Function(Function, Function)? ray;
  List<Widget> onhit;
  bool _useStop = false;
  String scoreName;
  Facing anchored;

  final _isHit = Tag('objd_ray_hit', entity: Entity.Selected());
  final _isStopped = Tag('objd_ray_stop', entity: Entity.Selected());

  /// The Raycast Widget is one of the most powerful widgets by giving you many options to configure raycasting in Minecraft.
  /// Internally it uses local coordinates, a distance counter and recursion.
  ///
  /// |constructor|  |
  /// |--|--|
  /// | Entity | from which entity to go from |
  /// |onhit|a List of Widgets that execute on a hit|
  /// |max| maximum block distance(optional)|
  /// |step| how many steps to go forward each iteration(default = 1) |
  /// |through| a Block or Blocktag with passable Blocks(default = air) |
  /// |ray|a Function with an interface for each iteration(optional)|
  /// |scoreName|option to specify counter score(default = objd_count)|
  ///
  /// **Example:**
  /// ```dart
  /// Raycast(
  /// 	Entity.All(),
  /// 	onhit: [
  /// 		SetBlock(Blocks.sandstone,location:Location.here())
  /// 	],
  /// 	ray: (stop, hit) => If(...,then:[stop()]),
  /// 	max: 10, // set maximum distance to 10 blocks
  /// 	step: 0.1,
  /// 	through: Block('#minecraft:transparent'),
  /// )
  /// ```

  Raycast(
    this.entity, {
    this.max = 10000,
    this.step = 1,
    this.through = Blocks.air,
    this.ray,
    List<Widget>? onhit,
    this.scoreName = 'objd_count',
    this.anchored = Facing.eyes
  }) : onhit = onhit ?? [];

  Widget _hit() {
    return _isHit.add();
  }

  Widget _stop() {
    _useStop = true;
    return _isStopped.add();
  }

  @override
  Widget generate(Context context) {
    Score? maxScore;
    int? maxStep;
    id = IndexedFile.getIndexed('ray') + 1;

    if (max > 0) {
      maxScore = Score(Entity.Self(), scoreName);
      maxStep = max ~/ step;
    }

    var children = <Widget>[
    ];
    if(through != null) children.add(If.not(through, then: [_isHit.add()]));
    if (ray != null) children.insert(0, ray!(_stop, _hit));

    /// all and conditions
    var conds = <Condition>[Condition.not(_isHit)];
    if (_useStop) conds.add(Condition.not(_isStopped));
    if (maxScore != null) {
      children.add(maxScore.add());
      conds.add(Condition(maxScore.matchesRange(Range.to(maxStep))));
    }

    children.add(
      Execute(
        If: Condition.and(conds),
        children: [File.recursive()],
      ).positioned(
        Location.local(z: step),
      ),
    );

    onhit.insert(
      0,
      Comment(
        'This is the raycast result from your raycast widget in ${context.file}',
      ),
    );
    children.addAll([
      If(Condition.and([_isHit, _useStop ? Condition.not(_isStopped) : null]),
          then: [
            File.execute(
              'objd/rayhit$id',
              child: For.of(onhit),
            ),
          ]),
      _isHit.removeIfExists()
    ]);
    if (_useStop) children.add(_isStopped.remove());

    var ex = Execute(children: [
      Group(filename: 'ray', children: children, groupMin: 0),
    ]);
    if (entity.selector != 's') ex = ex.asat(entity);
    ex = ex
        .anchored(anchored)
        .positioned(Location.local())
        .anchored(Facing.feet);

    if (maxScore != null) return For.of([maxScore.set(0), ex]);
    return ex;
  }
}
