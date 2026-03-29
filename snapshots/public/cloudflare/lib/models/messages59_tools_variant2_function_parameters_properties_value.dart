// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages59ToolsVariant2FunctionParametersPropertiesValue {const Messages59ToolsVariant2FunctionParametersPropertiesValue({required this.description, required this.type, });

factory Messages59ToolsVariant2FunctionParametersPropertiesValue.fromJson(Map<String, dynamic> json) { return Messages59ToolsVariant2FunctionParametersPropertiesValue(
  description: json['description'] as String,
  type: json['type'] as String,
); }

/// A description of the expected parameter.
final String description;

/// The data type of the parameter.
final String type;

Map<String, dynamic> toJson() { return {
  'description': description,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('type') && json['type'] is String; } 
Messages59ToolsVariant2FunctionParametersPropertiesValue copyWith({String? description, String? type, }) { return Messages59ToolsVariant2FunctionParametersPropertiesValue(
  description: description ?? this.description,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages59ToolsVariant2FunctionParametersPropertiesValue &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, type); } 
@override String toString() { return 'Messages59ToolsVariant2FunctionParametersPropertiesValue(description: $description, type: $type)'; } 
 }
