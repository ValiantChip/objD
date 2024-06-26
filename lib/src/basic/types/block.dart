import 'package:gson/gson.dart';
export 'blocks.dart';

/// This is an util class which provides a wrapper for all available blocks in Minecraft.
/// ```dart
/// Block([minecraft_block_id]) // as string or
/// Block.[minecraft_block_id]
/// ```

String _getId(val) => (val is Block) ? val.toString() : (val as String);

class Block {
  final String _id;
  String get id => _id;
  final String? tag;
  final Map<String, dynamic>? states;
  final Map<String, dynamic>? nbt;
  final String strNbt;
  @override
  String toString() {
    var strState = '';
    var strnbt = strNbt;
    var id = tag ?? _id;
    if (states != null) {
      var liState = <String>[];
      states?.forEach((String key, dynamic val) {
        liState.add('$key=$val');
      });
      strState = '[${liState.join(',')}]';
    }
    if (nbt != null) strnbt = gson.encode(nbt);
    return id + strState + strnbt;
  }

  Map<String, dynamic> getBlockState() => {
        "Name": id,
        if (states != null) "Properties": states,
      };

  /// **Usage:**
  /// ```dart
  /// Block([minecraft_block_id]) // as string or
  /// Blocks.[minecraft_block_id]
  /// ```
  const Block(this._id)
      : nbt = null,
        strNbt = '',
        states = null,
        tag = null;

  Block.nbt(
    dynamic block, {
    this.states,
    this.tag,
    this.nbt,
    this.strNbt = '',
  })  : assert(block is String || block is Block,
            'Please insert a block or string into Block.nbt!'),
        _id = _getId(block);
}
