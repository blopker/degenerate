// GENERATED CODE - DO NOT MODIFY BY HAND

/// Indicates that the shell commands finished and returned an exit code.
final class FunctionShellCallOutputExitOutcomeParam {const FunctionShellCallOutputExitOutcomeParam({this.type = 'exit', required this.exitCode, });

factory FunctionShellCallOutputExitOutcomeParam.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputExitOutcomeParam(
  type: json['type'] as String,
  exitCode: (json['exit_code'] as num).toInt(),
); }

/// The outcome type. Always `exit`.
final String type;

/// The exit code returned by the shell process.
final int exitCode;

Map<String, dynamic> toJson() { return {
  'type': type,
  'exit_code': exitCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('exit_code') && json['exit_code'] is num; } 
FunctionShellCallOutputExitOutcomeParam copyWith({String? type, int? exitCode, }) { return FunctionShellCallOutputExitOutcomeParam(
  type: type ?? this.type,
  exitCode: exitCode ?? this.exitCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellCallOutputExitOutcomeParam &&
          type == other.type &&
          exitCode == other.exitCode; } 
@override int get hashCode { return Object.hash(type, exitCode); } 
@override String toString() { return 'FunctionShellCallOutputExitOutcomeParam(type: $type, exitCode: $exitCode)'; } 
 }
