// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class CacheRulesCacheReserveClearResponseValue {const CacheRulesCacheReserveClearResponseValue({this.result});

factory CacheRulesCacheReserveClearResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserveClearResponseValue(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesCacheReserveClearResponseValue copyWith({CacheRulesBase Function()? result}) { return CacheRulesCacheReserveClearResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserveClearResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveClearResponseValue(result: $result)'; } 
 }
