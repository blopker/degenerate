// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_pattern.dart';final class DlpCustomEntry {const DlpCustomEntry({required this.createdAt, this.description, required this.enabled, required this.id, required this.name, required this.pattern, this.profileId, required this.updatedAt, });

factory DlpCustomEntry.fromJson(Map<String, dynamic> json) { return DlpCustomEntry(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
  profileId: json['profile_id'] as String?,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final DateTime createdAt;

final String? description;

final bool enabled;

final String id;

final String name;

final DlpPattern pattern;

final String? profileId;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'description': ?description,
  'enabled': enabled,
  'id': id,
  'name': name,
  'pattern': pattern.toJson(),
  'profile_id': ?profileId,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern') &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpCustomEntry copyWith({DateTime? createdAt, String? Function()? description, bool? enabled, String? id, String? name, DlpPattern? pattern, String? Function()? profileId, DateTime? updatedAt, }) { return DlpCustomEntry(
  createdAt: createdAt ?? this.createdAt,
  description: description != null ? description() : this.description,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
  profileId: profileId != null ? profileId() : this.profileId,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpCustomEntry &&
          createdAt == other.createdAt &&
          description == other.description &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          pattern == other.pattern &&
          profileId == other.profileId &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, description, enabled, id, name, pattern, profileId, updatedAt); } 
@override String toString() { return 'DlpCustomEntry(createdAt: $createdAt, description: $description, enabled: $enabled, id: $id, name: $name, pattern: $pattern, profileId: $profileId, updatedAt: $updatedAt)'; } 
 }
