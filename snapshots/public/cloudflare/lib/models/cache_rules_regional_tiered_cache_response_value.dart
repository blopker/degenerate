// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_regional_tiered_cache_response_value_result.dart';final class CacheRulesRegionalTieredCacheResponseValue {const CacheRulesRegionalTieredCacheResponseValue({this.result});

factory CacheRulesRegionalTieredCacheResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesRegionalTieredCacheResponseValue(
  result: json['result'] != null ? CacheRulesRegionalTieredCacheResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesRegionalTieredCacheResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesRegionalTieredCacheResponseValue copyWith({CacheRulesRegionalTieredCacheResponseValueResult Function()? result}) { return CacheRulesRegionalTieredCacheResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesRegionalTieredCacheResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheResponseValue(result: $result)'; } 
 }
