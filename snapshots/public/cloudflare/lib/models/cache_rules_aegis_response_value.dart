// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class CacheRulesAegisResponseValue {const CacheRulesAegisResponseValue({this.result});

factory CacheRulesAegisResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesAegisResponseValue(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesAegisResponseValue copyWith({CacheRulesBase Function()? result}) { return CacheRulesAegisResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesAegisResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesAegisResponseValue(result: $result)'; } 
 }
