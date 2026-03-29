// GENERATED CODE - DO NOT MODIFY BY HAND

final class MessagesInnerToolsVariant2FunctionParametersPropertiesValue {const MessagesInnerToolsVariant2FunctionParametersPropertiesValue({required this.description, required this.type, });

factory MessagesInnerToolsVariant2FunctionParametersPropertiesValue.fromJson(Map<String, dynamic> json) { return MessagesInnerToolsVariant2FunctionParametersPropertiesValue(
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
MessagesInnerToolsVariant2FunctionParametersPropertiesValue copyWith({String? description, String? type, }) { return MessagesInnerToolsVariant2FunctionParametersPropertiesValue(
  description: description ?? this.description,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerToolsVariant2FunctionParametersPropertiesValue &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, type); } 
@override String toString() { return 'MessagesInnerToolsVariant2FunctionParametersPropertiesValue(description: $description, type: $type)'; } 
 }
