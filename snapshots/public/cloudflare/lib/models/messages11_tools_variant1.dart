// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages11_tools_variant1_parameters.dart';final class Messages11ToolsVariant1 {const Messages11ToolsVariant1({required this.description, required this.name, required this.parameters, });

factory Messages11ToolsVariant1.fromJson(Map<String, dynamic> json) { return Messages11ToolsVariant1(
  description: json['description'] as String,
  name: json['name'] as String,
  parameters: Messages11ToolsVariant1Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
); }

/// A brief description of what the tool does.
final String description;

/// The name of the tool. More descriptive the better.
final String name;

/// Schema defining the parameters accepted by the tool.
final Messages11ToolsVariant1Parameters parameters;

Map<String, dynamic> toJson() { return {
  'description': description,
  'name': name,
  'parameters': parameters.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('parameters'); } 
Messages11ToolsVariant1 copyWith({String? description, String? name, Messages11ToolsVariant1Parameters? parameters, }) { return Messages11ToolsVariant1(
  description: description ?? this.description,
  name: name ?? this.name,
  parameters: parameters ?? this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages11ToolsVariant1 &&
          description == other.description &&
          name == other.name &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(description, name, parameters); } 
@override String toString() { return 'Messages11ToolsVariant1(description: $description, name: $name, parameters: $parameters)'; } 
 }
