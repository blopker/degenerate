// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'function_shell_call_output_outcome_param.dart';/// Captured stdout and stderr for a portion of a shell tool call output.
@immutable final class FunctionShellCallOutputContentParam {const FunctionShellCallOutputContentParam({required this.stdout, required this.stderr, required this.outcome, });

factory FunctionShellCallOutputContentParam.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputContentParam(
  stdout: json['stdout'] as String,
  stderr: json['stderr'] as String,
  outcome: FunctionShellCallOutputOutcomeParam.fromJson(json['outcome'] as Map<String, dynamic>),
); }

/// Captured stdout output for the shell call.
final String stdout;

/// Captured stderr output for the shell call.
final String stderr;

/// The exit or timeout outcome associated with this shell call.
final FunctionShellCallOutputOutcomeParam outcome;

Map<String, dynamic> toJson() { return {
  'stdout': stdout,
  'stderr': stderr,
  'outcome': outcome.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('stdout') && json['stdout'] is String &&
      json.containsKey('stderr') && json['stderr'] is String &&
      json.containsKey('outcome'); } 
FunctionShellCallOutputContentParam copyWith({String? stdout, String? stderr, FunctionShellCallOutputOutcomeParam? outcome, }) { return FunctionShellCallOutputContentParam(
  stdout: stdout ?? this.stdout,
  stderr: stderr ?? this.stderr,
  outcome: outcome ?? this.outcome,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellCallOutputContentParam &&
          stdout == other.stdout &&
          stderr == other.stderr &&
          outcome == other.outcome; } 
@override int get hashCode { return Object.hash(stdout, stderr, outcome); } 
@override String toString() { return 'FunctionShellCallOutputContentParam(stdout: $stdout, stderr: $stderr, outcome: $outcome)'; } 
 }
