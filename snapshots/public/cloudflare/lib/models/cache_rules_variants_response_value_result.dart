// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_variants_value.dart';final class CacheRulesVariantsResponseValueResult {const CacheRulesVariantsResponseValueResult({required this.value});

factory CacheRulesVariantsResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesVariantsResponseValueResult(
  value: CacheRulesVariantsValue.fromJson(json['value'] as Map<String, dynamic>),
); }

final CacheRulesVariantsValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesVariantsResponseValueResult copyWith({CacheRulesVariantsValue? value}) { return CacheRulesVariantsResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesVariantsResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesVariantsResponseValueResult(value: $value)'; } 
 }
