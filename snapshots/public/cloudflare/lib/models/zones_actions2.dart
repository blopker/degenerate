// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_always_use_https.dart';import 'zones_automatic_https_rewrites.dart';import 'zones_browser_cache_ttl.dart';import 'zones_browser_check.dart';import 'zones_bypass_cache_on_cookie.dart';import 'zones_cache_by_device_type.dart';import 'zones_cache_deception_armor.dart';import 'zones_cache_key_fields.dart';import 'zones_cache_level.dart';import 'zones_cache_on_cookie.dart';import 'zones_cache_ttl_by_status.dart';import 'zones_disable_apps.dart';import 'zones_disable_performance.dart';import 'zones_disable_security.dart';import 'zones_disable_zaraz.dart';import 'zones_edge_cache_ttl.dart';import 'zones_email_obfuscation.dart';import 'zones_explicit_cache_control.dart';import 'zones_forwarding_url.dart';import 'zones_host_header_override.dart';import 'zones_ip_geolocation.dart';import 'zones_mirage.dart';import 'zones_opportunistic_encryption.dart';import 'zones_origin_error_page_pass_thru.dart';import 'zones_polish.dart';import 'zones_resolve_override.dart';import 'zones_respect_strong_etag.dart';import 'zones_response_buffering.dart';import 'zones_rocket_loader.dart';import 'zones_security_level.dart';import 'zones_sort_query_string_for_cache.dart';import 'zones_ssl.dart';import 'zones_true_client_ip_header.dart';import 'zones_waf.dart';sealed class ZonesActions2 {const ZonesActions2();

/// Deserialize from JSON, dispatching on the `id` discriminator.
factory ZonesActions2.fromJson(Map<String, dynamic> json) { return switch (json['id']) {
  'always_use_https' => ZonesActions2AlwaysUseHttps.fromJson(json),
  'automatic_https_rewrites' => ZonesActions2AutomaticHttpsRewrites.fromJson(json),
  'browser_cache_ttl' => ZonesActions2BrowserCacheTtl.fromJson(json),
  'browser_check' => ZonesActions2BrowserCheck.fromJson(json),
  'bypass_cache_on_cookie' => ZonesActions2BypassCacheOnCookie.fromJson(json),
  'cache_by_device_type' => ZonesActions2CacheByDeviceType.fromJson(json),
  'cache_deception_armor' => ZonesActions2CacheDeceptionArmor.fromJson(json),
  'cache_key_fields' => ZonesActions2CacheKeyFields.fromJson(json),
  'cache_level' => ZonesActions2CacheLevel.fromJson(json),
  'cache_on_cookie' => ZonesActions2CacheOnCookie.fromJson(json),
  'cache_ttl_by_status' => ZonesActions2CacheTtlByStatus.fromJson(json),
  'disable_apps' => ZonesActions2DisableApps.fromJson(json),
  'disable_performance' => ZonesActions2DisablePerformance.fromJson(json),
  'disable_security' => ZonesActions2DisableSecurity.fromJson(json),
  'disable_zaraz' => ZonesActions2DisableZaraz.fromJson(json),
  'edge_cache_ttl' => ZonesActions2EdgeCacheTtl.fromJson(json),
  'email_obfuscation' => ZonesActions2EmailObfuscation.fromJson(json),
  'explicit_cache_control' => ZonesActions2ExplicitCacheControl.fromJson(json),
  'forwarding_url' => ZonesActions2ForwardingUrl.fromJson(json),
  'host_header_override' => ZonesActions2HostHeaderOverride.fromJson(json),
  'ip_geolocation' => ZonesActions2IpGeolocation.fromJson(json),
  'mirage' => ZonesActions2Mirage.fromJson(json),
  'opportunistic_encryption' => ZonesActions2OpportunisticEncryption.fromJson(json),
  'origin_error_page_pass_thru' => ZonesActions2OriginErrorPagePassThru.fromJson(json),
  'polish' => ZonesActions2Polish.fromJson(json),
  'resolve_override' => ZonesActions2ResolveOverride.fromJson(json),
  'respect_strong_etag' => ZonesActions2RespectStrongEtag.fromJson(json),
  'response_buffering' => ZonesActions2ResponseBuffering.fromJson(json),
  'rocket_loader' => ZonesActions2RocketLoader.fromJson(json),
  'security_level' => ZonesActions2SecurityLevel.fromJson(json),
  'sort_query_string_for_cache' => ZonesActions2SortQueryStringForCache.fromJson(json),
  'ssl' => ZonesActions2Ssl.fromJson(json),
  'true_client_ip_header' => ZonesActions2TrueClientIpHeader.fromJson(json),
  'waf' => ZonesActions2Waf.fromJson(json),
  _ => ZonesActions2$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get id;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ZonesActions2$Unknown; } 
 }
final class ZonesActions2AlwaysUseHttps extends ZonesActions2 {const ZonesActions2AlwaysUseHttps(this.zonesAlwaysUseHttps);

factory ZonesActions2AlwaysUseHttps.fromJson(Map<String, dynamic> json) { return ZonesActions2AlwaysUseHttps(ZonesAlwaysUseHttps.fromJson(json)); }

final ZonesAlwaysUseHttps zonesAlwaysUseHttps;

@override String get id { return 'always_use_https'; } 
@override Map<String, dynamic> toJson() { return {...zonesAlwaysUseHttps.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2AlwaysUseHttps && zonesAlwaysUseHttps == other.zonesAlwaysUseHttps; } 
@override int get hashCode { return zonesAlwaysUseHttps.hashCode; } 
@override String toString() { return 'ZonesActions2AlwaysUseHttps(zonesAlwaysUseHttps: $zonesAlwaysUseHttps)'; } 
 }
final class ZonesActions2AutomaticHttpsRewrites extends ZonesActions2 {const ZonesActions2AutomaticHttpsRewrites(this.zonesAutomaticHttpsRewrites);

factory ZonesActions2AutomaticHttpsRewrites.fromJson(Map<String, dynamic> json) { return ZonesActions2AutomaticHttpsRewrites(ZonesAutomaticHttpsRewrites.fromJson(json)); }

final ZonesAutomaticHttpsRewrites zonesAutomaticHttpsRewrites;

@override String get id { return 'automatic_https_rewrites'; } 
@override Map<String, dynamic> toJson() { return {...zonesAutomaticHttpsRewrites.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2AutomaticHttpsRewrites && zonesAutomaticHttpsRewrites == other.zonesAutomaticHttpsRewrites; } 
@override int get hashCode { return zonesAutomaticHttpsRewrites.hashCode; } 
@override String toString() { return 'ZonesActions2AutomaticHttpsRewrites(zonesAutomaticHttpsRewrites: $zonesAutomaticHttpsRewrites)'; } 
 }
final class ZonesActions2BrowserCacheTtl extends ZonesActions2 {const ZonesActions2BrowserCacheTtl(this.zonesBrowserCacheTtl);

factory ZonesActions2BrowserCacheTtl.fromJson(Map<String, dynamic> json) { return ZonesActions2BrowserCacheTtl(ZonesBrowserCacheTtl.fromJson(json)); }

final ZonesBrowserCacheTtl zonesBrowserCacheTtl;

@override String get id { return 'browser_cache_ttl'; } 
@override Map<String, dynamic> toJson() { return {...zonesBrowserCacheTtl.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2BrowserCacheTtl && zonesBrowserCacheTtl == other.zonesBrowserCacheTtl; } 
@override int get hashCode { return zonesBrowserCacheTtl.hashCode; } 
@override String toString() { return 'ZonesActions2BrowserCacheTtl(zonesBrowserCacheTtl: $zonesBrowserCacheTtl)'; } 
 }
final class ZonesActions2BrowserCheck extends ZonesActions2 {const ZonesActions2BrowserCheck(this.zonesBrowserCheck);

factory ZonesActions2BrowserCheck.fromJson(Map<String, dynamic> json) { return ZonesActions2BrowserCheck(ZonesBrowserCheck.fromJson(json)); }

final ZonesBrowserCheck zonesBrowserCheck;

@override String get id { return 'browser_check'; } 
@override Map<String, dynamic> toJson() { return {...zonesBrowserCheck.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2BrowserCheck && zonesBrowserCheck == other.zonesBrowserCheck; } 
@override int get hashCode { return zonesBrowserCheck.hashCode; } 
@override String toString() { return 'ZonesActions2BrowserCheck(zonesBrowserCheck: $zonesBrowserCheck)'; } 
 }
final class ZonesActions2BypassCacheOnCookie extends ZonesActions2 {const ZonesActions2BypassCacheOnCookie(this.zonesBypassCacheOnCookie);

factory ZonesActions2BypassCacheOnCookie.fromJson(Map<String, dynamic> json) { return ZonesActions2BypassCacheOnCookie(ZonesBypassCacheOnCookie.fromJson(json)); }

final ZonesBypassCacheOnCookie zonesBypassCacheOnCookie;

@override String get id { return 'bypass_cache_on_cookie'; } 
@override Map<String, dynamic> toJson() { return {...zonesBypassCacheOnCookie.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2BypassCacheOnCookie && zonesBypassCacheOnCookie == other.zonesBypassCacheOnCookie; } 
@override int get hashCode { return zonesBypassCacheOnCookie.hashCode; } 
@override String toString() { return 'ZonesActions2BypassCacheOnCookie(zonesBypassCacheOnCookie: $zonesBypassCacheOnCookie)'; } 
 }
final class ZonesActions2CacheByDeviceType extends ZonesActions2 {const ZonesActions2CacheByDeviceType(this.zonesCacheByDeviceType);

factory ZonesActions2CacheByDeviceType.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheByDeviceType(ZonesCacheByDeviceType.fromJson(json)); }

final ZonesCacheByDeviceType zonesCacheByDeviceType;

@override String get id { return 'cache_by_device_type'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheByDeviceType.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheByDeviceType && zonesCacheByDeviceType == other.zonesCacheByDeviceType; } 
@override int get hashCode { return zonesCacheByDeviceType.hashCode; } 
@override String toString() { return 'ZonesActions2CacheByDeviceType(zonesCacheByDeviceType: $zonesCacheByDeviceType)'; } 
 }
final class ZonesActions2CacheDeceptionArmor extends ZonesActions2 {const ZonesActions2CacheDeceptionArmor(this.zonesCacheDeceptionArmor);

factory ZonesActions2CacheDeceptionArmor.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheDeceptionArmor(ZonesCacheDeceptionArmor.fromJson(json)); }

final ZonesCacheDeceptionArmor zonesCacheDeceptionArmor;

@override String get id { return 'cache_deception_armor'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheDeceptionArmor.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheDeceptionArmor && zonesCacheDeceptionArmor == other.zonesCacheDeceptionArmor; } 
@override int get hashCode { return zonesCacheDeceptionArmor.hashCode; } 
@override String toString() { return 'ZonesActions2CacheDeceptionArmor(zonesCacheDeceptionArmor: $zonesCacheDeceptionArmor)'; } 
 }
final class ZonesActions2CacheKeyFields extends ZonesActions2 {const ZonesActions2CacheKeyFields(this.zonesCacheKeyFields);

factory ZonesActions2CacheKeyFields.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheKeyFields(ZonesCacheKeyFields.fromJson(json)); }

final ZonesCacheKeyFields zonesCacheKeyFields;

@override String get id { return 'cache_key_fields'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheKeyFields.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheKeyFields && zonesCacheKeyFields == other.zonesCacheKeyFields; } 
@override int get hashCode { return zonesCacheKeyFields.hashCode; } 
@override String toString() { return 'ZonesActions2CacheKeyFields(zonesCacheKeyFields: $zonesCacheKeyFields)'; } 
 }
final class ZonesActions2CacheLevel extends ZonesActions2 {const ZonesActions2CacheLevel(this.zonesCacheLevel);

factory ZonesActions2CacheLevel.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheLevel(ZonesCacheLevel.fromJson(json)); }

final ZonesCacheLevel zonesCacheLevel;

@override String get id { return 'cache_level'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheLevel.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheLevel && zonesCacheLevel == other.zonesCacheLevel; } 
@override int get hashCode { return zonesCacheLevel.hashCode; } 
@override String toString() { return 'ZonesActions2CacheLevel(zonesCacheLevel: $zonesCacheLevel)'; } 
 }
final class ZonesActions2CacheOnCookie extends ZonesActions2 {const ZonesActions2CacheOnCookie(this.zonesCacheOnCookie);

factory ZonesActions2CacheOnCookie.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheOnCookie(ZonesCacheOnCookie.fromJson(json)); }

final ZonesCacheOnCookie zonesCacheOnCookie;

@override String get id { return 'cache_on_cookie'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheOnCookie.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheOnCookie && zonesCacheOnCookie == other.zonesCacheOnCookie; } 
@override int get hashCode { return zonesCacheOnCookie.hashCode; } 
@override String toString() { return 'ZonesActions2CacheOnCookie(zonesCacheOnCookie: $zonesCacheOnCookie)'; } 
 }
final class ZonesActions2CacheTtlByStatus extends ZonesActions2 {const ZonesActions2CacheTtlByStatus(this.zonesCacheTtlByStatus);

factory ZonesActions2CacheTtlByStatus.fromJson(Map<String, dynamic> json) { return ZonesActions2CacheTtlByStatus(ZonesCacheTtlByStatus.fromJson(json)); }

final ZonesCacheTtlByStatus zonesCacheTtlByStatus;

@override String get id { return 'cache_ttl_by_status'; } 
@override Map<String, dynamic> toJson() { return {...zonesCacheTtlByStatus.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2CacheTtlByStatus && zonesCacheTtlByStatus == other.zonesCacheTtlByStatus; } 
@override int get hashCode { return zonesCacheTtlByStatus.hashCode; } 
@override String toString() { return 'ZonesActions2CacheTtlByStatus(zonesCacheTtlByStatus: $zonesCacheTtlByStatus)'; } 
 }
final class ZonesActions2DisableApps extends ZonesActions2 {const ZonesActions2DisableApps(this.zonesDisableApps);

factory ZonesActions2DisableApps.fromJson(Map<String, dynamic> json) { return ZonesActions2DisableApps(ZonesDisableApps.fromJson(json)); }

final ZonesDisableApps zonesDisableApps;

@override String get id { return 'disable_apps'; } 
@override Map<String, dynamic> toJson() { return {...zonesDisableApps.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2DisableApps && zonesDisableApps == other.zonesDisableApps; } 
@override int get hashCode { return zonesDisableApps.hashCode; } 
@override String toString() { return 'ZonesActions2DisableApps(zonesDisableApps: $zonesDisableApps)'; } 
 }
final class ZonesActions2DisablePerformance extends ZonesActions2 {const ZonesActions2DisablePerformance(this.zonesDisablePerformance);

factory ZonesActions2DisablePerformance.fromJson(Map<String, dynamic> json) { return ZonesActions2DisablePerformance(ZonesDisablePerformance.fromJson(json)); }

final ZonesDisablePerformance zonesDisablePerformance;

@override String get id { return 'disable_performance'; } 
@override Map<String, dynamic> toJson() { return {...zonesDisablePerformance.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2DisablePerformance && zonesDisablePerformance == other.zonesDisablePerformance; } 
@override int get hashCode { return zonesDisablePerformance.hashCode; } 
@override String toString() { return 'ZonesActions2DisablePerformance(zonesDisablePerformance: $zonesDisablePerformance)'; } 
 }
final class ZonesActions2DisableSecurity extends ZonesActions2 {const ZonesActions2DisableSecurity(this.zonesDisableSecurity);

factory ZonesActions2DisableSecurity.fromJson(Map<String, dynamic> json) { return ZonesActions2DisableSecurity(ZonesDisableSecurity.fromJson(json)); }

final ZonesDisableSecurity zonesDisableSecurity;

@override String get id { return 'disable_security'; } 
@override Map<String, dynamic> toJson() { return {...zonesDisableSecurity.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2DisableSecurity && zonesDisableSecurity == other.zonesDisableSecurity; } 
@override int get hashCode { return zonesDisableSecurity.hashCode; } 
@override String toString() { return 'ZonesActions2DisableSecurity(zonesDisableSecurity: $zonesDisableSecurity)'; } 
 }
final class ZonesActions2DisableZaraz extends ZonesActions2 {const ZonesActions2DisableZaraz(this.zonesDisableZaraz);

factory ZonesActions2DisableZaraz.fromJson(Map<String, dynamic> json) { return ZonesActions2DisableZaraz(ZonesDisableZaraz.fromJson(json)); }

final ZonesDisableZaraz zonesDisableZaraz;

@override String get id { return 'disable_zaraz'; } 
@override Map<String, dynamic> toJson() { return {...zonesDisableZaraz.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2DisableZaraz && zonesDisableZaraz == other.zonesDisableZaraz; } 
@override int get hashCode { return zonesDisableZaraz.hashCode; } 
@override String toString() { return 'ZonesActions2DisableZaraz(zonesDisableZaraz: $zonesDisableZaraz)'; } 
 }
final class ZonesActions2EdgeCacheTtl extends ZonesActions2 {const ZonesActions2EdgeCacheTtl(this.zonesEdgeCacheTtl);

factory ZonesActions2EdgeCacheTtl.fromJson(Map<String, dynamic> json) { return ZonesActions2EdgeCacheTtl(ZonesEdgeCacheTtl.fromJson(json)); }

final ZonesEdgeCacheTtl zonesEdgeCacheTtl;

@override String get id { return 'edge_cache_ttl'; } 
@override Map<String, dynamic> toJson() { return {...zonesEdgeCacheTtl.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2EdgeCacheTtl && zonesEdgeCacheTtl == other.zonesEdgeCacheTtl; } 
@override int get hashCode { return zonesEdgeCacheTtl.hashCode; } 
@override String toString() { return 'ZonesActions2EdgeCacheTtl(zonesEdgeCacheTtl: $zonesEdgeCacheTtl)'; } 
 }
final class ZonesActions2EmailObfuscation extends ZonesActions2 {const ZonesActions2EmailObfuscation(this.zonesEmailObfuscation);

factory ZonesActions2EmailObfuscation.fromJson(Map<String, dynamic> json) { return ZonesActions2EmailObfuscation(ZonesEmailObfuscation.fromJson(json)); }

final ZonesEmailObfuscation zonesEmailObfuscation;

@override String get id { return 'email_obfuscation'; } 
@override Map<String, dynamic> toJson() { return {...zonesEmailObfuscation.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2EmailObfuscation && zonesEmailObfuscation == other.zonesEmailObfuscation; } 
@override int get hashCode { return zonesEmailObfuscation.hashCode; } 
@override String toString() { return 'ZonesActions2EmailObfuscation(zonesEmailObfuscation: $zonesEmailObfuscation)'; } 
 }
final class ZonesActions2ExplicitCacheControl extends ZonesActions2 {const ZonesActions2ExplicitCacheControl(this.zonesExplicitCacheControl);

factory ZonesActions2ExplicitCacheControl.fromJson(Map<String, dynamic> json) { return ZonesActions2ExplicitCacheControl(ZonesExplicitCacheControl.fromJson(json)); }

final ZonesExplicitCacheControl zonesExplicitCacheControl;

@override String get id { return 'explicit_cache_control'; } 
@override Map<String, dynamic> toJson() { return {...zonesExplicitCacheControl.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2ExplicitCacheControl && zonesExplicitCacheControl == other.zonesExplicitCacheControl; } 
@override int get hashCode { return zonesExplicitCacheControl.hashCode; } 
@override String toString() { return 'ZonesActions2ExplicitCacheControl(zonesExplicitCacheControl: $zonesExplicitCacheControl)'; } 
 }
final class ZonesActions2ForwardingUrl extends ZonesActions2 {const ZonesActions2ForwardingUrl(this.zonesForwardingUrl);

factory ZonesActions2ForwardingUrl.fromJson(Map<String, dynamic> json) { return ZonesActions2ForwardingUrl(ZonesForwardingUrl.fromJson(json)); }

final ZonesForwardingUrl zonesForwardingUrl;

@override String get id { return 'forwarding_url'; } 
@override Map<String, dynamic> toJson() { return {...zonesForwardingUrl.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2ForwardingUrl && zonesForwardingUrl == other.zonesForwardingUrl; } 
@override int get hashCode { return zonesForwardingUrl.hashCode; } 
@override String toString() { return 'ZonesActions2ForwardingUrl(zonesForwardingUrl: $zonesForwardingUrl)'; } 
 }
final class ZonesActions2HostHeaderOverride extends ZonesActions2 {const ZonesActions2HostHeaderOverride(this.zonesHostHeaderOverride);

factory ZonesActions2HostHeaderOverride.fromJson(Map<String, dynamic> json) { return ZonesActions2HostHeaderOverride(ZonesHostHeaderOverride.fromJson(json)); }

final ZonesHostHeaderOverride zonesHostHeaderOverride;

@override String get id { return 'host_header_override'; } 
@override Map<String, dynamic> toJson() { return {...zonesHostHeaderOverride.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2HostHeaderOverride && zonesHostHeaderOverride == other.zonesHostHeaderOverride; } 
@override int get hashCode { return zonesHostHeaderOverride.hashCode; } 
@override String toString() { return 'ZonesActions2HostHeaderOverride(zonesHostHeaderOverride: $zonesHostHeaderOverride)'; } 
 }
final class ZonesActions2IpGeolocation extends ZonesActions2 {const ZonesActions2IpGeolocation(this.zonesIpGeolocation);

factory ZonesActions2IpGeolocation.fromJson(Map<String, dynamic> json) { return ZonesActions2IpGeolocation(ZonesIpGeolocation.fromJson(json)); }

final ZonesIpGeolocation zonesIpGeolocation;

@override String get id { return 'ip_geolocation'; } 
@override Map<String, dynamic> toJson() { return {...zonesIpGeolocation.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2IpGeolocation && zonesIpGeolocation == other.zonesIpGeolocation; } 
@override int get hashCode { return zonesIpGeolocation.hashCode; } 
@override String toString() { return 'ZonesActions2IpGeolocation(zonesIpGeolocation: $zonesIpGeolocation)'; } 
 }
final class ZonesActions2Mirage extends ZonesActions2 {const ZonesActions2Mirage(this.zonesMirage);

factory ZonesActions2Mirage.fromJson(Map<String, dynamic> json) { return ZonesActions2Mirage(ZonesMirage.fromJson(json)); }

final ZonesMirage zonesMirage;

@override String get id { return 'mirage'; } 
@override Map<String, dynamic> toJson() { return {...zonesMirage.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2Mirage && zonesMirage == other.zonesMirage; } 
@override int get hashCode { return zonesMirage.hashCode; } 
@override String toString() { return 'ZonesActions2Mirage(zonesMirage: $zonesMirage)'; } 
 }
final class ZonesActions2OpportunisticEncryption extends ZonesActions2 {const ZonesActions2OpportunisticEncryption(this.zonesOpportunisticEncryption);

factory ZonesActions2OpportunisticEncryption.fromJson(Map<String, dynamic> json) { return ZonesActions2OpportunisticEncryption(ZonesOpportunisticEncryption.fromJson(json)); }

final ZonesOpportunisticEncryption zonesOpportunisticEncryption;

@override String get id { return 'opportunistic_encryption'; } 
@override Map<String, dynamic> toJson() { return {...zonesOpportunisticEncryption.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2OpportunisticEncryption && zonesOpportunisticEncryption == other.zonesOpportunisticEncryption; } 
@override int get hashCode { return zonesOpportunisticEncryption.hashCode; } 
@override String toString() { return 'ZonesActions2OpportunisticEncryption(zonesOpportunisticEncryption: $zonesOpportunisticEncryption)'; } 
 }
final class ZonesActions2OriginErrorPagePassThru extends ZonesActions2 {const ZonesActions2OriginErrorPagePassThru(this.zonesOriginErrorPagePassThru);

factory ZonesActions2OriginErrorPagePassThru.fromJson(Map<String, dynamic> json) { return ZonesActions2OriginErrorPagePassThru(ZonesOriginErrorPagePassThru.fromJson(json)); }

final ZonesOriginErrorPagePassThru zonesOriginErrorPagePassThru;

@override String get id { return 'origin_error_page_pass_thru'; } 
@override Map<String, dynamic> toJson() { return {...zonesOriginErrorPagePassThru.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2OriginErrorPagePassThru && zonesOriginErrorPagePassThru == other.zonesOriginErrorPagePassThru; } 
@override int get hashCode { return zonesOriginErrorPagePassThru.hashCode; } 
@override String toString() { return 'ZonesActions2OriginErrorPagePassThru(zonesOriginErrorPagePassThru: $zonesOriginErrorPagePassThru)'; } 
 }
final class ZonesActions2Polish extends ZonesActions2 {const ZonesActions2Polish(this.zonesPolish);

factory ZonesActions2Polish.fromJson(Map<String, dynamic> json) { return ZonesActions2Polish(ZonesPolish.fromJson(json)); }

final ZonesPolish zonesPolish;

@override String get id { return 'polish'; } 
@override Map<String, dynamic> toJson() { return {...zonesPolish.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2Polish && zonesPolish == other.zonesPolish; } 
@override int get hashCode { return zonesPolish.hashCode; } 
@override String toString() { return 'ZonesActions2Polish(zonesPolish: $zonesPolish)'; } 
 }
final class ZonesActions2ResolveOverride extends ZonesActions2 {const ZonesActions2ResolveOverride(this.zonesResolveOverride);

factory ZonesActions2ResolveOverride.fromJson(Map<String, dynamic> json) { return ZonesActions2ResolveOverride(ZonesResolveOverride.fromJson(json)); }

final ZonesResolveOverride zonesResolveOverride;

@override String get id { return 'resolve_override'; } 
@override Map<String, dynamic> toJson() { return {...zonesResolveOverride.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2ResolveOverride && zonesResolveOverride == other.zonesResolveOverride; } 
@override int get hashCode { return zonesResolveOverride.hashCode; } 
@override String toString() { return 'ZonesActions2ResolveOverride(zonesResolveOverride: $zonesResolveOverride)'; } 
 }
final class ZonesActions2RespectStrongEtag extends ZonesActions2 {const ZonesActions2RespectStrongEtag(this.zonesRespectStrongEtag);

factory ZonesActions2RespectStrongEtag.fromJson(Map<String, dynamic> json) { return ZonesActions2RespectStrongEtag(ZonesRespectStrongEtag.fromJson(json)); }

final ZonesRespectStrongEtag zonesRespectStrongEtag;

@override String get id { return 'respect_strong_etag'; } 
@override Map<String, dynamic> toJson() { return {...zonesRespectStrongEtag.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2RespectStrongEtag && zonesRespectStrongEtag == other.zonesRespectStrongEtag; } 
@override int get hashCode { return zonesRespectStrongEtag.hashCode; } 
@override String toString() { return 'ZonesActions2RespectStrongEtag(zonesRespectStrongEtag: $zonesRespectStrongEtag)'; } 
 }
final class ZonesActions2ResponseBuffering extends ZonesActions2 {const ZonesActions2ResponseBuffering(this.zonesResponseBuffering);

factory ZonesActions2ResponseBuffering.fromJson(Map<String, dynamic> json) { return ZonesActions2ResponseBuffering(ZonesResponseBuffering.fromJson(json)); }

final ZonesResponseBuffering zonesResponseBuffering;

@override String get id { return 'response_buffering'; } 
@override Map<String, dynamic> toJson() { return {...zonesResponseBuffering.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2ResponseBuffering && zonesResponseBuffering == other.zonesResponseBuffering; } 
@override int get hashCode { return zonesResponseBuffering.hashCode; } 
@override String toString() { return 'ZonesActions2ResponseBuffering(zonesResponseBuffering: $zonesResponseBuffering)'; } 
 }
final class ZonesActions2RocketLoader extends ZonesActions2 {const ZonesActions2RocketLoader(this.zonesRocketLoader);

factory ZonesActions2RocketLoader.fromJson(Map<String, dynamic> json) { return ZonesActions2RocketLoader(ZonesRocketLoader.fromJson(json)); }

final ZonesRocketLoader zonesRocketLoader;

@override String get id { return 'rocket_loader'; } 
@override Map<String, dynamic> toJson() { return {...zonesRocketLoader.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2RocketLoader && zonesRocketLoader == other.zonesRocketLoader; } 
@override int get hashCode { return zonesRocketLoader.hashCode; } 
@override String toString() { return 'ZonesActions2RocketLoader(zonesRocketLoader: $zonesRocketLoader)'; } 
 }
final class ZonesActions2SecurityLevel extends ZonesActions2 {const ZonesActions2SecurityLevel(this.zonesSecurityLevel);

factory ZonesActions2SecurityLevel.fromJson(Map<String, dynamic> json) { return ZonesActions2SecurityLevel(ZonesSecurityLevel.fromJson(json)); }

final ZonesSecurityLevel zonesSecurityLevel;

@override String get id { return 'security_level'; } 
@override Map<String, dynamic> toJson() { return {...zonesSecurityLevel.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2SecurityLevel && zonesSecurityLevel == other.zonesSecurityLevel; } 
@override int get hashCode { return zonesSecurityLevel.hashCode; } 
@override String toString() { return 'ZonesActions2SecurityLevel(zonesSecurityLevel: $zonesSecurityLevel)'; } 
 }
final class ZonesActions2SortQueryStringForCache extends ZonesActions2 {const ZonesActions2SortQueryStringForCache(this.zonesSortQueryStringForCache);

factory ZonesActions2SortQueryStringForCache.fromJson(Map<String, dynamic> json) { return ZonesActions2SortQueryStringForCache(ZonesSortQueryStringForCache.fromJson(json)); }

final ZonesSortQueryStringForCache zonesSortQueryStringForCache;

@override String get id { return 'sort_query_string_for_cache'; } 
@override Map<String, dynamic> toJson() { return {...zonesSortQueryStringForCache.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2SortQueryStringForCache && zonesSortQueryStringForCache == other.zonesSortQueryStringForCache; } 
@override int get hashCode { return zonesSortQueryStringForCache.hashCode; } 
@override String toString() { return 'ZonesActions2SortQueryStringForCache(zonesSortQueryStringForCache: $zonesSortQueryStringForCache)'; } 
 }
final class ZonesActions2Ssl extends ZonesActions2 {const ZonesActions2Ssl(this.zonesSsl);

factory ZonesActions2Ssl.fromJson(Map<String, dynamic> json) { return ZonesActions2Ssl(ZonesSsl.fromJson(json)); }

final ZonesSsl zonesSsl;

@override String get id { return 'ssl'; } 
@override Map<String, dynamic> toJson() { return {...zonesSsl.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2Ssl && zonesSsl == other.zonesSsl; } 
@override int get hashCode { return zonesSsl.hashCode; } 
@override String toString() { return 'ZonesActions2Ssl(zonesSsl: $zonesSsl)'; } 
 }
final class ZonesActions2TrueClientIpHeader extends ZonesActions2 {const ZonesActions2TrueClientIpHeader(this.zonesTrueClientIpHeader);

factory ZonesActions2TrueClientIpHeader.fromJson(Map<String, dynamic> json) { return ZonesActions2TrueClientIpHeader(ZonesTrueClientIpHeader.fromJson(json)); }

final ZonesTrueClientIpHeader zonesTrueClientIpHeader;

@override String get id { return 'true_client_ip_header'; } 
@override Map<String, dynamic> toJson() { return {...zonesTrueClientIpHeader.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2TrueClientIpHeader && zonesTrueClientIpHeader == other.zonesTrueClientIpHeader; } 
@override int get hashCode { return zonesTrueClientIpHeader.hashCode; } 
@override String toString() { return 'ZonesActions2TrueClientIpHeader(zonesTrueClientIpHeader: $zonesTrueClientIpHeader)'; } 
 }
final class ZonesActions2Waf extends ZonesActions2 {const ZonesActions2Waf(this.zonesWaf);

factory ZonesActions2Waf.fromJson(Map<String, dynamic> json) { return ZonesActions2Waf(ZonesWaf.fromJson(json)); }

final ZonesWaf zonesWaf;

@override String get id { return 'waf'; } 
@override Map<String, dynamic> toJson() { return {...zonesWaf.toJson(), 'id': id}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2Waf && zonesWaf == other.zonesWaf; } 
@override int get hashCode { return zonesWaf.hashCode; } 
@override String toString() { return 'ZonesActions2Waf(zonesWaf: $zonesWaf)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ZonesActions2$Unknown extends ZonesActions2 {const ZonesActions2$Unknown(this.json);

final Map<String, dynamic> json;

@override String get id { return json['id'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesActions2$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ZonesActions2.unknown($json)'; } 
 }
