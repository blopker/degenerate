// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_origin_post_quantum_encryption_value.dart';/// Value of the zone setting.
@immutable final class ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId {const ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId._(this.value);

factory ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId.fromJson(String json) { return switch (json) {
  'origin_pqe' => originPqe,
  _ => ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId originPqe = ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId._('origin_pqe');

static const List<ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId> values = [originPqe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult {const ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult(
  id: ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesOriginPostQuantumEncryptionValue.fromJson(json['value'] as String),
); }

/// Value of the zone setting.
final ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the Origin Post Quantum Encryption Setting.
final CacheRulesOriginPostQuantumEncryptionValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult copyWith({ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesOriginPostQuantumEncryptionValue? value, }) { return ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
