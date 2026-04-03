// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_smart_shield_settings_get_response_cache_reserve.dart';import 'smartshield_smart_shield_settings_get_response_regional_tiered_cache.dart';import 'smartshield_smart_shield_settings_get_response_smart_routing.dart';import 'smartshield_smart_shield_settings_get_response_smart_tiered_cache.dart';/// The full Smart Shield response from the GET and PATCH operations.
@immutable final class SmartshieldSmartShieldSettingsGetResponse {const SmartshieldSmartShieldSettingsGetResponse({required this.cacheReserve, required this.regionalTieredCache, required this.smartRouting, required this.smartTieredCache, required this.healthchecksCount, });

factory SmartshieldSmartShieldSettingsGetResponse.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsGetResponse(
  cacheReserve: SmartshieldSmartShieldSettingsGetResponseCacheReserve.fromJson(json['cache_reserve'] as Map<String, dynamic>),
  regionalTieredCache: SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache.fromJson(json['regional_tiered_cache'] as Map<String, dynamic>),
  smartRouting: SmartshieldSmartShieldSettingsGetResponseSmartRouting.fromJson(json['smart_routing'] as Map<String, dynamic>),
  smartTieredCache: SmartshieldSmartShieldSettingsGetResponseSmartTieredCache.fromJson(json['smart_tiered_cache'] as Map<String, dynamic>),
  healthchecksCount: (json['healthchecks_count'] as num).toInt(),
); }

final SmartshieldSmartShieldSettingsGetResponseCacheReserve cacheReserve;

final SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache regionalTieredCache;

final SmartshieldSmartShieldSettingsGetResponseSmartRouting smartRouting;

final SmartshieldSmartShieldSettingsGetResponseSmartTieredCache smartTieredCache;

/// The total number of health checks associated with the zone.
final int healthchecksCount;

Map<String, dynamic> toJson() { return {
  'cache_reserve': cacheReserve.toJson(),
  'regional_tiered_cache': regionalTieredCache.toJson(),
  'smart_routing': smartRouting.toJson(),
  'smart_tiered_cache': smartTieredCache.toJson(),
  'healthchecks_count': healthchecksCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cache_reserve') &&
      json.containsKey('regional_tiered_cache') &&
      json.containsKey('smart_routing') &&
      json.containsKey('smart_tiered_cache') &&
      json.containsKey('healthchecks_count') && json['healthchecks_count'] is num; } 
SmartshieldSmartShieldSettingsGetResponse copyWith({SmartshieldSmartShieldSettingsGetResponseCacheReserve? cacheReserve, SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache? regionalTieredCache, SmartshieldSmartShieldSettingsGetResponseSmartRouting? smartRouting, SmartshieldSmartShieldSettingsGetResponseSmartTieredCache? smartTieredCache, int? healthchecksCount, }) { return SmartshieldSmartShieldSettingsGetResponse(
  cacheReserve: cacheReserve ?? this.cacheReserve,
  regionalTieredCache: regionalTieredCache ?? this.regionalTieredCache,
  smartRouting: smartRouting ?? this.smartRouting,
  smartTieredCache: smartTieredCache ?? this.smartTieredCache,
  healthchecksCount: healthchecksCount ?? this.healthchecksCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsGetResponse &&
          cacheReserve == other.cacheReserve &&
          regionalTieredCache == other.regionalTieredCache &&
          smartRouting == other.smartRouting &&
          smartTieredCache == other.smartTieredCache &&
          healthchecksCount == other.healthchecksCount; } 
@override int get hashCode { return Object.hash(cacheReserve, regionalTieredCache, smartRouting, smartTieredCache, healthchecksCount); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponse(cacheReserve: $cacheReserve, regionalTieredCache: $regionalTieredCache, smartRouting: $smartRouting, smartTieredCache: $smartTieredCache, healthchecksCount: $healthchecksCount)'; } 
 }
