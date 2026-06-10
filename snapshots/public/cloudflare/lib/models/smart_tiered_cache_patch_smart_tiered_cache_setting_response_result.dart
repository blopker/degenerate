// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';@immutable final class SmartTieredCachePatchSmartTieredCacheSettingResponseResult {const SmartTieredCachePatchSmartTieredCacheSettingResponseResult({required this.value});

factory SmartTieredCachePatchSmartTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return SmartTieredCachePatchSmartTieredCacheSettingResponseResult(
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Smart Tiered Cache zone setting.
final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
SmartTieredCachePatchSmartTieredCacheSettingResponseResult copyWith({CacheRulesSmartTieredCacheValue? value}) { return SmartTieredCachePatchSmartTieredCacheSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartTieredCachePatchSmartTieredCacheSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartTieredCachePatchSmartTieredCacheSettingResponseResult(value: $value)'; } 
 }
