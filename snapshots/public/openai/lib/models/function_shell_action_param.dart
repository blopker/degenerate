// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Commands and limits describing how to run the shell tool call.
@immutable final class FunctionShellActionParam {const FunctionShellActionParam({required this.commands, this.timeoutMs = const Omittable.absent(), this.maxOutputLength = const Omittable.absent(), });

factory FunctionShellActionParam.fromJson(Map<String, dynamic> json) { return FunctionShellActionParam(
  commands: (json['commands'] as List<dynamic>).map((e) => e as String).toList(),
  timeoutMs: json.containsKey('timeout_ms') ? Omittable(json['timeout_ms'] != null ? (json['timeout_ms'] as num).toInt() : null) : const Omittable.absent(),
  maxOutputLength: json.containsKey('max_output_length') ? Omittable(json['max_output_length'] != null ? (json['max_output_length'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Ordered shell commands for the execution environment to run.
final List<String> commands;

/// Maximum wall-clock time in milliseconds to allow the shell commands to run.
final Omittable<int?> timeoutMs;

/// Maximum number of UTF-8 characters to capture from combined stdout and stderr output.
final Omittable<int?> maxOutputLength;

Map<String, dynamic> toJson() { return {
  'commands': commands,
  if (timeoutMs.isPresent) 'timeout_ms': timeoutMs.value,
  if (maxOutputLength.isPresent) 'max_output_length': maxOutputLength.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('commands'); } 
FunctionShellActionParam copyWith({List<String>? commands, Omittable<int?>? timeoutMs, Omittable<int?>? maxOutputLength, }) { return FunctionShellActionParam(
  commands: commands ?? this.commands,
  timeoutMs: timeoutMs ?? this.timeoutMs,
  maxOutputLength: maxOutputLength ?? this.maxOutputLength,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellActionParam &&
          listEquals(commands, other.commands) &&
          timeoutMs == other.timeoutMs &&
          maxOutputLength == other.maxOutputLength; } 
@override int get hashCode { return Object.hash(Object.hashAll(commands), timeoutMs, maxOutputLength); } 
@override String toString() { return 'FunctionShellActionParam(commands: $commands, timeoutMs: $timeoutMs, maxOutputLength: $maxOutputLength)'; } 
 }
