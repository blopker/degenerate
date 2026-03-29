// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Commands and limits describing how to run the shell tool call.
final class FunctionShellActionParam {const FunctionShellActionParam({required this.commands, this.timeoutMs, this.maxOutputLength, });

factory FunctionShellActionParam.fromJson(Map<String, dynamic> json) { return FunctionShellActionParam(
  commands: (json['commands'] as List<dynamic>).map((e) => e as String).toList(),
  timeoutMs: json['timeout_ms'] != null ? (json['timeout_ms'] as num).toInt() : null,
  maxOutputLength: json['max_output_length'] != null ? (json['max_output_length'] as num).toInt() : null,
); }

/// Ordered shell commands for the execution environment to run.
final List<String> commands;

/// Maximum wall-clock time in milliseconds to allow the shell commands to run.
final int? timeoutMs;

/// Maximum number of UTF-8 characters to capture from combined stdout and stderr output.
final int? maxOutputLength;

Map<String, dynamic> toJson() { return {
  'commands': commands,
  'timeout_ms': ?timeoutMs,
  'max_output_length': ?maxOutputLength,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('commands'); } 
FunctionShellActionParam copyWith({List<String>? commands, int? Function()? timeoutMs, int? Function()? maxOutputLength, }) { return FunctionShellActionParam(
  commands: commands ?? this.commands,
  timeoutMs: timeoutMs != null ? timeoutMs() : this.timeoutMs,
  maxOutputLength: maxOutputLength != null ? maxOutputLength() : this.maxOutputLength,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellActionParam &&
          listEquals(commands, other.commands) &&
          timeoutMs == other.timeoutMs &&
          maxOutputLength == other.maxOutputLength; } 
@override int get hashCode { return Object.hash(Object.hashAll(commands), timeoutMs, maxOutputLength); } 
@override String toString() { return 'FunctionShellActionParam(commands: $commands, timeoutMs: $timeoutMs, maxOutputLength: $maxOutputLength)'; } 
 }
