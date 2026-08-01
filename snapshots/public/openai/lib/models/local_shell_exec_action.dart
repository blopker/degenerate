// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the local shell action. Always `exec`.
@immutable final class LocalShellExecActionType {const LocalShellExecActionType._(this.value);

factory LocalShellExecActionType.fromJson(String json) { return switch (json) {
  'exec' => exec,
  _ => LocalShellExecActionType._(json),
}; }

static const LocalShellExecActionType exec = LocalShellExecActionType._('exec');

static const List<LocalShellExecActionType> values = [exec];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LocalShellExecActionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LocalShellExecActionType($value)'; } 
 }
/// Execute a shell command on the server.
@immutable final class LocalShellExecAction {const LocalShellExecAction({required this.command, required this.env, this.type = LocalShellExecActionType.exec, this.timeoutMs = const Omittable.absent(), this.workingDirectory = const Omittable.absent(), this.user = const Omittable.absent(), });

factory LocalShellExecAction.fromJson(Map<String, dynamic> json) { return LocalShellExecAction(
  type: LocalShellExecActionType.fromJson(json['type'] as String),
  command: (json['command'] as List<dynamic>).map((e) => e as String).toList(),
  timeoutMs: json.containsKey('timeout_ms') ? Omittable(json['timeout_ms'] != null ? (json['timeout_ms'] as num).toInt() : null) : const Omittable.absent(),
  workingDirectory: json.containsKey('working_directory') ? Omittable(json['working_directory'] as String?) : const Omittable.absent(),
  env: (json['env'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  user: json.containsKey('user') ? Omittable(json['user'] as String?) : const Omittable.absent(),
); }

/// The type of the local shell action. Always `exec`.
final LocalShellExecActionType type;

/// The command to run.
final List<String> command;

/// Optional timeout in milliseconds for the command.
final Omittable<int?> timeoutMs;

/// Optional working directory to run the command in.
final Omittable<String?> workingDirectory;

/// Environment variables to set for the command.
final Map<String,String> env;

/// Optional user to run the command as.
final Omittable<String?> user;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'command': command,
  if (timeoutMs.isPresent) 'timeout_ms': timeoutMs.value,
  if (workingDirectory.isPresent) 'working_directory': workingDirectory.value,
  'env': env,
  if (user.isPresent) 'user': user.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('command') &&
      json.containsKey('env'); } 
LocalShellExecAction copyWith({LocalShellExecActionType? type, List<String>? command, Omittable<int?>? timeoutMs, Omittable<String?>? workingDirectory, Map<String,String>? env, Omittable<String?>? user, }) { return LocalShellExecAction(
  type: type ?? this.type,
  command: command ?? this.command,
  timeoutMs: timeoutMs ?? this.timeoutMs,
  workingDirectory: workingDirectory ?? this.workingDirectory,
  env: env ?? this.env,
  user: user ?? this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LocalShellExecAction &&
          type == other.type &&
          listEquals(command, other.command) &&
          timeoutMs == other.timeoutMs &&
          workingDirectory == other.workingDirectory &&
          env == other.env &&
          user == other.user; } 
@override int get hashCode { return Object.hash(type, Object.hashAll(command), timeoutMs, workingDirectory, env, user); } 
@override String toString() { return 'LocalShellExecAction(type: $type, command: $command, timeoutMs: $timeoutMs, workingDirectory: $workingDirectory, env: $env, user: $user)'; } 
 }
