// GENERATED CODE - DO NOT MODIFY BY HAND

import 'empty_model_param.dart';import 'tool_search_execution_type.dart';/// Hosted or BYOT tool search configuration for deferred tools.
final class ToolSearchToolParam {const ToolSearchToolParam({this.type = 'tool_search', this.execution, this.description, this.parameters, });

factory ToolSearchToolParam.fromJson(Map<String, dynamic> json) { return ToolSearchToolParam(
  type: json['type'] as String,
  execution: json['execution'] != null ? ToolSearchExecutionType.fromJson(json['execution'] as String) : null,
  description: json['description'] as String?,
  parameters: json['parameters'] != null ? EmptyModelParam.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

/// The type of the tool. Always `tool_search`.
final String type;

/// Whether tool search is executed by the server or by the client.
final ToolSearchExecutionType? execution;

/// Description shown to the model for a client-executed tool search tool.
final String? description;

/// Parameter schema for a client-executed tool search tool.
final EmptyModelParam? parameters;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (execution != null) 'execution': execution?.toJson(),
  'description': ?description,
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ToolSearchToolParam copyWith({String? type, ToolSearchExecutionType Function()? execution, String? Function()? description, EmptyModelParam? Function()? parameters, }) { return ToolSearchToolParam(
  type: type ?? this.type,
  execution: execution != null ? execution() : this.execution,
  description: description != null ? description() : this.description,
  parameters: parameters != null ? parameters() : this.parameters,
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
