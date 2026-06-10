// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';@immutable final class SmartTieredCacheGetSmartTieredCacheSettingResponseResult {const SmartTieredCacheGetSmartTieredCacheSettingResponseResult({required this.value});

factory SmartTieredCacheGetSmartTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Smart Tiered Cache zone setting.
final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
SmartTieredCacheGetSmartTieredCacheSettingResponseResult copyWith({CacheRulesSmartTieredCacheValue? value}) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartTieredCacheGetSmartTieredCacheSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartTieredCacheGetSmartTieredCacheSettingResponseResult(value: $value)'; } 
 }
