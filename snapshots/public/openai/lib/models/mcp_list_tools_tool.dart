// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A tool available on an MCP server.
/// 
@immutable final class McpListToolsTool {const McpListToolsTool({required this.name, required this.inputSchema, this.description = const Omittable.absent(), this.annotations = const Omittable.absent(), });

factory McpListToolsTool.fromJson(Map<String, dynamic> json) { return McpListToolsTool(
  name: json['name'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  inputSchema: json['input_schema'] as Map<String, dynamic>,
  annotations: json.containsKey('annotations') ? Omittable(json['annotations'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// The name of the tool.
/// 
final String name;

/// The description of the tool.
/// 
final Omittable<String?> description;

/// The JSON schema describing the tool's input.
/// 
final Map<String,dynamic> inputSchema;

/// Additional annotations about the tool.
/// 
final Omittable<Map<String,dynamic>?> annotations;

Map<String, dynamic> toJson() { return {
  'name': name,
  if (description.isPresent) 'description': description.value,
  'input_schema': inputSchema,
  if (annotations.isPresent) 'annotations': annotations.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('input_schema'); } 
McpListToolsTool copyWith({String? name, Omittable<String?>? description, Map<String,dynamic>? inputSchema, Omittable<Map<String,dynamic>?>? annotations, }) { return McpListToolsTool(
  name: name ?? this.name,
  description: description ?? this.description,
  inputSchema: inputSchema ?? this.inputSchema,
  annotations: annotations ?? this.annotations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McpListToolsTool &&
          name == other.name &&
          description == other.description &&
          inputSchema == other.inputSchema &&
          annotations == other.annotations; } 
@override int get hashCode { return Object.hash(name, description, inputSchema, annotations); } 
@override String toString() { return 'McpListToolsTool(name: $name, description: $description, inputSchema: $inputSchema, annotations: $annotations)'; } 
 }
