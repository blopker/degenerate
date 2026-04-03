// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_origin_post_quantum_encryption_value.dart';@immutable final class ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest {const ZoneCacheSettingsChangeOriginPostQuantumEncryptionSettingRequest({required this.value});

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
