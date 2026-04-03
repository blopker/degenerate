// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_kind.dart';import 'shield_old_validation_enabled.dart';import 'shield_timestamp.dart';import 'shield_uuid.dart';@immutable final class ShieldOldPublicSchema {const ShieldOldPublicSchema({required this.createdAt, required this.kind, required this.name, required this.schemaId, this.source, this.validationEnabled, });

factory ShieldOldPublicSchema.fromJson(Map<String, dynamic> json) { return ShieldOldPublicSchema(
  createdAt: ShieldTimestamp.fromJson(json['created_at'] as String),
  kind: ShieldOldKind.fromJson(json['kind'] as String),
  name: json['name'] as String,
  schemaId: ShieldUuid.fromJson(json['schema_id'] as String),
  source: json['source'] as String?,
  validationEnabled: json['validation_enabled'] != null ? ShieldOldValidationEnabled.fromJson(json['validation_enabled'] as bool) : null,
); }

final ShieldTimestamp createdAt;

/// Kind of schema
final ShieldOldKind kind;

/// Name of the schema
final String name;

final ShieldUuid schemaId;

/// Source of the schema
final String? source;

final ShieldOldValidationEnabled? validationEnabled;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toJson(),
  'kind': kind.toJson(),
  'name': name,
  'schema_id': schemaId.toJson(),
  'source': ?source,
  if (validationEnabled != null) 'validation_enabled': validationEnabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') &&
      json.containsKey('kind') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('schema_id'); } 
ShieldOldPublicSchema copyWith({ShieldTimestamp? createdAt, ShieldOldKind? kind, String? name, ShieldUuid? schemaId, String Function()? source, ShieldOldValidationEnabled Function()? validationEnabled, }) { return ShieldOldPublicSchema(
  createdAt: createdAt ?? this.createdAt,
  kind: kind ?? this.kind,
  name: name ?? this.name,
  schemaId: schemaId ?? this.schemaId,
  source: source != null ? source() : this.source,
  validationEnabled: validationEnabled != null ? validationEnabled() : this.validationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldPublicSchema &&
          createdAt == other.createdAt &&
          kind == other.kind &&
          name == other.name &&
          schemaId == other.schemaId &&
          source == other.source &&
          validationEnabled == other.validationEnabled; } 
@override int get hashCode { return Object.hash(createdAt, kind, name, schemaId, source, validationEnabled); } 
@override String toString() { return 'ShieldOldPublicSchema(createdAt: $createdAt, kind: $kind, name: $name, schemaId: $schemaId, source: $source, validationEnabled: $validationEnabled)'; } 
 }
