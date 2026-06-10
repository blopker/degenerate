// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_origin_post_quantum_encryption_value.dart';/// Value of the zone setting.
@immutable final class ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId {const ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId._(this.value);

factory ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId.fromJson(String json) { return switch (json) {
  'origin_pqe' => originPqe,
  _ => ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId originPqe = ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId._('origin_pqe');

static const List<ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId> values = [originPqe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult {const ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(
  id: ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesOriginPostQuantumEncryptionValue.fromJson(json['value'] as String),
); }

/// Value of the zone setting.
final ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId id;

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
ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult copyWith({ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesOriginPostQuantumEncryptionValue? value, }) { return ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
