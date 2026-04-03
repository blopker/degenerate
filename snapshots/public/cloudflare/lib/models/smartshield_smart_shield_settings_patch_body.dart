// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_smart_shield_settings_patch_body_cache_reserve.dart';import 'smartshield_smart_shield_settings_patch_body_regional_tiered_cache.dart';import 'smartshield_smart_shield_settings_patch_body_smart_routing.dart';import 'smartshield_smart_shield_settings_patch_body_smart_tiered_cache.dart';/// The patch body for Smart Shield.
@immutable final class SmartshieldSmartShieldSettingsPatchBody {const SmartshieldSmartShieldSettingsPatchBody({this.cacheReserve, this.regionalTieredCache, this.smartRouting, this.smartTieredCache, });

factory SmartshieldSmartShieldSettingsPatchBody.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsPatchBody(
  cacheReserve: json['cache_reserve'] != null ? SmartshieldSmartShieldSettingsPatchBodyCacheReserve.fromJson(json['cache_reserve'] as Map<String, dynamic>) : null,
  regionalTieredCache: json['regional_tiered_cache'] != null ? SmartshieldSmartShieldSettingsPatchBodyRegionalTieredCache.fromJson(json['regional_tiered_cache'] as Map<String, dynamic>) : null,
  smartRouting: json['smart_routing'] != null ? SmartshieldSmartShieldSettingsPatchBodySmartRouting.fromJson(json['smart_routing'] as Map<String, dynamic>) : null,
  smartTieredCache: json['smart_tiered_cache'] != null ? SmartshieldSmartShieldSettingsPatchBodySmartTieredCache.fromJson(json['smart_tiered_cache'] as Map<String, dynamic>) : null,
); }

final SmartshieldSmartShieldSettingsPatchBodyCacheReserve? cacheReserve;

final SmartshieldSmartShieldSettingsPatchBodyRegionalTieredCache? regionalTieredCache;

final SmartshieldSmartShieldSettingsPatchBodySmartRouting? smartRouting;

final SmartshieldSmartShieldSettingsPatchBodySmartTieredCache? smartTieredCache;

Map<String, dynamic> toJson() { return {
  if (cacheReserve != null) 'cache_reserve': cacheReserve?.toJson(),
  if (regionalTieredCache != null) 'regional_tiered_cache': regionalTieredCache?.toJson(),
  if (smartRouting != null) 'smart_routing': smartRouting?.toJson(),
  if (smartTieredCache != null) 'smart_tiered_cache': smartTieredCache?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cache_reserve', 'regional_tiered_cache', 'smart_routing', 'smart_tiered_cache'}.contains(key)); } 
SmartshieldSmartShieldSettingsPatchBody copyWith({SmartshieldSmartShieldSettingsPatchBodyCacheReserve Function()? cacheReserve, SmartshieldSmartShieldSettingsPatchBodyRegionalTieredCache Function()? regionalTieredCache, SmartshieldSmartShieldSettingsPatchBodySmartRouting Function()? smartRouting, SmartshieldSmartShieldSettingsPatchBodySmartTieredCache Function()? smartTieredCache, }) { return SmartshieldSmartShieldSettingsPatchBody(
  cacheReserve: cacheReserve != null ? cacheReserve() : this.cacheReserve,
  regionalTieredCache: regionalTieredCache != null ? regionalTieredCache() : this.regionalTieredCache,
  smartRouting: smartRouting != null ? smartRouting() : this.smartRouting,
  smartTieredCache: smartTieredCache != null ? smartTieredCache() : this.smartTieredCache,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsPatchBody &&
          cacheReserve == other.cacheReserve &&
          regionalTieredCache == other.regionalTieredCache &&
          smartRouting == other.smartRouting &&
          smartTieredCache == other.smartTieredCache; } 
@override int get hashCode { return Object.hash(cacheReserve, regionalTieredCache, smartRouting, smartTieredCache); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsPatchBody(cacheReserve: $cacheReserve, regionalTieredCache: $regionalTieredCache, smartRouting: $smartRouting, smartTieredCache: $smartTieredCache)'; } 
 }
