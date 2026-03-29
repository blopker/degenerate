// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages31_tools_variant1_parameters_properties_value.dart';/// Schema defining the parameters accepted by the tool.
final class Messages31ToolsVariant1Parameters {const Messages31ToolsVariant1Parameters({required this.properties, this.$required, required this.type, });

factory Messages31ToolsVariant1Parameters.fromJson(Map<String, dynamic> json) { return Messages31ToolsVariant1Parameters(
  properties: (json['properties'] as Map<String, dynamic>).map((k, v) => MapEntry(k, Messages31ToolsVariant1ParametersPropertiesValue.fromJson(v as Map<String, dynamic>))),
  $required: (json['required'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] as String,
); }

/// Definitions of each parameter.
final Map<String,Messages31ToolsVariant1ParametersPropertiesValue> properties;

/// List of required parameter names.
final List<String>? $required;

/// The type of the parameters object (usually 'object').
final String type;

Map<String, dynamic> toJson() { return {
  'properties': properties.map((k, v) => MapEntry(k, v.toJson())),
  'required': ?$required,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('properties') &&
      json.containsKey('type') && json['type'] is String; } 
Messages31ToolsVariant1Parameters copyWith({Map<String,Messages31ToolsVariant1ParametersPropertiesValue>? properties, List<String> Function()? $required, String? type, }) { return Messages31ToolsVariant1Parameters(
  properties: properties ?? this.properties,
  $required: $required != null ? $required() : this.$required,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages31ToolsVariant1Parameters &&
          properties == other.properties &&
          listEquals($required, other.$required) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(properties, Object.hashAll($required ?? const []), type); } 
@override String toString() { return 'Messages31ToolsVariant1Parameters(properties: $properties, \$required: ${$required}, type: $type)'; } 
 }
