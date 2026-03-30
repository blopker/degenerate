// GENERATED CODE - DO NOT MODIFY BY HAND

import 'function_shell_call_output_exit_outcome_param.dart';import 'function_shell_call_output_timeout_outcome_param.dart';/// The exit or timeout outcome associated with this shell call.
sealed class FunctionShellCallOutputOutcomeParam {const FunctionShellCallOutputOutcomeParam();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionShellCallOutputOutcomeParam.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'timeout' => FunctionShellCallOutputOutcomeParamTimeout.fromJson(json),
  'exit' => FunctionShellCallOutputOutcomeParamExit.fromJson(json),
  _ => FunctionShellCallOutputOutcomeParam$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionShellCallOutputOutcomeParam$Unknown; } 
 }
final class FunctionShellCallOutputOutcomeParamTimeout extends FunctionShellCallOutputOutcomeParam {const FunctionShellCallOutputOutcomeParamTimeout(this.functionShellCallOutputTimeoutOutcomeParam);

factory FunctionShellCallOutputOutcomeParamTimeout.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputOutcomeParamTimeout(FunctionShellCallOutputTimeoutOutcomeParam.fromJson(json)); }

final FunctionShellCallOutputTimeoutOutcomeParam functionShellCallOutputTimeoutOutcomeParam;

@override String get type { return 'timeout'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutputTimeoutOutcomeParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputOutcomeParamTimeout && functionShellCallOutputTimeoutOutcomeParam == other.functionShellCallOutputTimeoutOutcomeParam; } 
@override int get hashCode { return functionShellCallOutputTimeoutOutcomeParam.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputOutcomeParamTimeout(functionShellCallOutputTimeoutOutcomeParam: $functionShellCallOutputTimeoutOutcomeParam)'; } 
 }
final class FunctionShellCallOutputOutcomeParamExit extends FunctionShellCallOutputOutcomeParam {const FunctionShellCallOutputOutcomeParamExit(this.functionShellCallOutputExitOutcomeParam);

factory FunctionShellCallOutputOutcomeParamExit.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputOutcomeParamExit(FunctionShellCallOutputExitOutcomeParam.fromJson(json)); }

final FunctionShellCallOutputExitOutcomeParam functionShellCallOutputExitOutcomeParam;

@override String get type { return 'exit'; } 
@override Map<String, dynamic> toJson() { return {...functionShellCallOutputExitOutcomeParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputOutcomeParamExit && functionShellCallOutputExitOutcomeParam == other.functionShellCallOutputExitOutcomeParam; } 
@override int get hashCode { return functionShellCallOutputExitOutcomeParam.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputOutcomeParamExit(functionShellCallOutputExitOutcomeParam: $functionShellCallOutputExitOutcomeParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class FunctionShellCallOutputOutcomeParam$Unknown extends FunctionShellCallOutputOutcomeParam {const FunctionShellCallOutputOutcomeParam$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputOutcomeParam$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputOutcomeParam.unknown($json)'; } 
 }
