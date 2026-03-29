// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_base.dart';final class CacheRulesSmartTieredCacheResponseValue {const CacheRulesSmartTieredCacheResponseValue({this.result});

factory CacheRulesSmartTieredCacheResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCacheResponseValue(
  result: json['result'] != null ? CacheRulesBase.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesBase? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CacheRulesSmartTieredCacheResponseValue copyWith({CacheRulesBase Function()? result}) { return CacheRulesSmartTieredCacheResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCacheResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValue(result: $result)'; } 
 }
