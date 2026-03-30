// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_cache_reserve_response_value_result.dart';final class CacheRulesCacheReserveResponseValue {const CacheRulesCacheReserveResponseValue({this.result});

factory CacheRulesCacheReserveResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveResponseValue(
  result: json['result'] != null ? CacheRulesCacheReserveResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesCacheReserveResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesCacheReserveResponseValue copyWith({CacheRulesCacheReserveResponseValueResult Function()? result}) { return CacheRulesCacheReserveResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveResponseValue(result: $result)'; } 
 }
