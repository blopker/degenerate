// GENERATED CODE - DO NOT MODIFY BY HAND

final class IntegrationEntryType {const IntegrationEntryType._(this.value);

factory IntegrationEntryType.fromJson(String json) { return switch (json) {
  'integration' => integration,
  _ => IntegrationEntryType._(json),
}; }

static const IntegrationEntryType integration = IntegrationEntryType._('integration');

static const List<IntegrationEntryType> values = [integration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IntegrationEntryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IntegrationEntryType($value)'; } 
 }
final class IntegrationEntry {const IntegrationEntry({required this.createdAt, required this.enabled, required this.id, required this.name, this.profileId, required this.updatedAt, required this.type, });

factory IntegrationEntry.fromJson(Map<String, dynamic> json) { return IntegrationEntry(
  createdAt: DateTime.parse(json['created_at'] as String),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  profileId: json['profile_id'] as String?,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  type: IntegrationEntryType.fromJson(json['type'] as String),
); }

final DateTime createdAt;

final bool enabled;

final String id;

final String name;

final String? profileId;

final DateTime updatedAt;

final IntegrationEntryType type;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'enabled': enabled,
  'id': id,
  'name': name,
  'profile_id': ?profileId,
  'updated_at': updatedAt.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('type'); } 
IntegrationEntry copyWith({DateTime? createdAt, bool? enabled, String? id, String? name, String? Function()? profileId, DateTime? updatedAt, IntegrationEntryType? type, }) { return IntegrationEntry(
  createdAt: createdAt ?? this.createdAt,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  profileId: profileId != null ? profileId() : this.profileId,
  updatedAt: updatedAt ?? this.updatedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntegrationEntry &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          profileId == other.profileId &&
          updatedAt == other.updatedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, enabled, id, name, profileId, updatedAt, type); } 
@override String toString() { return 'IntegrationEntry(createdAt: $createdAt, enabled: $enabled, id: $id, name: $name, profileId: $profileId, updatedAt: $updatedAt, type: $type)'; } 
 }
