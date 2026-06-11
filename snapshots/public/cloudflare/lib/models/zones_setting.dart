// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0rtt.dart';import 'zones_advanced_ddos.dart';import 'zones_always_online.dart';import 'zones_brotli.dart';import 'zones_cache_rules_aegis.dart';import 'zones_cache_rules_origin_h2_max_streams.dart';import 'zones_cache_rules_origin_max_http_version.dart';import 'zones_challenge_ttl.dart';import 'zones_china_network_enabled.dart';import 'zones_ciphers.dart';import 'zones_cname_flattening.dart';import 'zones_content_converter.dart';import 'zones_development_mode.dart';import 'zones_early_hints.dart';import 'zones_h2_prioritization.dart';import 'zones_hotlink_protection.dart';import 'zones_http2.dart';import 'zones_http3.dart';import 'zones_image_resizing.dart';import 'zones_ipv6.dart';import 'zones_max_upload.dart';import 'zones_min_tls_version.dart';import 'zones_nel.dart';import 'zones_opportunistic_onion.dart';import 'zones_orange_to_orange.dart';import 'zones_prefetch_preload.dart';import 'zones_privacy_pass.dart';import 'zones_proxy_read_timeout.dart';import 'zones_pseudo_ipv4.dart';import 'zones_redirects_for_ai_training.dart';import 'zones_replace_insecure_js.dart';import 'zones_schemas_always_use_https.dart';import 'zones_schemas_automatic_https_rewrites.dart';import 'zones_schemas_automatic_platform_optimization.dart';import 'zones_schemas_browser_cache_ttl.dart';import 'zones_schemas_browser_check.dart';import 'zones_schemas_cache_level.dart';import 'zones_schemas_edge_cache_ttl.dart';import 'zones_schemas_email_obfuscation.dart';import 'zones_schemas_ip_geolocation.dart';import 'zones_schemas_mirage.dart';import 'zones_schemas_opportunistic_encryption.dart';import 'zones_schemas_origin_error_page_pass_thru.dart';import 'zones_schemas_polish.dart';import 'zones_schemas_response_buffering.dart';import 'zones_schemas_rocket_loader.dart';import 'zones_schemas_security_level.dart';import 'zones_schemas_sort_query_string_for_cache.dart';import 'zones_schemas_ssl.dart';import 'zones_schemas_true_client_ip_header.dart';import 'zones_schemas_waf.dart';import 'zones_security_header.dart';import 'zones_server_side_exclude.dart';import 'zones_sha1_support.dart';import 'zones_ssl_recommender.dart';import 'zones_tls12_only.dart';import 'zones_tls13.dart';import 'zones_tls_client_auth.dart';import 'zones_transformations.dart';import 'zones_transformations_allowed_origins.dart';import 'zones_webp.dart';import 'zones_websockets.dart';/// A value that is one of: `Zones0rtt`, `ZonesAdvancedDdos`, `ZonesCacheRulesAegis`, `ZonesAlwaysOnline`, `ZonesSchemasAlwaysUseHttps`, `ZonesSchemasAutomaticHttpsRewrites`, `ZonesBrotli`, `ZonesSchemasBrowserCacheTtl`, `ZonesSchemasBrowserCheck`, `ZonesSchemasCacheLevel`, `ZonesChallengeTtl`, `ZonesChinaNetworkEnabled`, `ZonesContentConverter`, `ZonesCiphers`, `ZonesCnameFlattening`, `ZonesDevelopmentMode`, `ZonesEarlyHints`, `ZonesSchemasEdgeCacheTtl`, `ZonesSchemasEmailObfuscation`, `ZonesH2Prioritization`, `ZonesHotlinkProtection`, `ZonesHttp2`, `ZonesHttp3`, `ZonesImageResizing`, `ZonesSchemasIpGeolocation`, `ZonesIpv6`, `ZonesMaxUpload`, `ZonesMinTlsVersion`, `ZonesSchemasMirage`, `ZonesNel`, `ZonesSchemasOpportunisticEncryption`, `ZonesOpportunisticOnion`, `ZonesOrangeToOrange`, `ZonesSchemasOriginErrorPagePassThru`, `ZonesCacheRulesOriginH2MaxStreams`, `ZonesCacheRulesOriginMaxHttpVersion`, `ZonesSchemasPolish`, `ZonesPrefetchPreload`, `ZonesPrivacyPass`, `ZonesProxyReadTimeout`, `ZonesPseudoIpv4`, `ZonesRedirectsForAiTraining`, `ZonesReplaceInsecureJs`, `ZonesSchemasResponseBuffering`, `ZonesSchemasRocketLoader`, `ZonesSchemasAutomaticPlatformOptimization`, `ZonesSecurityHeader`, `ZonesSchemasSecurityLevel`, `ZonesServerSideExclude`, `ZonesSha1Support`, `ZonesSchemasSortQueryStringForCache`, `ZonesSchemasSsl`, `ZonesSslRecommender`, `ZonesTls12Only`, `ZonesTls13`, `ZonesTlsClientAuth`, `ZonesTransformations`, `ZonesTransformationsAllowedOrigins`, `ZonesSchemasTrueClientIpHeader`, `ZonesSchemasWaf`, `ZonesWebp`, `ZonesWebsockets`.
sealed class ZonesSetting {const ZonesSetting();

factory ZonesSetting.fromJson(Map<String, dynamic> json) {   if (Zones0rtt.canParse(json)) {
    return ZonesSettingZones0rtt(Zones0rtt.fromJson(json));
  }
  if (ZonesAdvancedDdos.canParse(json)) {
    return ZonesSettingZonesAdvancedDdos(ZonesAdvancedDdos.fromJson(json));
  }
  if (ZonesCacheRulesAegis.canParse(json)) {
    return ZonesSettingZonesCacheRulesAegis(ZonesCacheRulesAegis.fromJson(json));
  }
  if (ZonesAlwaysOnline.canParse(json)) {
    return ZonesSettingZonesAlwaysOnline(ZonesAlwaysOnline.fromJson(json));
  }
  if (ZonesSchemasAlwaysUseHttps.canParse(json)) {
    return ZonesSettingZonesSchemasAlwaysUseHttps(ZonesSchemasAlwaysUseHttps.fromJson(json));
  }
  if (ZonesSchemasAutomaticHttpsRewrites.canParse(json)) {
    return ZonesSettingZonesSchemasAutomaticHttpsRewrites(ZonesSchemasAutomaticHttpsRewrites.fromJson(json));
  }
  if (ZonesBrotli.canParse(json)) {
    return ZonesSettingZonesBrotli(ZonesBrotli.fromJson(json));
  }
  if (ZonesSchemasBrowserCacheTtl.canParse(json)) {
    return ZonesSettingZonesSchemasBrowserCacheTtl(ZonesSchemasBrowserCacheTtl.fromJson(json));
  }
  if (ZonesSchemasBrowserCheck.canParse(json)) {
    return ZonesSettingZonesSchemasBrowserCheck(ZonesSchemasBrowserCheck.fromJson(json));
  }
  if (ZonesSchemasCacheLevel.canParse(json)) {
    return ZonesSettingZonesSchemasCacheLevel(ZonesSchemasCacheLevel.fromJson(json));
  }
  if (ZonesChallengeTtl.canParse(json)) {
    return ZonesSettingZonesChallengeTtl(ZonesChallengeTtl.fromJson(json));
  }
  if (ZonesChinaNetworkEnabled.canParse(json)) {
    return ZonesSettingZonesChinaNetworkEnabled(ZonesChinaNetworkEnabled.fromJson(json));
  }
  if (ZonesContentConverter.canParse(json)) {
    return ZonesSettingZonesContentConverter(ZonesContentConverter.fromJson(json));
  }
  if (ZonesCiphers.canParse(json)) {
    return ZonesSettingZonesCiphers(ZonesCiphers.fromJson(json));
  }
  if (ZonesCnameFlattening.canParse(json)) {
    return ZonesSettingZonesCnameFlattening(ZonesCnameFlattening.fromJson(json));
  }
  if (ZonesDevelopmentMode.canParse(json)) {
    return ZonesSettingZonesDevelopmentMode(ZonesDevelopmentMode.fromJson(json));
  }
  if (ZonesEarlyHints.canParse(json)) {
    return ZonesSettingZonesEarlyHints(ZonesEarlyHints.fromJson(json));
  }
  if (ZonesSchemasEdgeCacheTtl.canParse(json)) {
    return ZonesSettingZonesSchemasEdgeCacheTtl(ZonesSchemasEdgeCacheTtl.fromJson(json));
  }
  if (ZonesSchemasEmailObfuscation.canParse(json)) {
    return ZonesSettingZonesSchemasEmailObfuscation(ZonesSchemasEmailObfuscation.fromJson(json));
  }
  if (ZonesH2Prioritization.canParse(json)) {
    return ZonesSettingZonesH2Prioritization(ZonesH2Prioritization.fromJson(json));
  }
  if (ZonesHotlinkProtection.canParse(json)) {
    return ZonesSettingZonesHotlinkProtection(ZonesHotlinkProtection.fromJson(json));
  }
  if (ZonesHttp2.canParse(json)) {
    return ZonesSettingZonesHttp2(ZonesHttp2.fromJson(json));
  }
  if (ZonesHttp3.canParse(json)) {
    return ZonesSettingZonesHttp3(ZonesHttp3.fromJson(json));
  }
  if (ZonesImageResizing.canParse(json)) {
    return ZonesSettingZonesImageResizing(ZonesImageResizing.fromJson(json));
  }
  if (ZonesSchemasIpGeolocation.canParse(json)) {
    return ZonesSettingZonesSchemasIpGeolocation(ZonesSchemasIpGeolocation.fromJson(json));
  }
  if (ZonesIpv6.canParse(json)) {
    return ZonesSettingZonesIpv6(ZonesIpv6.fromJson(json));
  }
  if (ZonesMaxUpload.canParse(json)) {
    return ZonesSettingZonesMaxUpload(ZonesMaxUpload.fromJson(json));
  }
  if (ZonesMinTlsVersion.canParse(json)) {
    return ZonesSettingZonesMinTlsVersion(ZonesMinTlsVersion.fromJson(json));
  }
  if (ZonesSchemasMirage.canParse(json)) {
    return ZonesSettingZonesSchemasMirage(ZonesSchemasMirage.fromJson(json));
  }
  if (ZonesNel.canParse(json)) {
    return ZonesSettingZonesNel(ZonesNel.fromJson(json));
  }
  if (ZonesSchemasOpportunisticEncryption.canParse(json)) {
    return ZonesSettingZonesSchemasOpportunisticEncryption(ZonesSchemasOpportunisticEncryption.fromJson(json));
  }
  if (ZonesOpportunisticOnion.canParse(json)) {
    return ZonesSettingZonesOpportunisticOnion(ZonesOpportunisticOnion.fromJson(json));
  }
  if (ZonesOrangeToOrange.canParse(json)) {
    return ZonesSettingZonesOrangeToOrange(ZonesOrangeToOrange.fromJson(json));
  }
  if (ZonesSchemasOriginErrorPagePassThru.canParse(json)) {
    return ZonesSettingZonesSchemasOriginErrorPagePassThru(ZonesSchemasOriginErrorPagePassThru.fromJson(json));
  }
  if (ZonesCacheRulesOriginH2MaxStreams.canParse(json)) {
    return ZonesSettingZonesCacheRulesOriginH2MaxStreams(ZonesCacheRulesOriginH2MaxStreams.fromJson(json));
  }
  if (ZonesCacheRulesOriginMaxHttpVersion.canParse(json)) {
    return ZonesSettingZonesCacheRulesOriginMaxHttpVersion(ZonesCacheRulesOriginMaxHttpVersion.fromJson(json));
  }
  if (ZonesSchemasPolish.canParse(json)) {
    return ZonesSettingZonesSchemasPolish(ZonesSchemasPolish.fromJson(json));
  }
  if (ZonesPrefetchPreload.canParse(json)) {
    return ZonesSettingZonesPrefetchPreload(ZonesPrefetchPreload.fromJson(json));
  }
  if (ZonesPrivacyPass.canParse(json)) {
    return ZonesSettingZonesPrivacyPass(ZonesPrivacyPass.fromJson(json));
  }
  if (ZonesProxyReadTimeout.canParse(json)) {
    return ZonesSettingZonesProxyReadTimeout(ZonesProxyReadTimeout.fromJson(json));
  }
  if (ZonesPseudoIpv4.canParse(json)) {
    return ZonesSettingZonesPseudoIpv4(ZonesPseudoIpv4.fromJson(json));
  }
  if (ZonesRedirectsForAiTraining.canParse(json)) {
    return ZonesSettingZonesRedirectsForAiTraining(ZonesRedirectsForAiTraining.fromJson(json));
  }
  if (ZonesReplaceInsecureJs.canParse(json)) {
    return ZonesSettingZonesReplaceInsecureJs(ZonesReplaceInsecureJs.fromJson(json));
  }
  if (ZonesSchemasResponseBuffering.canParse(json)) {
    return ZonesSettingZonesSchemasResponseBuffering(ZonesSchemasResponseBuffering.fromJson(json));
  }
  if (ZonesSchemasRocketLoader.canParse(json)) {
    return ZonesSettingZonesSchemasRocketLoader(ZonesSchemasRocketLoader.fromJson(json));
  }
  if (ZonesSchemasAutomaticPlatformOptimization.canParse(json)) {
    return ZonesSettingZonesSchemasAutomaticPlatformOptimization(ZonesSchemasAutomaticPlatformOptimization.fromJson(json));
  }
  if (ZonesSecurityHeader.canParse(json)) {
    return ZonesSettingZonesSecurityHeader(ZonesSecurityHeader.fromJson(json));
  }
  if (ZonesSchemasSecurityLevel.canParse(json)) {
    return ZonesSettingZonesSchemasSecurityLevel(ZonesSchemasSecurityLevel.fromJson(json));
  }
  if (ZonesServerSideExclude.canParse(json)) {
    return ZonesSettingZonesServerSideExclude(ZonesServerSideExclude.fromJson(json));
  }
  if (ZonesSha1Support.canParse(json)) {
    return ZonesSettingZonesSha1Support(ZonesSha1Support.fromJson(json));
  }
  if (ZonesSchemasSortQueryStringForCache.canParse(json)) {
    return ZonesSettingZonesSchemasSortQueryStringForCache(ZonesSchemasSortQueryStringForCache.fromJson(json));
  }
  if (ZonesSchemasSsl.canParse(json)) {
    return ZonesSettingZonesSchemasSsl(ZonesSchemasSsl.fromJson(json));
  }
  if (ZonesSslRecommender.canParse(json)) {
    return ZonesSettingZonesSslRecommender(ZonesSslRecommender.fromJson(json));
  }
  if (ZonesTls12Only.canParse(json)) {
    return ZonesSettingZonesTls12Only(ZonesTls12Only.fromJson(json));
  }
  if (ZonesTls13.canParse(json)) {
    return ZonesSettingZonesTls13(ZonesTls13.fromJson(json));
  }
  if (ZonesTlsClientAuth.canParse(json)) {
    return ZonesSettingZonesTlsClientAuth(ZonesTlsClientAuth.fromJson(json));
  }
  if (ZonesTransformations.canParse(json)) {
    return ZonesSettingZonesTransformations(ZonesTransformations.fromJson(json));
  }
  if (ZonesTransformationsAllowedOrigins.canParse(json)) {
    return ZonesSettingZonesTransformationsAllowedOrigins(ZonesTransformationsAllowedOrigins.fromJson(json));
  }
  if (ZonesSchemasTrueClientIpHeader.canParse(json)) {
    return ZonesSettingZonesSchemasTrueClientIpHeader(ZonesSchemasTrueClientIpHeader.fromJson(json));
  }
  if (ZonesSchemasWaf.canParse(json)) {
    return ZonesSettingZonesSchemasWaf(ZonesSchemasWaf.fromJson(json));
  }
  if (ZonesWebp.canParse(json)) {
    return ZonesSettingZonesWebp(ZonesWebp.fromJson(json));
  }
  if (ZonesWebsockets.canParse(json)) {
    return ZonesSettingZonesWebsockets(ZonesWebsockets.fromJson(json));
  }
  return ZonesSetting$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class ZonesSettingZones0rtt extends ZonesSetting {const ZonesSettingZones0rtt(this._value);

final Zones0rtt _value;

@override Zones0rtt get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZones0rtt && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zones0rtt($_value)'; } 
 }
@immutable final class ZonesSettingZonesAdvancedDdos extends ZonesSetting {const ZonesSettingZonesAdvancedDdos(this._value);

final ZonesAdvancedDdos _value;

@override ZonesAdvancedDdos get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesAdvancedDdos && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesAdvancedDdos($_value)'; } 
 }
@immutable final class ZonesSettingZonesCacheRulesAegis extends ZonesSetting {const ZonesSettingZonesCacheRulesAegis(this._value);

final ZonesCacheRulesAegis _value;

@override ZonesCacheRulesAegis get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesAegis && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesAegis($_value)'; } 
 }
@immutable final class ZonesSettingZonesAlwaysOnline extends ZonesSetting {const ZonesSettingZonesAlwaysOnline(this._value);

final ZonesAlwaysOnline _value;

@override ZonesAlwaysOnline get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesAlwaysOnline && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesAlwaysOnline($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasAlwaysUseHttps extends ZonesSetting {const ZonesSettingZonesSchemasAlwaysUseHttps(this._value);

final ZonesSchemasAlwaysUseHttps _value;

@override ZonesSchemasAlwaysUseHttps get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasAlwaysUseHttps && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasAlwaysUseHttps($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasAutomaticHttpsRewrites extends ZonesSetting {const ZonesSettingZonesSchemasAutomaticHttpsRewrites(this._value);

final ZonesSchemasAutomaticHttpsRewrites _value;

@override ZonesSchemasAutomaticHttpsRewrites get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasAutomaticHttpsRewrites && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasAutomaticHttpsRewrites($_value)'; } 
 }
@immutable final class ZonesSettingZonesBrotli extends ZonesSetting {const ZonesSettingZonesBrotli(this._value);

final ZonesBrotli _value;

@override ZonesBrotli get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesBrotli && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesBrotli($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasBrowserCacheTtl extends ZonesSetting {const ZonesSettingZonesSchemasBrowserCacheTtl(this._value);

final ZonesSchemasBrowserCacheTtl _value;

@override ZonesSchemasBrowserCacheTtl get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasBrowserCacheTtl && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasBrowserCacheTtl($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasBrowserCheck extends ZonesSetting {const ZonesSettingZonesSchemasBrowserCheck(this._value);

final ZonesSchemasBrowserCheck _value;

@override ZonesSchemasBrowserCheck get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasBrowserCheck && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasBrowserCheck($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasCacheLevel extends ZonesSetting {const ZonesSettingZonesSchemasCacheLevel(this._value);

final ZonesSchemasCacheLevel _value;

@override ZonesSchemasCacheLevel get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasCacheLevel && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasCacheLevel($_value)'; } 
 }
@immutable final class ZonesSettingZonesChallengeTtl extends ZonesSetting {const ZonesSettingZonesChallengeTtl(this._value);

final ZonesChallengeTtl _value;

@override ZonesChallengeTtl get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesChallengeTtl && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesChallengeTtl($_value)'; } 
 }
@immutable final class ZonesSettingZonesChinaNetworkEnabled extends ZonesSetting {const ZonesSettingZonesChinaNetworkEnabled(this._value);

final ZonesChinaNetworkEnabled _value;

@override ZonesChinaNetworkEnabled get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesChinaNetworkEnabled && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesChinaNetworkEnabled($_value)'; } 
 }
@immutable final class ZonesSettingZonesContentConverter extends ZonesSetting {const ZonesSettingZonesContentConverter(this._value);

final ZonesContentConverter _value;

@override ZonesContentConverter get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesContentConverter && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesContentConverter($_value)'; } 
 }
@immutable final class ZonesSettingZonesCiphers extends ZonesSetting {const ZonesSettingZonesCiphers(this._value);

final ZonesCiphers _value;

@override ZonesCiphers get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCiphers && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCiphers($_value)'; } 
 }
@immutable final class ZonesSettingZonesCnameFlattening extends ZonesSetting {const ZonesSettingZonesCnameFlattening(this._value);

final ZonesCnameFlattening _value;

@override ZonesCnameFlattening get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCnameFlattening && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCnameFlattening($_value)'; } 
 }
@immutable final class ZonesSettingZonesDevelopmentMode extends ZonesSetting {const ZonesSettingZonesDevelopmentMode(this._value);

final ZonesDevelopmentMode _value;

@override ZonesDevelopmentMode get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesDevelopmentMode && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesDevelopmentMode($_value)'; } 
 }
@immutable final class ZonesSettingZonesEarlyHints extends ZonesSetting {const ZonesSettingZonesEarlyHints(this._value);

final ZonesEarlyHints _value;

@override ZonesEarlyHints get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesEarlyHints && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesEarlyHints($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasEdgeCacheTtl extends ZonesSetting {const ZonesSettingZonesSchemasEdgeCacheTtl(this._value);

final ZonesSchemasEdgeCacheTtl _value;

@override ZonesSchemasEdgeCacheTtl get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasEdgeCacheTtl && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasEdgeCacheTtl($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasEmailObfuscation extends ZonesSetting {const ZonesSettingZonesSchemasEmailObfuscation(this._value);

final ZonesSchemasEmailObfuscation _value;

@override ZonesSchemasEmailObfuscation get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasEmailObfuscation && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasEmailObfuscation($_value)'; } 
 }
@immutable final class ZonesSettingZonesH2Prioritization extends ZonesSetting {const ZonesSettingZonesH2Prioritization(this._value);

final ZonesH2Prioritization _value;

@override ZonesH2Prioritization get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesH2Prioritization && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesH2Prioritization($_value)'; } 
 }
@immutable final class ZonesSettingZonesHotlinkProtection extends ZonesSetting {const ZonesSettingZonesHotlinkProtection(this._value);

final ZonesHotlinkProtection _value;

@override ZonesHotlinkProtection get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesHotlinkProtection && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesHotlinkProtection($_value)'; } 
 }
@immutable final class ZonesSettingZonesHttp2 extends ZonesSetting {const ZonesSettingZonesHttp2(this._value);

final ZonesHttp2 _value;

@override ZonesHttp2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesHttp2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesHttp2($_value)'; } 
 }
@immutable final class ZonesSettingZonesHttp3 extends ZonesSetting {const ZonesSettingZonesHttp3(this._value);

final ZonesHttp3 _value;

@override ZonesHttp3 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesHttp3 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesHttp3($_value)'; } 
 }
@immutable final class ZonesSettingZonesImageResizing extends ZonesSetting {const ZonesSettingZonesImageResizing(this._value);

final ZonesImageResizing _value;

@override ZonesImageResizing get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesImageResizing && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesImageResizing($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasIpGeolocation extends ZonesSetting {const ZonesSettingZonesSchemasIpGeolocation(this._value);

final ZonesSchemasIpGeolocation _value;

@override ZonesSchemasIpGeolocation get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasIpGeolocation && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasIpGeolocation($_value)'; } 
 }
@immutable final class ZonesSettingZonesIpv6 extends ZonesSetting {const ZonesSettingZonesIpv6(this._value);

final ZonesIpv6 _value;

@override ZonesIpv6 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesIpv6 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesIpv6($_value)'; } 
 }
@immutable final class ZonesSettingZonesMaxUpload extends ZonesSetting {const ZonesSettingZonesMaxUpload(this._value);

final ZonesMaxUpload _value;

@override ZonesMaxUpload get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesMaxUpload && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesMaxUpload($_value)'; } 
 }
@immutable final class ZonesSettingZonesMinTlsVersion extends ZonesSetting {const ZonesSettingZonesMinTlsVersion(this._value);

final ZonesMinTlsVersion _value;

@override ZonesMinTlsVersion get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesMinTlsVersion && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesMinTlsVersion($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasMirage extends ZonesSetting {const ZonesSettingZonesSchemasMirage(this._value);

final ZonesSchemasMirage _value;

@override ZonesSchemasMirage get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasMirage && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasMirage($_value)'; } 
 }
@immutable final class ZonesSettingZonesNel extends ZonesSetting {const ZonesSettingZonesNel(this._value);

final ZonesNel _value;

@override ZonesNel get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesNel && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesNel($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasOpportunisticEncryption extends ZonesSetting {const ZonesSettingZonesSchemasOpportunisticEncryption(this._value);

final ZonesSchemasOpportunisticEncryption _value;

@override ZonesSchemasOpportunisticEncryption get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasOpportunisticEncryption && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasOpportunisticEncryption($_value)'; } 
 }
@immutable final class ZonesSettingZonesOpportunisticOnion extends ZonesSetting {const ZonesSettingZonesOpportunisticOnion(this._value);

final ZonesOpportunisticOnion _value;

@override ZonesOpportunisticOnion get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesOpportunisticOnion && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesOpportunisticOnion($_value)'; } 
 }
@immutable final class ZonesSettingZonesOrangeToOrange extends ZonesSetting {const ZonesSettingZonesOrangeToOrange(this._value);

final ZonesOrangeToOrange _value;

@override ZonesOrangeToOrange get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesOrangeToOrange && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesOrangeToOrange($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasOriginErrorPagePassThru extends ZonesSetting {const ZonesSettingZonesSchemasOriginErrorPagePassThru(this._value);

final ZonesSchemasOriginErrorPagePassThru _value;

@override ZonesSchemasOriginErrorPagePassThru get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasOriginErrorPagePassThru && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasOriginErrorPagePassThru($_value)'; } 
 }
@immutable final class ZonesSettingZonesCacheRulesOriginH2MaxStreams extends ZonesSetting {const ZonesSettingZonesCacheRulesOriginH2MaxStreams(this._value);

final ZonesCacheRulesOriginH2MaxStreams _value;

@override ZonesCacheRulesOriginH2MaxStreams get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesOriginH2MaxStreams && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesOriginH2MaxStreams($_value)'; } 
 }
@immutable final class ZonesSettingZonesCacheRulesOriginMaxHttpVersion extends ZonesSetting {const ZonesSettingZonesCacheRulesOriginMaxHttpVersion(this._value);

final ZonesCacheRulesOriginMaxHttpVersion _value;

@override ZonesCacheRulesOriginMaxHttpVersion get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesCacheRulesOriginMaxHttpVersion && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesCacheRulesOriginMaxHttpVersion($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasPolish extends ZonesSetting {const ZonesSettingZonesSchemasPolish(this._value);

final ZonesSchemasPolish _value;

@override ZonesSchemasPolish get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasPolish && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasPolish($_value)'; } 
 }
@immutable final class ZonesSettingZonesPrefetchPreload extends ZonesSetting {const ZonesSettingZonesPrefetchPreload(this._value);

final ZonesPrefetchPreload _value;

@override ZonesPrefetchPreload get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesPrefetchPreload && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesPrefetchPreload($_value)'; } 
 }
@immutable final class ZonesSettingZonesPrivacyPass extends ZonesSetting {const ZonesSettingZonesPrivacyPass(this._value);

final ZonesPrivacyPass _value;

@override ZonesPrivacyPass get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesPrivacyPass && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesPrivacyPass($_value)'; } 
 }
@immutable final class ZonesSettingZonesProxyReadTimeout extends ZonesSetting {const ZonesSettingZonesProxyReadTimeout(this._value);

final ZonesProxyReadTimeout _value;

@override ZonesProxyReadTimeout get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesProxyReadTimeout && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesProxyReadTimeout($_value)'; } 
 }
@immutable final class ZonesSettingZonesPseudoIpv4 extends ZonesSetting {const ZonesSettingZonesPseudoIpv4(this._value);

final ZonesPseudoIpv4 _value;

@override ZonesPseudoIpv4 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesPseudoIpv4 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesPseudoIpv4($_value)'; } 
 }
@immutable final class ZonesSettingZonesRedirectsForAiTraining extends ZonesSetting {const ZonesSettingZonesRedirectsForAiTraining(this._value);

final ZonesRedirectsForAiTraining _value;

@override ZonesRedirectsForAiTraining get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesRedirectsForAiTraining && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesRedirectsForAiTraining($_value)'; } 
 }
@immutable final class ZonesSettingZonesReplaceInsecureJs extends ZonesSetting {const ZonesSettingZonesReplaceInsecureJs(this._value);

final ZonesReplaceInsecureJs _value;

@override ZonesReplaceInsecureJs get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesReplaceInsecureJs && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesReplaceInsecureJs($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasResponseBuffering extends ZonesSetting {const ZonesSettingZonesSchemasResponseBuffering(this._value);

final ZonesSchemasResponseBuffering _value;

@override ZonesSchemasResponseBuffering get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasResponseBuffering && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasResponseBuffering($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasRocketLoader extends ZonesSetting {const ZonesSettingZonesSchemasRocketLoader(this._value);

final ZonesSchemasRocketLoader _value;

@override ZonesSchemasRocketLoader get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasRocketLoader && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasRocketLoader($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasAutomaticPlatformOptimization extends ZonesSetting {const ZonesSettingZonesSchemasAutomaticPlatformOptimization(this._value);

final ZonesSchemasAutomaticPlatformOptimization _value;

@override ZonesSchemasAutomaticPlatformOptimization get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasAutomaticPlatformOptimization && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasAutomaticPlatformOptimization($_value)'; } 
 }
@immutable final class ZonesSettingZonesSecurityHeader extends ZonesSetting {const ZonesSettingZonesSecurityHeader(this._value);

final ZonesSecurityHeader _value;

@override ZonesSecurityHeader get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSecurityHeader && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSecurityHeader($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasSecurityLevel extends ZonesSetting {const ZonesSettingZonesSchemasSecurityLevel(this._value);

final ZonesSchemasSecurityLevel _value;

@override ZonesSchemasSecurityLevel get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasSecurityLevel && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasSecurityLevel($_value)'; } 
 }
@immutable final class ZonesSettingZonesServerSideExclude extends ZonesSetting {const ZonesSettingZonesServerSideExclude(this._value);

final ZonesServerSideExclude _value;

@override ZonesServerSideExclude get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesServerSideExclude && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesServerSideExclude($_value)'; } 
 }
@immutable final class ZonesSettingZonesSha1Support extends ZonesSetting {const ZonesSettingZonesSha1Support(this._value);

final ZonesSha1Support _value;

@override ZonesSha1Support get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSha1Support && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSha1Support($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasSortQueryStringForCache extends ZonesSetting {const ZonesSettingZonesSchemasSortQueryStringForCache(this._value);

final ZonesSchemasSortQueryStringForCache _value;

@override ZonesSchemasSortQueryStringForCache get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasSortQueryStringForCache && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasSortQueryStringForCache($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasSsl extends ZonesSetting {const ZonesSettingZonesSchemasSsl(this._value);

final ZonesSchemasSsl _value;

@override ZonesSchemasSsl get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasSsl && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasSsl($_value)'; } 
 }
@immutable final class ZonesSettingZonesSslRecommender extends ZonesSetting {const ZonesSettingZonesSslRecommender(this._value);

final ZonesSslRecommender _value;

@override ZonesSslRecommender get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSslRecommender && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSslRecommender($_value)'; } 
 }
@immutable final class ZonesSettingZonesTls12Only extends ZonesSetting {const ZonesSettingZonesTls12Only(this._value);

final ZonesTls12Only _value;

@override ZonesTls12Only get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesTls12Only && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesTls12Only($_value)'; } 
 }
@immutable final class ZonesSettingZonesTls13 extends ZonesSetting {const ZonesSettingZonesTls13(this._value);

final ZonesTls13 _value;

@override ZonesTls13 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesTls13 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesTls13($_value)'; } 
 }
@immutable final class ZonesSettingZonesTlsClientAuth extends ZonesSetting {const ZonesSettingZonesTlsClientAuth(this._value);

final ZonesTlsClientAuth _value;

@override ZonesTlsClientAuth get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesTlsClientAuth && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesTlsClientAuth($_value)'; } 
 }
@immutable final class ZonesSettingZonesTransformations extends ZonesSetting {const ZonesSettingZonesTransformations(this._value);

final ZonesTransformations _value;

@override ZonesTransformations get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesTransformations && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesTransformations($_value)'; } 
 }
@immutable final class ZonesSettingZonesTransformationsAllowedOrigins extends ZonesSetting {const ZonesSettingZonesTransformationsAllowedOrigins(this._value);

final ZonesTransformationsAllowedOrigins _value;

@override ZonesTransformationsAllowedOrigins get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesTransformationsAllowedOrigins && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesTransformationsAllowedOrigins($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasTrueClientIpHeader extends ZonesSetting {const ZonesSettingZonesSchemasTrueClientIpHeader(this._value);

final ZonesSchemasTrueClientIpHeader _value;

@override ZonesSchemasTrueClientIpHeader get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasTrueClientIpHeader && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasTrueClientIpHeader($_value)'; } 
 }
@immutable final class ZonesSettingZonesSchemasWaf extends ZonesSetting {const ZonesSettingZonesSchemasWaf(this._value);

final ZonesSchemasWaf _value;

@override ZonesSchemasWaf get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesSchemasWaf && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesSchemasWaf($_value)'; } 
 }
@immutable final class ZonesSettingZonesWebp extends ZonesSetting {const ZonesSettingZonesWebp(this._value);

final ZonesWebp _value;

@override ZonesWebp get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesWebp && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesWebp($_value)'; } 
 }
@immutable final class ZonesSettingZonesWebsockets extends ZonesSetting {const ZonesSettingZonesWebsockets(this._value);

final ZonesWebsockets _value;

@override ZonesWebsockets get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSettingZonesWebsockets && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.zonesWebsockets($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class ZonesSetting$Unknown extends ZonesSetting {const ZonesSetting$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSetting$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ZonesSetting.unknown($_value)'; } 
 }
