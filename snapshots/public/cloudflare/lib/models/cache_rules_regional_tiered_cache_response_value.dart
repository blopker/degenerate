// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class CacheRulesRegionalTieredCacheResponseValue {const CacheRulesRegionalTieredCacheResponseValue({this.result});

factory CacheRulesRegionalTieredCacheResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesRegionalTieredCacheResponseValue(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.
final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesRegionalTieredCacheResponseValue copyWith({CacheRulesBase Function()? result}) { return CacheRulesRegionalTieredCacheResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesRegionalTieredCacheResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheResponseValue(result: $result)'; } 
 }
