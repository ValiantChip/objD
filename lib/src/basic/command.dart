import 'package:objd/src/basic/rest_action.dart';
import 'package:objd/src/basic/widget.dart';
import 'package:objd/src/build/build.dart';
import 'package:objd/src/basic/text.dart';
import 'package:objd/src/basic/for_list.dart';

class CommandList<T> extends RestActionAble {
  late List<Command> _commands;

  /// There is a more efficient way to list raw Minecraft commands.
  ///
  /// The CommandList Widget allows you to input a List of Commands, a List of Strings representing a command or a multiline string.
  ///
  /// This has basically the same function as For.of just for commands.
  /// ```dart
  /// CommandList(List<Command>[
  /// 		Command('say 1'),
  /// 		Command('say 2'),
  /// 		Command('say 3')
  /// ]),
  /// ```
  CommandList(List<T> commands) {
    if (T.toString() == 'String') {
      _commands = commands.map((x) => Command(x.toString())).toList();
    } else if (T.toString() == 'Command') {
      _commands = (commands as List<Command>);
    } else {
      throw ('Please insert a string or a list into CommandList');
    }
  }
  CommandList.str(String str)
      : _commands = str
            .replaceAll(RegExp(r'[ \t]{2,}'), '')
            .split('\n')
            .where((i) => i.isNotEmpty && i != ' ')
            .map((x) => Command(x))
            .toList();

  @override
  Widget generate(Context context) {
    return For.of(_commands);
  }

  int get length => _commands.length;
  @override
  Map toMap() {
    return {'commands': _commands.map((x) => x.toMap())};
  }
}

class Command extends RestActionAble {
  String _command;

  /// A Command is a raw action, that is executed by Minecraft directly.
  /// ```dart
  /// Command('/say hey')
  /// ==> say hey
  /// ```
  Command(this._command) {
    if (_command.isNotEmpty && _command.substring(0, 1) == '/') {
      _command = _command.substring(1);
    }
  }
  @override
  Widget generate(Context context) {
    if (context.macros.isNotEmpty &&
        context.macros.entries
            .any((element) => _command.contains(element.key))) {
      _command = '\$${context.macros.entries.where((e) => e.value != null).fold(
            _command,
            (command, entry) =>
                command.replaceAll(entry.key, '\$(${entry.value})'),
          )}';
    }
    return Text(_command);
  }

  @override
  String toString() {
    return _command;
  }

  @override
  Map<String, String> toMap() {
    return {'command': _command};
  }
}
