// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// List of steps acting on request/response
@immutable final class RequestTracerTrace2 {const RequestTracerTrace2({this.action, this.actionParameters, this.description, this.expression, this.kind, this.matched, this.name, this.stepName, this.trace, this.type, });

factory RequestTracerTrace2.fromJson(Map<String, dynamic> json) { return RequestTracerTrace2(
  action: json['action'] as String?,
  actionParameters: (json['action_parameters'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  description: json['description'] as String?,
  expression: json['expression'] as String?,
  kind: json['kind'] as String?,
  matched: json['matched'] as bool?,
  name: json['name'] as String?,
  stepName: json['step_name'] as String?,
  trace: (json['trace'] as List<dynamic>?)?.map((e) => RequestTracerTrace2.fromJson(e as Map<String, dynamic>)).toList(),
  type: json['type'] as String?,
); }

/// If step type is rule, then action performed by this rule
final String? action;

/// If step type is rule, then action parameters of this rule as JSON
final Map<String,dynamic>? actionParameters;

/// If step type is rule or ruleset, the description of this entity
final String? description;

/// If step type is rule, then expression used to match for this rule
final String? expression;

/// If step type is ruleset, then kind of this ruleset
final String? kind;

/// Whether tracing step affected tracing request/response
final bool? matched;

/// If step type is ruleset, then name of this ruleset
final String? name;

/// Tracing step identifying name
final String? stepName;

final List<RequestTracerTrace2>? trace;

/// Tracing step type
final String? type;

Map<String, dynamic> toJson() { return {
  'action': ?action,
  'action_parameters': ?actionParameters,
  'description': ?description,
  'expression': ?expression,
  'kind': ?kind,
  'matched': ?matched,
  'name': ?name,
  'step_name': ?stepName,
  if (trace != null) 'trace': trace?.map((e) => e.toJson()).toList(),
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action', 'action_parameters', 'description', 'expression', 'kind', 'matched', 'name', 'step_name', 'trace', 'type'}.contains(key)); } 
RequestTracerTrace2 copyWith({String Function()? action, Map<String, dynamic> Function()? actionParameters, String Function()? description, String Function()? expression, String Function()? kind, bool Function()? matched, String Function()? name, String Function()? stepName, List<RequestTracerTrace2> Function()? trace, String Function()? type, }) { return RequestTracerTrace2(
  action: action != null ? action() : this.action,
  actionParameters: actionParameters != null ? actionParameters() : this.actionParameters,
  description: description != null ? description() : this.description,
  expression: expression != null ? expression() : this.expression,
  kind: kind != null ? kind() : this.kind,
  matched: matched != null ? matched() : this.matched,
  name: name != null ? name() : this.name,
  stepName: stepName != null ? stepName() : this.stepName,
  trace: trace != null ? trace() : this.trace,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RequestTracerTrace2 &&
          action == other.action &&
          actionParameters == other.actionParameters &&
          description == other.description &&
          expression == other.expression &&
          kind == other.kind &&
          matched == other.matched &&
          name == other.name &&
          stepName == other.stepName &&
          listEquals(trace, other.trace) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(action, actionParameters, description, expression, kind, matched, name, stepName, Object.hashAll(trace ?? const []), type); } 
@override String toString() { return 'RequestTracerTrace2(action: $action, actionParameters: $actionParameters, description: $description, expression: $expression, kind: $kind, matched: $matched, name: $name, stepName: $stepName, trace: $trace, type: $type)'; } 
 }
