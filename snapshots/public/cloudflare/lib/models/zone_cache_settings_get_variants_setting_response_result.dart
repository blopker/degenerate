// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_variants_value.dart';@immutable final class ZoneCacheSettingsGetVariantsSettingResponseResult {const ZoneCacheSettingsGetVariantsSettingResponseResult({required this.value});

factory ZoneCacheSettingsGetVariantsSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetVariantsSettingResponseResult(
  value: CacheRulesVariantsValue.fromJson(json['value'] as Map<String, dynamic>),
); }

final CacheRulesVariantsValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsGetVariantsSettingResponseResult copyWith({CacheRulesVariantsValue? value}) { return ZoneCacheSettingsGetVariantsSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetVariantsSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetVariantsSettingResponseResult(value: $value)'; } 
 }
