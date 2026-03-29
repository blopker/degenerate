// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsVariable {const ActionsVariable({required this.name, required this.value, required this.createdAt, required this.updatedAt, });

factory ActionsVariable.fromJson(Map<String, dynamic> json) { return ActionsVariable(
  name: json['name'] as String,
  value: json['value'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// The name of the variable.
final String name;

/// The value of the variable.
final String value;

/// The date and time at which the variable was created, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime createdAt;

/// The date and time at which the variable was last updated, in ISO 8601 format':' YYYY-MM-DDTHH:MM:SSZ.
final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
ActionsVariable copyWith({String? name, String? value, DateTime? createdAt, DateTime? updatedAt, }) { return ActionsVariable(
  name: name ?? this.name,
  value: value ?? this.value,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsVariable &&
          name == other.name &&
          value == other.value &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(name, value, createdAt, updatedAt); } 
@override String toString() { return 'ActionsVariable(name: $name, value: $value, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
