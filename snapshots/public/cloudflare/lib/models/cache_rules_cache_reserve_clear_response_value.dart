// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_cache_reserve_clear_response_value_result.dart';final class CacheRulesCacheReserveClearResponseValue {const CacheRulesCacheReserveClearResponseValue({this.result});

factory CacheRulesCacheReserveClearResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveClearResponseValue(
  result: json['result'] != null ? CacheRulesCacheReserveClearResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesCacheReserveClearResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesCacheReserveClearResponseValue copyWith({CacheRulesCacheReserveClearResponseValueResult Function()? result}) { return CacheRulesCacheReserveClearResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveClearResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveClearResponseValue(result: $result)'; } 
 }
