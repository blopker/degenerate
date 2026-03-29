// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class CacheRulesOriginPostQuantumEncryptionResponseValue {const CacheRulesOriginPostQuantumEncryptionResponseValue({this.result});

factory CacheRulesOriginPostQuantumEncryptionResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesOriginPostQuantumEncryptionResponseValue(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.
final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CacheRulesOriginPostQuantumEncryptionResponseValue copyWith({CacheRulesBase Function()? result}) { return CacheRulesOriginPostQuantumEncryptionResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginPostQuantumEncryptionResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryptionResponseValue(result: $result)'; } 
 }
