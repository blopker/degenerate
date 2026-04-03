// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ExecAction describes a "run in container" action.
@immutable final class ExecAction {const ExecAction({this.command});

factory ExecAction.fromJson(Map<String, dynamic> json) { return ExecAction(
  command: (json['command'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
final List<String>? command;

Map<String, dynamic> toJson() { return {
  'command': ?command,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'command'}.contains(key)); } 
ExecAction copyWith({List<String> Function()? command}) { return ExecAction(
  command: command != null ? command() : this.command,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExecAction &&
          listEquals(command, other.command); } 
@override int get hashCode { return Object.hashAll(command ?? const []).hashCode; } 
@override String toString() { return 'ExecAction(command: $command)'; } 
 }
