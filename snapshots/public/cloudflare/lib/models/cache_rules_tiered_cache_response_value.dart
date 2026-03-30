// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_tiered_cache_response_value_result.dart';final class CacheRulesTieredCacheResponseValue {const CacheRulesTieredCacheResponseValue({this.result});

factory CacheRulesTieredCacheResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesTieredCacheResponseValue(
  result: json['result'] != null ? CacheRulesTieredCacheResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesTieredCacheResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesTieredCacheResponseValue copyWith({CacheRulesTieredCacheResponseValueResult Function()? result}) { return CacheRulesTieredCacheResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesTieredCacheResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheResponseValue(result: $result)'; } 
 }
