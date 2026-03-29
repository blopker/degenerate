// GENERATED CODE - DO NOT MODIFY BY HAND

final class DlpSensitivityLevel {const DlpSensitivityLevel({required this.createdAt, required this.description, required this.id, required this.name, required this.updatedAt, });

factory DlpSensitivityLevel.fromJson(Map<String, dynamic> json) { return DlpSensitivityLevel(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String,
  id: json['id'] as String,
  name: json['name'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final DateTime createdAt;

final String description;

final String id;

final String name;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'description': description,
  'id': id,
  'name': name,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpSensitivityLevel copyWith({DateTime? createdAt, String? description, String? id, String? name, DateTime? updatedAt, }) { return DlpSensitivityLevel(
  createdAt: createdAt ?? this.createdAt,
  description: description ?? this.description,
  id: id ?? this.id,
  name: name ?? this.name,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpSensitivityLevel &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          name == other.name &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, id, name, updatedAt); } 
@override String toString() { return 'DlpSensitivityLevel(createdAt: $createdAt, description: $description, id: $id, name: $name, updatedAt: $updatedAt)'; } 
 }
