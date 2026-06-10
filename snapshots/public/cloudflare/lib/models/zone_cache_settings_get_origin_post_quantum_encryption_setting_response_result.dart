// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_origin_post_quantum_encryption_value.dart';@immutable final class ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult {const ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult({required this.value});

factory ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(
  value: CacheRulesOriginPostQuantumEncryptionValue.fromJson(json['value'] as String),
); }

/// Value of the Origin Post Quantum Encryption Setting.
final CacheRulesOriginPostQuantumEncryptionValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult copyWith({CacheRulesOriginPostQuantumEncryptionValue? value}) { return ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetOriginPostQuantumEncryptionSettingResponseResult(value: $value)'; } 
 }
