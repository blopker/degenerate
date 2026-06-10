// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_variants_value.dart';@immutable final class ZoneCacheSettingsChangeVariantsSettingResponseResult {const ZoneCacheSettingsChangeVariantsSettingResponseResult({required this.value});

factory ZoneCacheSettingsChangeVariantsSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeVariantsSettingResponseResult(
  value: CacheRulesVariantsValue.fromJson(json['value'] as Map<String, dynamic>),
); }

final CacheRulesVariantsValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsChangeVariantsSettingResponseResult copyWith({CacheRulesVariantsValue? value}) { return ZoneCacheSettingsChangeVariantsSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeVariantsSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeVariantsSettingResponseResult(value: $value)'; } 
 }
