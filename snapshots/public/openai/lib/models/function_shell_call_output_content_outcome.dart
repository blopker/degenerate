// GENERATED CODE - DO NOT MODIFY BY HAND

import 'function_shell_call_output_exit_outcome.dart';import 'function_shell_call_output_timeout_outcome.dart';/// Represents either an exit outcome (with an exit code) or a timeout outcome for a shell call output chunk.
sealed class FunctionShellCallOutputContentOutcome {const FunctionShellCallOutputContentOutcome();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionShellCallOutputContentOutcome.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'FunctionShellCallOutputTimeoutOutcome' => FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome.fromJson(json),
  'FunctionShellCallOutputExitOutcome' => FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome.fromJson(json),
  _ => FunctionShellCallOutputContentOutcome$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionShellCallOutputContentOutcome$Unknown; } 
 }
final class FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome extends FunctionShellCallOutputContentOutcome {const FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome(this.functionShellCallOutputTimeoutOutcome);

factory FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome(FunctionShellCallOutputTimeoutOutcome.fromJson(json)); }

final FunctionShellCallOutputTimeoutOutcome functionShellCallOutputTimeoutOutcome;

@override String get type { return 'FunctionShellCallOutputTimeoutOutcome'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCallOutputTimeoutOutcome.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome && functionShellCallOutputTimeoutOutcome == other.functionShellCallOutputTimeoutOutcome; } 
@override int get hashCode { return functionShellCallOutputTimeoutOutcome.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputContentOutcomeFunctionShellCallOutputTimeoutOutcome(functionShellCallOutputTimeoutOutcome: $functionShellCallOutputTimeoutOutcome)'; } 
 }
final class FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome extends FunctionShellCallOutputContentOutcome {const FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome(this.functionShellCallOutputExitOutcome);

factory FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome.fromJson(Map<String, dynamic> json) { return FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome(FunctionShellCallOutputExitOutcome.fromJson(json)); }

final FunctionShellCallOutputExitOutcome functionShellCallOutputExitOutcome;

@override String get type { return 'FunctionShellCallOutputExitOutcome'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...functionShellCallOutputExitOutcome.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome && functionShellCallOutputExitOutcome == other.functionShellCallOutputExitOutcome; } 
@override int get hashCode { return functionShellCallOutputExitOutcome.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputContentOutcomeFunctionShellCallOutputExitOutcome(functionShellCallOutputExitOutcome: $functionShellCallOutputExitOutcome)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class FunctionShellCallOutputContentOutcome$Unknown extends FunctionShellCallOutputContentOutcome {const FunctionShellCallOutputContentOutcome$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionShellCallOutputContentOutcome$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionShellCallOutputContentOutcome.unknown($json)'; } 
 }
