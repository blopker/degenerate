// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the tool, i.e. `function`.
@immutable final class RealtimeFunctionToolType {const RealtimeFunctionToolType._(this.value);

factory RealtimeFunctionToolType.fromJson(String json) { return switch (json) {
  'function' => function,
  _ => RealtimeFunctionToolType._(json),
}; }

static const RealtimeFunctionToolType function = RealtimeFunctionToolType._('function');

static const List<RealtimeFunctionToolType> values = [function];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeFunctionToolType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeFunctionToolType($value)'; } 
 }
@immutable final class RealtimeFunctionTool {const RealtimeFunctionTool({this.type, this.name, this.description, this.parameters, });

factory RealtimeFunctionTool.fromJson(Map<String, dynamic> json) { return RealtimeFunctionTool(
  type: json['type'] != null ? RealtimeFunctionToolType.fromJson(json['type'] as String) : null,
  name: json['name'] as String?,
  description: json['description'] as String?,
  parameters: (json['parameters'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// The type of the tool, i.e. `function`.
final RealtimeFunctionToolType? type;

/// The name of the function.
final String? name;

/// The description of the function, including guidance on when and how
/// to call it, and guidance about what to tell the user when calling
/// (if anything).
/// 
final String? description;

/// Parameters of the function in JSON Schema.
final Map<String,dynamic>? parameters;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  'name': ?name,
  'description': ?description,
  'parameters': ?parameters,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'name', 'description', 'parameters'}.contains(key)); } 
RealtimeFunctionTool copyWith({RealtimeFunctionToolType Function()? type, String Function()? name, String Function()? description, Map<String, dynamic> Function()? parameters, }) { return RealtimeFunctionTool(
  type: type != null ? type() : this.type,
  name: name != null ? name() : this.name,
  description: description != null ? description() : this.description,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeFunctionTool &&
          type == other.type &&
          name == other.name &&
          description == other.description &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, name, description, parameters); } 
@override String toString() { return 'RealtimeFunctionTool(type: $type, name: $name, description: $description, parameters: $parameters)'; } 
 }
