// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListTokensResponseResult {const AiSearchListTokensResponseResult({required this.cfApiId, required this.createdAt, required this.id, required this.modifiedAt, required this.name, this.createdBy, this.enabled = true, this.legacy = true, this.modifiedBy, });

factory AiSearchListTokensResponseResult.fromJson(Map<String, dynamic> json) { return AiSearchListTokensResponseResult(
  cfApiId: json['cf_api_id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  createdBy: json['created_by'] as String?,
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : true,
  id: json['id'] as String,
  legacy: json.containsKey('legacy') ? json['legacy'] as bool : true,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  modifiedBy: json['modified_by'] as String?,
  name: json['name'] as String,
); }

final String cfApiId;

final DateTime createdAt;

final String? createdBy;

final bool enabled;

final String id;

final bool legacy;

final DateTime modifiedAt;

final String? modifiedBy;

final String name;

Map<String, dynamic> toJson() { return {
  'cf_api_id': cfApiId,
  'created_at': createdAt.toIso8601String(),
  'created_by': ?createdBy,
  'enabled': enabled,
  'id': id,
  'legacy': legacy,
  'modified_at': modifiedAt.toIso8601String(),
  'modified_by': ?modifiedBy,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cf_api_id') && json['cf_api_id'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String; } 
AiSearchListTokensResponseResult copyWith({String? cfApiId, DateTime? createdAt, String? Function()? createdBy, bool Function()? enabled, String? id, bool Function()? legacy, DateTime? modifiedAt, String? Function()? modifiedBy, String? name, }) { return AiSearchListTokensResponseResult(
  cfApiId: cfApiId ?? this.cfApiId,
  createdAt: createdAt ?? this.createdAt,
  createdBy: createdBy != null ? createdBy() : this.createdBy,
  enabled: enabled != null ? enabled() : this.enabled,
  id: id ?? this.id,
  legacy: legacy != null ? legacy() : this.legacy,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  modifiedBy: modifiedBy != null ? modifiedBy() : this.modifiedBy,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListTokensResponseResult &&
          cfApiId == other.cfApiId &&
          createdAt == other.createdAt &&
          createdBy == other.createdBy &&
          enabled == other.enabled &&
          id == other.id &&
          legacy == other.legacy &&
          modifiedAt == other.modifiedAt &&
          modifiedBy == other.modifiedBy &&
          name == other.name; } 
@override int get hashCode { return Object.hash(cfApiId, createdAt, createdBy, enabled, id, legacy, modifiedAt, modifiedBy, name); } 
@override String toString() { return 'AiSearchListTokensResponseResult(cfApiId: $cfApiId, createdAt: $createdAt, createdBy: $createdBy, enabled: $enabled, id: $id, legacy: $legacy, modifiedAt: $modifiedAt, modifiedBy: $modifiedBy, name: $name)'; } 
 }
