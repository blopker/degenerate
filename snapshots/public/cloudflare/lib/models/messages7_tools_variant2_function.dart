// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages7_tools_variant2_function_parameters.dart';/// Details of the function tool.
@immutable final class Messages7ToolsVariant2Function {const Messages7ToolsVariant2Function({required this.description, required this.name, required this.parameters, });

factory Messages7ToolsVariant2Function.fromJson(Map<String, dynamic> json) { return Messages7ToolsVariant2Function(
  description: json['description'] as String,
  name: json['name'] as String,
  parameters: Messages7ToolsVariant2FunctionParameters.fromJson(json['parameters'] as Map<String, dynamic>),
); }

/// A brief description of what the function does.
final String description;

/// The name of the function.
final String name;

/// Schema defining the parameters accepted by the function.
final Messages7ToolsVariant2FunctionParameters parameters;

Map<String, dynamic> toJson() { return {
  'description': description,
  'name': name,
  'parameters': parameters.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('parameters'); } 
Messages7ToolsVariant2Function copyWith({String? description, String? name, Messages7ToolsVariant2FunctionParameters? parameters, }) { return Messages7ToolsVariant2Function(
  description: description ?? this.description,
  name: name ?? this.name,
  parameters: parameters ?? this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages7ToolsVariant2Function &&
          description == other.description &&
          name == other.name &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(description, name, parameters); } 
@override String toString() { return 'Messages7ToolsVariant2Function(description: $description, name: $name, parameters: $parameters)'; } 
 }
