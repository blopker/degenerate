// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiGetModelSchemaResponseResultInput {const WorkersAiGetModelSchemaResponseResultInput({required this.additionalProperties, required this.description, required this.type, });

factory WorkersAiGetModelSchemaResponseResultInput.fromJson(Map<String, dynamic> json) { return WorkersAiGetModelSchemaResponseResultInput(
  additionalProperties: json['additionalProperties'] as bool,
  description: json['description'] as String,
  type: json['type'] as String,
); }

final bool additionalProperties;

final String description;

final String type;

Map<String, dynamic> toJson() { return {
  'additionalProperties': additionalProperties,
  'description': description,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('additionalProperties') && json['additionalProperties'] is bool &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersAiGetModelSchemaResponseResultInput copyWith({bool? additionalProperties, String? description, String? type, }) { return WorkersAiGetModelSchemaResponseResultInput(
  additionalProperties: additionalProperties ?? this.additionalProperties,
  description: description ?? this.description,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiGetModelSchemaResponseResultInput &&
          additionalProperties == other.additionalProperties &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(additionalProperties, description, type); } 
@override String toString() { return 'WorkersAiGetModelSchemaResponseResultInput(additionalProperties: $additionalProperties, description: $description, type: $type)'; } 
 }
