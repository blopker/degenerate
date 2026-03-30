// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_smart_tiered_cache_response_value_result.dart';final class CacheRulesSmartTieredCacheResponseValue {const CacheRulesSmartTieredCacheResponseValue({this.result});

factory CacheRulesSmartTieredCacheResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCacheResponseValue(
  result: json['result'] != null ? CacheRulesSmartTieredCacheResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesSmartTieredCacheResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesSmartTieredCacheResponseValue copyWith({CacheRulesSmartTieredCacheResponseValueResult Function()? result}) { return CacheRulesSmartTieredCacheResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCacheResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValue(result: $result)'; } 
 }
