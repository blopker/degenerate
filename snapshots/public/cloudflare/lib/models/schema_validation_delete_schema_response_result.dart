// GENERATED CODE - DO NOT MODIFY BY HAND

final class SchemaValidationDeleteSchemaResponseResult {const SchemaValidationDeleteSchemaResponseResult({required this.id});

factory SchemaValidationDeleteSchemaResponseResult.fromJson(Map<String, dynamic> json) { return SchemaValidationDeleteSchemaResponseResult(
  id: json['id'] as String,
); }

/// The ID of the schema that was just deleted
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
SchemaValidationDeleteSchemaResponseResult copyWith({String? id}) { return SchemaValidationDeleteSchemaResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SchemaValidationDeleteSchemaResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SchemaValidationDeleteSchemaResponseResult(id: $id)'; } 
 }
