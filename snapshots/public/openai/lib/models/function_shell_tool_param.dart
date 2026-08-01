// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'function_shell_tool_param_environment.dart';/// A tool that allows the model to execute shell commands.
@immutable final class FunctionShellToolParam {const FunctionShellToolParam({this.type = 'shell', this.environment = const Omittable.absent(), });

factory FunctionShellToolParam.fromJson(Map<String, dynamic> json) { return FunctionShellToolParam(
  type: json['type'] as String,
  environment: json.containsKey('environment') ? Omittable(json['environment'] != null ? FunctionShellToolParamEnvironment.fromJson(json['environment'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The type of the shell tool. Always `shell`.
final String type;

final Omittable<FunctionShellToolParamEnvironment?> environment;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (environment.isPresent) 'environment': environment.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
FunctionShellToolParam copyWith({String? type, Omittable<FunctionShellToolParamEnvironment?>? environment, }) { return FunctionShellToolParam(
  type: type ?? this.type,
  environment: environment ?? this.environment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FunctionShellToolParam &&
          type == other.type &&
          environment == other.environment; } 
@override int get hashCode { return Object.hash(type, environment); } 
@override String toString() { return 'FunctionShellToolParam(type: $type, environment: $environment)'; } 
 }
