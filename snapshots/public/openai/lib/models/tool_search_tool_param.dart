// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_model_param.dart';import 'tool_search_execution_type.dart';/// Hosted or BYOT tool search configuration for deferred tools.
@immutable final class ToolSearchToolParam {const ToolSearchToolParam({this.type = 'tool_search', this.execution, this.description = const Omittable.absent(), this.parameters = const Omittable.absent(), });

factory ToolSearchToolParam.fromJson(Map<String, dynamic> json) { return ToolSearchToolParam(
  type: json['type'] as String,
  execution: json['execution'] != null ? ToolSearchExecutionType.fromJson(json['execution'] as String) : null,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  parameters: json.containsKey('parameters') ? Omittable(json['parameters'] != null ? EmptyModelParam.fromJson(json['parameters'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The type of the tool. Always `tool_search`.
final String type;

/// Whether tool search is executed by the server or by the client.
final ToolSearchExecutionType? execution;

/// Description shown to the model for a client-executed tool search tool.
final Omittable<String?> description;

/// Parameter schema for a client-executed tool search tool.
final Omittable<EmptyModelParam?> parameters;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (execution != null) 'execution': execution?.toJson(),
  if (description.isPresent) 'description': description.value,
  if (parameters.isPresent) 'parameters': parameters.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ToolSearchToolParam copyWith({String? type, ToolSearchExecutionType? Function()? execution, Omittable<String?>? description, Omittable<EmptyModelParam?>? parameters, }) { return ToolSearchToolParam(
  type: type ?? this.type,
  execution: execution != null ? execution() : this.execution,
  description: description ?? this.description,
  parameters: parameters ?? this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ToolSearchToolParam &&
          type == other.type &&
          execution == other.execution &&
          description == other.description &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, execution, description, parameters); } 
@override String toString() { return 'ToolSearchToolParam(type: $type, execution: $execution, description: $description, parameters: $parameters)'; } 
 }
