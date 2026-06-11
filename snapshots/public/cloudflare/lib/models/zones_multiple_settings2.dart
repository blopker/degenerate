// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones0rtt.dart';import 'zones_advanced_ddos.dart';import 'zones_always_online.dart';import 'zones_brotli.dart';import 'zones_cache_rules_aegis.dart';import 'zones_cache_rules_origin_h2_max_streams.dart';import 'zones_cache_rules_origin_max_http_version.dart';import 'zones_challenge_ttl.dart';import 'zones_china_network_enabled.dart';import 'zones_ciphers.dart';import 'zones_cname_flattening.dart';import 'zones_content_converter.dart';import 'zones_development_mode.dart';import 'zones_early_hints.dart';import 'zones_h2_prioritization.dart';import 'zones_hotlink_protection.dart';import 'zones_http2.dart';import 'zones_http3.dart';import 'zones_ipv6.dart';import 'zones_max_upload.dart';import 'zones_min_tls_version.dart';import 'zones_nel.dart';import 'zones_opportunistic_onion.dart';import 'zones_orange_to_orange.dart';import 'zones_prefetch_preload.dart';import 'zones_privacy_pass.dart';import 'zones_proxy_read_timeout.dart';import 'zones_pseudo_ipv4.dart';import 'zones_redirects_for_ai_training.dart';import 'zones_replace_insecure_js.dart';import 'zones_schemas_always_use_https.dart';import 'zones_schemas_automatic_https_rewrites.dart';import 'zones_schemas_automatic_platform_optimization.dart';import 'zones_schemas_browser_cache_ttl.dart';import 'zones_schemas_browser_check.dart';import 'zones_schemas_cache_level.dart';import 'zones_schemas_edge_cache_ttl.dart';import 'zones_schemas_email_obfuscation.dart';import 'zones_schemas_ip_geolocation.dart';import 'zones_schemas_mirage.dart';import 'zones_schemas_opportunistic_encryption.dart';import 'zones_schemas_origin_error_page_pass_thru.dart';import 'zones_schemas_polish.dart';import 'zones_schemas_response_buffering.dart';import 'zones_schemas_rocket_loader.dart';import 'zones_schemas_security_level.dart';import 'zones_schemas_sort_query_string_for_cache.dart';import 'zones_schemas_ssl.dart';import 'zones_schemas_true_client_ip_header.dart';import 'zones_schemas_waf.dart';import 'zones_security_header.dart';import 'zones_server_side_exclude.dart';import 'zones_sha1_support.dart';import 'zones_ssl_recommender.dart';import 'zones_tls12_only.dart';import 'zones_tls13.dart';import 'zones_tls_client_auth.dart';import 'zones_webp.dart';import 'zones_websockets.dart';final class ZonesMultipleSettings2 {const ZonesMultipleSettings2({this.zones0rtt, this.zonesAdvancedDdos, this.zonesCacheRulesAegis, this.zonesAlwaysOnline, this.zonesSchemasAlwaysUseHttps, this.zonesSchemasAutomaticHttpsRewrites, this.zonesBrotli, this.zonesSchemasBrowserCacheTtl, this.zonesSchemasBrowserCheck, this.zonesSchemasCacheLevel, this.zonesChallengeTtl, this.zonesChinaNetworkEnabled, this.zonesContentConverter, this.zonesCiphers, this.zonesCnameFlattening, this.zonesDevelopmentMode, this.zonesEarlyHints, this.zonesSchemasEdgeCacheTtl, this.zonesSchemasEmailObfuscation, this.zonesH2Prioritization, this.zonesHotlinkProtection, this.zonesHttp2, this.zonesHttp3, this.zonesSchemasIpGeolocation, this.zonesIpv6, this.zonesMaxUpload, this.zonesMinTlsVersion, this.zonesSchemasMirage, this.zonesNel, this.zonesSchemasOpportunisticEncryption, this.zonesOpportunisticOnion, this.zonesOrangeToOrange, this.zonesSchemasOriginErrorPagePassThru, this.zonesCacheRulesOriginH2MaxStreams, this.zonesCacheRulesOriginMaxHttpVersion, this.zonesSchemasPolish, this.zonesPrefetchPreload, this.zonesPrivacyPass, this.zonesProxyReadTimeout, this.zonesPseudoIpv4, this.zonesRedirectsForAiTraining, this.zonesReplaceInsecureJs, this.zonesSchemasResponseBuffering, this.zonesSchemasRocketLoader, this.zonesSchemasAutomaticPlatformOptimization, this.zonesSecurityHeader, this.zonesSchemasSecurityLevel, this.zonesServerSideExclude, this.zonesSha1Support, this.zonesSchemasSortQueryStringForCache, this.zonesSchemasSsl, this.zonesSslRecommender, this.zonesTls12Only, this.zonesTls13, this.zonesTlsClientAuth, this.zonesSchemasTrueClientIpHeader, this.zonesSchemasWaf, this.zonesWebp, this.zonesWebsockets, });

factory ZonesMultipleSettings2.fromJson(Map<String, dynamic> json) { return ZonesMultipleSettings2(
  zones0rtt: Zones0rtt.canParse(json) ? Zones0rtt.fromJson(json) : null,
  zonesAdvancedDdos: ZonesAdvancedDdos.canParse(json) ? ZonesAdvancedDdos.fromJson(json) : null,
  zonesCacheRulesAegis: ZonesCacheRulesAegis.canParse(json) ? ZonesCacheRulesAegis.fromJson(json) : null,
  zonesAlwaysOnline: ZonesAlwaysOnline.canParse(json) ? ZonesAlwaysOnline.fromJson(json) : null,
  zonesSchemasAlwaysUseHttps: ZonesSchemasAlwaysUseHttps.canParse(json) ? ZonesSchemasAlwaysUseHttps.fromJson(json) : null,
  zonesSchemasAutomaticHttpsRewrites: ZonesSchemasAutomaticHttpsRewrites.canParse(json) ? ZonesSchemasAutomaticHttpsRewrites.fromJson(json) : null,
  zonesBrotli: ZonesBrotli.canParse(json) ? ZonesBrotli.fromJson(json) : null,
  zonesSchemasBrowserCacheTtl: ZonesSchemasBrowserCacheTtl.canParse(json) ? ZonesSchemasBrowserCacheTtl.fromJson(json) : null,
  zonesSchemasBrowserCheck: ZonesSchemasBrowserCheck.canParse(json) ? ZonesSchemasBrowserCheck.fromJson(json) : null,
  zonesSchemasCacheLevel: ZonesSchemasCacheLevel.canParse(json) ? ZonesSchemasCacheLevel.fromJson(json) : null,
  zonesChallengeTtl: ZonesChallengeTtl.canParse(json) ? ZonesChallengeTtl.fromJson(json) : null,
  zonesChinaNetworkEnabled: ZonesChinaNetworkEnabled.canParse(json) ? ZonesChinaNetworkEnabled.fromJson(json) : null,
  zonesContentConverter: ZonesContentConverter.canParse(json) ? ZonesContentConverter.fromJson(json) : null,
  zonesCiphers: ZonesCiphers.canParse(json) ? ZonesCiphers.fromJson(json) : null,
  zonesCnameFlattening: ZonesCnameFlattening.canParse(json) ? ZonesCnameFlattening.fromJson(json) : null,
  zonesDevelopmentMode: ZonesDevelopmentMode.canParse(json) ? ZonesDevelopmentMode.fromJson(json) : null,
  zonesEarlyHints: ZonesEarlyHints.canParse(json) ? ZonesEarlyHints.fromJson(json) : null,
  zonesSchemasEdgeCacheTtl: ZonesSchemasEdgeCacheTtl.canParse(json) ? ZonesSchemasEdgeCacheTtl.fromJson(json) : null,
  zonesSchemasEmailObfuscation: ZonesSchemasEmailObfuscation.canParse(json) ? ZonesSchemasEmailObfuscation.fromJson(json) : null,
  zonesH2Prioritization: ZonesH2Prioritization.canParse(json) ? ZonesH2Prioritization.fromJson(json) : null,
  zonesHotlinkProtection: ZonesHotlinkProtection.canParse(json) ? ZonesHotlinkProtection.fromJson(json) : null,
  zonesHttp2: ZonesHttp2.canParse(json) ? ZonesHttp2.fromJson(json) : null,
  zonesHttp3: ZonesHttp3.canParse(json) ? ZonesHttp3.fromJson(json) : null,
  zonesSchemasIpGeolocation: ZonesSchemasIpGeolocation.canParse(json) ? ZonesSchemasIpGeolocation.fromJson(json) : null,
  zonesIpv6: ZonesIpv6.canParse(json) ? ZonesIpv6.fromJson(json) : null,
  zonesMaxUpload: ZonesMaxUpload.canParse(json) ? ZonesMaxUpload.fromJson(json) : null,
  zonesMinTlsVersion: ZonesMinTlsVersion.canParse(json) ? ZonesMinTlsVersion.fromJson(json) : null,
  zonesSchemasMirage: ZonesSchemasMirage.canParse(json) ? ZonesSchemasMirage.fromJson(json) : null,
  zonesNel: ZonesNel.canParse(json) ? ZonesNel.fromJson(json) : null,
  zonesSchemasOpportunisticEncryption: ZonesSchemasOpportunisticEncryption.canParse(json) ? ZonesSchemasOpportunisticEncryption.fromJson(json) : null,
  zonesOpportunisticOnion: ZonesOpportunisticOnion.canParse(json) ? ZonesOpportunisticOnion.fromJson(json) : null,
  zonesOrangeToOrange: ZonesOrangeToOrange.canParse(json) ? ZonesOrangeToOrange.fromJson(json) : null,
  zonesSchemasOriginErrorPagePassThru: ZonesSchemasOriginErrorPagePassThru.canParse(json) ? ZonesSchemasOriginErrorPagePassThru.fromJson(json) : null,
  zonesCacheRulesOriginH2MaxStreams: ZonesCacheRulesOriginH2MaxStreams.canParse(json) ? ZonesCacheRulesOriginH2MaxStreams.fromJson(json) : null,
  zonesCacheRulesOriginMaxHttpVersion: ZonesCacheRulesOriginMaxHttpVersion.canParse(json) ? ZonesCacheRulesOriginMaxHttpVersion.fromJson(json) : null,
  zonesSchemasPolish: ZonesSchemasPolish.canParse(json) ? ZonesSchemasPolish.fromJson(json) : null,
  zonesPrefetchPreload: ZonesPrefetchPreload.canParse(json) ? ZonesPrefetchPreload.fromJson(json) : null,
  zonesPrivacyPass: ZonesPrivacyPass.canParse(json) ? ZonesPrivacyPass.fromJson(json) : null,
  zonesProxyReadTimeout: ZonesProxyReadTimeout.canParse(json) ? ZonesProxyReadTimeout.fromJson(json) : null,
  zonesPseudoIpv4: ZonesPseudoIpv4.canParse(json) ? ZonesPseudoIpv4.fromJson(json) : null,
  zonesRedirectsForAiTraining: ZonesRedirectsForAiTraining.canParse(json) ? ZonesRedirectsForAiTraining.fromJson(json) : null,
  zonesReplaceInsecureJs: ZonesReplaceInsecureJs.canParse(json) ? ZonesReplaceInsecureJs.fromJson(json) : null,
  zonesSchemasResponseBuffering: ZonesSchemasResponseBuffering.canParse(json) ? ZonesSchemasResponseBuffering.fromJson(json) : null,
  zonesSchemasRocketLoader: ZonesSchemasRocketLoader.canParse(json) ? ZonesSchemasRocketLoader.fromJson(json) : null,
  zonesSchemasAutomaticPlatformOptimization: ZonesSchemasAutomaticPlatformOptimization.canParse(json) ? ZonesSchemasAutomaticPlatformOptimization.fromJson(json) : null,
  zonesSecurityHeader: ZonesSecurityHeader.canParse(json) ? ZonesSecurityHeader.fromJson(json) : null,
  zonesSchemasSecurityLevel: ZonesSchemasSecurityLevel.canParse(json) ? ZonesSchemasSecurityLevel.fromJson(json) : null,
  zonesServerSideExclude: ZonesServerSideExclude.canParse(json) ? ZonesServerSideExclude.fromJson(json) : null,
  zonesSha1Support: ZonesSha1Support.canParse(json) ? ZonesSha1Support.fromJson(json) : null,
  zonesSchemasSortQueryStringForCache: ZonesSchemasSortQueryStringForCache.canParse(json) ? ZonesSchemasSortQueryStringForCache.fromJson(json) : null,
  zonesSchemasSsl: ZonesSchemasSsl.canParse(json) ? ZonesSchemasSsl.fromJson(json) : null,
  zonesSslRecommender: ZonesSslRecommender.canParse(json) ? ZonesSslRecommender.fromJson(json) : null,
  zonesTls12Only: ZonesTls12Only.canParse(json) ? ZonesTls12Only.fromJson(json) : null,
  zonesTls13: ZonesTls13.canParse(json) ? ZonesTls13.fromJson(json) : null,
  zonesTlsClientAuth: ZonesTlsClientAuth.canParse(json) ? ZonesTlsClientAuth.fromJson(json) : null,
  zonesSchemasTrueClientIpHeader: ZonesSchemasTrueClientIpHeader.canParse(json) ? ZonesSchemasTrueClientIpHeader.fromJson(json) : null,
  zonesSchemasWaf: ZonesSchemasWaf.canParse(json) ? ZonesSchemasWaf.fromJson(json) : null,
  zonesWebp: ZonesWebp.canParse(json) ? ZonesWebp.fromJson(json) : null,
  zonesWebsockets: ZonesWebsockets.canParse(json) ? ZonesWebsockets.fromJson(json) : null,
); }

final Zones0rtt? zones0rtt;

final ZonesAdvancedDdos? zonesAdvancedDdos;

final ZonesCacheRulesAegis? zonesCacheRulesAegis;

final ZonesAlwaysOnline? zonesAlwaysOnline;

final ZonesSchemasAlwaysUseHttps? zonesSchemasAlwaysUseHttps;

final ZonesSchemasAutomaticHttpsRewrites? zonesSchemasAutomaticHttpsRewrites;

final ZonesBrotli? zonesBrotli;

final ZonesSchemasBrowserCacheTtl? zonesSchemasBrowserCacheTtl;

final ZonesSchemasBrowserCheck? zonesSchemasBrowserCheck;

final ZonesSchemasCacheLevel? zonesSchemasCacheLevel;

final ZonesChallengeTtl? zonesChallengeTtl;

final ZonesChinaNetworkEnabled? zonesChinaNetworkEnabled;

final ZonesContentConverter? zonesContentConverter;

final ZonesCiphers? zonesCiphers;

final ZonesCnameFlattening? zonesCnameFlattening;

final ZonesDevelopmentMode? zonesDevelopmentMode;

final ZonesEarlyHints? zonesEarlyHints;

final ZonesSchemasEdgeCacheTtl? zonesSchemasEdgeCacheTtl;

final ZonesSchemasEmailObfuscation? zonesSchemasEmailObfuscation;

final ZonesH2Prioritization? zonesH2Prioritization;

final ZonesHotlinkProtection? zonesHotlinkProtection;

final ZonesHttp2? zonesHttp2;

final ZonesHttp3? zonesHttp3;

final ZonesSchemasIpGeolocation? zonesSchemasIpGeolocation;

final ZonesIpv6? zonesIpv6;

final ZonesMaxUpload? zonesMaxUpload;

final ZonesMinTlsVersion? zonesMinTlsVersion;

final ZonesSchemasMirage? zonesSchemasMirage;

final ZonesNel? zonesNel;

final ZonesSchemasOpportunisticEncryption? zonesSchemasOpportunisticEncryption;

final ZonesOpportunisticOnion? zonesOpportunisticOnion;

final ZonesOrangeToOrange? zonesOrangeToOrange;

final ZonesSchemasOriginErrorPagePassThru? zonesSchemasOriginErrorPagePassThru;

final ZonesCacheRulesOriginH2MaxStreams? zonesCacheRulesOriginH2MaxStreams;

final ZonesCacheRulesOriginMaxHttpVersion? zonesCacheRulesOriginMaxHttpVersion;

final ZonesSchemasPolish? zonesSchemasPolish;

final ZonesPrefetchPreload? zonesPrefetchPreload;

final ZonesPrivacyPass? zonesPrivacyPass;

final ZonesProxyReadTimeout? zonesProxyReadTimeout;

final ZonesPseudoIpv4? zonesPseudoIpv4;

final ZonesRedirectsForAiTraining? zonesRedirectsForAiTraining;

final ZonesReplaceInsecureJs? zonesReplaceInsecureJs;

final ZonesSchemasResponseBuffering? zonesSchemasResponseBuffering;

final ZonesSchemasRocketLoader? zonesSchemasRocketLoader;

final ZonesSchemasAutomaticPlatformOptimization? zonesSchemasAutomaticPlatformOptimization;

final ZonesSecurityHeader? zonesSecurityHeader;

final ZonesSchemasSecurityLevel? zonesSchemasSecurityLevel;

final ZonesServerSideExclude? zonesServerSideExclude;

final ZonesSha1Support? zonesSha1Support;

final ZonesSchemasSortQueryStringForCache? zonesSchemasSortQueryStringForCache;

final ZonesSchemasSsl? zonesSchemasSsl;

final ZonesSslRecommender? zonesSslRecommender;

final ZonesTls12Only? zonesTls12Only;

final ZonesTls13? zonesTls13;

final ZonesTlsClientAuth? zonesTlsClientAuth;

final ZonesSchemasTrueClientIpHeader? zonesSchemasTrueClientIpHeader;

final ZonesSchemasWaf? zonesSchemasWaf;

final ZonesWebp? zonesWebp;

final ZonesWebsockets? zonesWebsockets;

/// At least one variant must be present.
bool get isValid { return zones0rtt != null || zonesAdvancedDdos != null || zonesCacheRulesAegis != null || zonesAlwaysOnline != null || zonesSchemasAlwaysUseHttps != null || zonesSchemasAutomaticHttpsRewrites != null || zonesBrotli != null || zonesSchemasBrowserCacheTtl != null || zonesSchemasBrowserCheck != null || zonesSchemasCacheLevel != null || zonesChallengeTtl != null || zonesChinaNetworkEnabled != null || zonesContentConverter != null || zonesCiphers != null || zonesCnameFlattening != null || zonesDevelopmentMode != null || zonesEarlyHints != null || zonesSchemasEdgeCacheTtl != null || zonesSchemasEmailObfuscation != null || zonesH2Prioritization != null || zonesHotlinkProtection != null || zonesHttp2 != null || zonesHttp3 != null || zonesSchemasIpGeolocation != null || zonesIpv6 != null || zonesMaxUpload != null || zonesMinTlsVersion != null || zonesSchemasMirage != null || zonesNel != null || zonesSchemasOpportunisticEncryption != null || zonesOpportunisticOnion != null || zonesOrangeToOrange != null || zonesSchemasOriginErrorPagePassThru != null || zonesCacheRulesOriginH2MaxStreams != null || zonesCacheRulesOriginMaxHttpVersion != null || zonesSchemasPolish != null || zonesPrefetchPreload != null || zonesPrivacyPass != null || zonesProxyReadTimeout != null || zonesPseudoIpv4 != null || zonesRedirectsForAiTraining != null || zonesReplaceInsecureJs != null || zonesSchemasResponseBuffering != null || zonesSchemasRocketLoader != null || zonesSchemasAutomaticPlatformOptimization != null || zonesSecurityHeader != null || zonesSchemasSecurityLevel != null || zonesServerSideExclude != null || zonesSha1Support != null || zonesSchemasSortQueryStringForCache != null || zonesSchemasSsl != null || zonesSslRecommender != null || zonesTls12Only != null || zonesTls13 != null || zonesTlsClientAuth != null || zonesSchemasTrueClientIpHeader != null || zonesSchemasWaf != null || zonesWebp != null || zonesWebsockets != null; } 
Map<String, dynamic> toJson() { return {
  ...?zones0rtt?.toJson(),
  ...?zonesAdvancedDdos?.toJson(),
  ...?zonesCacheRulesAegis?.toJson(),
  ...?zonesAlwaysOnline?.toJson(),
  ...?zonesSchemasAlwaysUseHttps?.toJson(),
  ...?zonesSchemasAutomaticHttpsRewrites?.toJson(),
  ...?zonesBrotli?.toJson(),
  ...?zonesSchemasBrowserCacheTtl?.toJson(),
  ...?zonesSchemasBrowserCheck?.toJson(),
  ...?zonesSchemasCacheLevel?.toJson(),
  ...?zonesChallengeTtl?.toJson(),
  ...?zonesChinaNetworkEnabled?.toJson(),
  ...?zonesContentConverter?.toJson(),
  ...?zonesCiphers?.toJson(),
  ...?zonesCnameFlattening?.toJson(),
  ...?zonesDevelopmentMode?.toJson(),
  ...?zonesEarlyHints?.toJson(),
  ...?zonesSchemasEdgeCacheTtl?.toJson(),
  ...?zonesSchemasEmailObfuscation?.toJson(),
  ...?zonesH2Prioritization?.toJson(),
  ...?zonesHotlinkProtection?.toJson(),
  ...?zonesHttp2?.toJson(),
  ...?zonesHttp3?.toJson(),
  ...?zonesSchemasIpGeolocation?.toJson(),
  ...?zonesIpv6?.toJson(),
  ...?zonesMaxUpload?.toJson(),
  ...?zonesMinTlsVersion?.toJson(),
  ...?zonesSchemasMirage?.toJson(),
  ...?zonesNel?.toJson(),
  ...?zonesSchemasOpportunisticEncryption?.toJson(),
  ...?zonesOpportunisticOnion?.toJson(),
  ...?zonesOrangeToOrange?.toJson(),
  ...?zonesSchemasOriginErrorPagePassThru?.toJson(),
  ...?zonesCacheRulesOriginH2MaxStreams?.toJson(),
  ...?zonesCacheRulesOriginMaxHttpVersion?.toJson(),
  ...?zonesSchemasPolish?.toJson(),
  ...?zonesPrefetchPreload?.toJson(),
  ...?zonesPrivacyPass?.toJson(),
  ...?zonesProxyReadTimeout?.toJson(),
  ...?zonesPseudoIpv4?.toJson(),
  ...?zonesRedirectsForAiTraining?.toJson(),
  ...?zonesReplaceInsecureJs?.toJson(),
  ...?zonesSchemasResponseBuffering?.toJson(),
  ...?zonesSchemasRocketLoader?.toJson(),
  ...?zonesSchemasAutomaticPlatformOptimization?.toJson(),
  ...?zonesSecurityHeader?.toJson(),
  ...?zonesSchemasSecurityLevel?.toJson(),
  ...?zonesServerSideExclude?.toJson(),
  ...?zonesSha1Support?.toJson(),
  ...?zonesSchemasSortQueryStringForCache?.toJson(),
  ...?zonesSchemasSsl?.toJson(),
  ...?zonesSslRecommender?.toJson(),
  ...?zonesTls12Only?.toJson(),
  ...?zonesTls13?.toJson(),
  ...?zonesTlsClientAuth?.toJson(),
  ...?zonesSchemasTrueClientIpHeader?.toJson(),
  ...?zonesSchemasWaf?.toJson(),
  ...?zonesWebp?.toJson(),
  ...?zonesWebsockets?.toJson(),
}; } 
 }
