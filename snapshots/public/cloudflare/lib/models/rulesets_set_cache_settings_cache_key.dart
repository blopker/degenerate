// GENERATED CODE - DO NOT MODIFY BY HAND

import 'rulesets_set_cache_settings_custom_cache_key.dart';/// Which components of the request are included in or excluded from the cache key Cloudflare uses to store the response in cache.
final class RulesetsSetCacheSettingsCacheKey {const RulesetsSetCacheSettingsCacheKey({this.cacheByDeviceType, this.cacheDeceptionArmor, this.customKey, this.ignoreQueryStringsOrder, });

factory RulesetsSetCacheSettingsCacheKey.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsCacheKey(
  cacheByDeviceType: json['cache_by_device_type'] as bool?,
  cacheDeceptionArmor: json['cache_deception_armor'] as bool?,
  customKey: json['custom_key'] != null ? RulesetsSetCacheSettingsCustomCacheKey.fromJson(json['custom_key'] as Map<String, dynamic>) : null,
  ignoreQueryStringsOrder: json['ignore_query_strings_order'] as bool?,
); }

/// Whether to separate cached content based on the visitor's device type.
final bool? cacheByDeviceType;

/// Whether to protect from web cache deception attacks, while allowing static assets to be cached.
final bool? cacheDeceptionArmor;

final RulesetsSetCacheSettingsCustomCacheKey? customKey;

/// Whether to treat requests with the same query parameters the same, regardless of the order those query parameters are in.
final bool? ignoreQueryStringsOrder;

Map<String, dynamic> toJson() { return {
  'cache_by_device_type': ?cacheByDeviceType,
  'cache_deception_armor': ?cacheDeceptionArmor,
  if (customKey != null) 'custom_key': customKey?.toJson(),
  'ignore_query_strings_order': ?ignoreQueryStringsOrder,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cache_by_device_type', 'cache_deception_armor', 'custom_key', 'ignore_query_strings_order'}.contains(key)); } 
RulesetsSetCacheSettingsCacheKey copyWith({bool Function()? cacheByDeviceType, bool Function()? cacheDeceptionArmor, RulesetsSetCacheSettingsCustomCacheKey Function()? customKey, bool Function()? ignoreQueryStringsOrder, }) { return RulesetsSetCacheSettingsCacheKey(
  cacheByDeviceType: cacheByDeviceType != null ? cacheByDeviceType() : this.cacheByDeviceType,
  cacheDeceptionArmor: cacheDeceptionArmor != null ? cacheDeceptionArmor() : this.cacheDeceptionArmor,
  customKey: customKey != null ? customKey() : this.customKey,
  ignoreQueryStringsOrder: ignoreQueryStringsOrder != null ? ignoreQueryStringsOrder() : this.ignoreQueryStringsOrder,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsCacheKey &&
          cacheByDeviceType == other.cacheByDeviceType &&
          cacheDeceptionArmor == other.cacheDeceptionArmor &&
          customKey == other.customKey &&
          ignoreQueryStringsOrder == other.ignoreQueryStringsOrder; } 
@override int get hashCode { return Object.hash(cacheByDeviceType, cacheDeceptionArmor, customKey, ignoreQueryStringsOrder); } 
@override String toString() { return 'RulesetsSetCacheSettingsCacheKey(cacheByDeviceType: $cacheByDeviceType, cacheDeceptionArmor: $cacheDeceptionArmor, customKey: $customKey, ignoreQueryStringsOrder: $ignoreQueryStringsOrder)'; } 
 }
