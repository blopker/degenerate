// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_variants_response_value_result.dart';@immutable final class CacheRulesVariantsResponseValue {const CacheRulesVariantsResponseValue({this.result});

factory CacheRulesVariantsResponseValue.fromJson(Map<String, dynamic> json) { return CacheRulesVariantsResponseValue(
  result: json['result'] != null ? CacheRulesVariantsResponseValueResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CacheRulesVariantsResponseValueResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CacheRulesVariantsResponseValue copyWith({CacheRulesVariantsResponseValueResult Function()? result}) { return CacheRulesVariantsResponseValue(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesVariantsResponseValue &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CacheRulesVariantsResponseValue(result: $result)'; } 
 }
