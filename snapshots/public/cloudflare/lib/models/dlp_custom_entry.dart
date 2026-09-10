// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_pattern.dart';@immutable final class DlpCustomEntry {const DlpCustomEntry({required this.createdAt, required this.enabled, required this.id, required this.name, required this.pattern, required this.updatedAt, this.description = const Omittable.absent(), this.profileId = const Omittable.absent(), });

factory DlpCustomEntry.fromJson(Map<String, dynamic> json) { return DlpCustomEntry(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
  profileId: json.containsKey('profile_id') ? Omittable(json['profile_id'] as String?) : const Omittable.absent(),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final DateTime createdAt;

final Omittable<String?> description;

final bool enabled;

final String id;

final String name;

final DlpPattern pattern;

final Omittable<String?> profileId;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  if (description.isPresent) 'description': description.value,
  'enabled': enabled,
  'id': id,
  'name': name,
  'pattern': pattern.toJson(),
  if (profileId.isPresent) 'profile_id': profileId.value,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern') &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpCustomEntry copyWith({DateTime? createdAt, Omittable<String?>? description, bool? enabled, String? id, String? name, DlpPattern? pattern, Omittable<String?>? profileId, DateTime? updatedAt, }) { return DlpCustomEntry(
  createdAt: createdAt ?? this.createdAt,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
  profileId: profileId ?? this.profileId,
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
