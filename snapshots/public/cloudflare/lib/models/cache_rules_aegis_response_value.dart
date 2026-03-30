// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_aegis.dart';final class CacheRulesAegisResponseValue {const CacheRulesAegisResponseValue({this.result});

factory CacheRulesAegisResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesAegisResponseValue(
  result: json['result'] != null ? CacheRulesAegis.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesAegis? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesAegisResponseValue copyWith({CacheRulesAegis Function()? result}) { return CacheRulesAegisResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesAegisResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesAegisResponseValue(result: $result)'; } 
 }
