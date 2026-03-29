// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the Origin Post Quantum Encryption Setting.
final class CacheRulesOriginPostQuantumEncryptionValue {const CacheRulesOriginPostQuantumEncryptionValue._(this.value);

factory CacheRulesOriginPostQuantumEncryptionValue.fromJson(String json) { return switch (json) {
  'preferred' => preferred,
  'supported' => supported,
  'off' => off,
  _ => CacheRulesOriginPostQuantumEncryptionValue._(json),
}; }

static const CacheRulesOriginPostQuantumEncryptionValue preferred = CacheRulesOriginPostQuantumEncryptionValue._('preferred');

static const CacheRulesOriginPostQuantumEncryptionValue supported = CacheRulesOriginPostQuantumEncryptionValue._('supported');

static const CacheRulesOriginPostQuantumEncryptionValue off = CacheRulesOriginPostQuantumEncryptionValue._('off');

static const List<CacheRulesOriginPostQuantumEncryptionValue> values = [preferred, supported, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesOriginPostQuantumEncryptionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryptionValue($value)'; } 
 }
final class ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest {const ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest({required this.value});

factory ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest(
  value: CacheRulesOriginPostQuantumEncryptionValue.fromJson(json['value'] as String),
); }

/// Value of the Origin Post Quantum Encryption Setting.
final CacheRulesOriginPostQuantumEncryptionValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest copyWith({CacheRulesOriginPostQuantumEncryptionValue? value}) { return ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest(value: $value)'; } 
 }
