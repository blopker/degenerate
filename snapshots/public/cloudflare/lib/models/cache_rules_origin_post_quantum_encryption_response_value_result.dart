// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_origin_post_quantum_encryption_value.dart';final class CacheRulesOriginPostQuantumEncryptionResponseValueResult {const CacheRulesOriginPostQuantumEncryptionResponseValueResult({required this.value});

factory CacheRulesOriginPostQuantumEncryptionResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesOriginPostQuantumEncryptionResponseValueResult(
  value: CacheRulesOriginPostQuantumEncryptionValue.fromJson(json['value'] as String),
); }

final CacheRulesOriginPostQuantumEncryptionValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesOriginPostQuantumEncryptionResponseValueResult copyWith({CacheRulesOriginPostQuantumEncryptionValue? value}) { return CacheRulesOriginPostQuantumEncryptionResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginPostQuantumEncryptionResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryptionResponseValueResult(value: $value)'; } 
 }
