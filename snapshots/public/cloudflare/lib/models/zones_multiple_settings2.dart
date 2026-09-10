// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0rtt.dart';import 'zones_advanced_ddos.dart';import 'zones_always_online.dart';import 'zones_brotli.dart';import 'zones_cache_rules_aegis.dart';import 'zones_cache_rules_origin_h2_max_streams.dart';import 'zones_cache_rules_origin_max_http_version.dart';import 'zones_challenge_ttl.dart';import 'zones_china_network_enabled.dart';import 'zones_ciphers.dart';import 'zones_cname_flattening.dart';import 'zones_content_converter.dart';import 'zones_development_mode.dart';import 'zones_early_hints.dart';import 'zones_h2_prioritization.dart';import 'zones_hotlink_protection.dart';import 'zones_http2.dart';import 'zones_http3.dart';import 'zones_ipv6.dart';import 'zones_max_upload.dart';import 'zones_min_tls_version.dart';import 'zones_nel.dart';import 'zones_opportunistic_onion.dart';import 'zones_orange_to_orange.dart';import 'zones_prefetch_preload.dart';import 'zones_privacy_pass.dart';import 'zones_proxy_read_timeout.dart';import 'zones_pseudo_ipv4.dart';import 'zones_redirects_for_ai_training.dart';import 'zones_replace_insecure_js.dart';import 'zones_schemas_always_use_https.dart';import 'zones_schemas_automatic_https_rewrites.dart';import 'zones_schemas_automatic_platform_optimization.dart';import 'zones_schemas_browser_cache_ttl.dart';import 'zones_schemas_browser_check.dart';import 'zones_schemas_cache_level.dart';import 'zones_schemas_edge_cache_ttl.dart';import 'zones_schemas_email_obfuscation.dart';import 'zones_schemas_ip_geolocation.dart';import 'zones_schemas_mirage.dart';import 'zones_schemas_opportunistic_encryption.dart';import 'zones_schemas_origin_error_page_pass_thru.dart';import 'zones_schemas_polish.dart';import 'zones_schemas_response_buffering.dart';import 'zones_schemas_rocket_loader.dart';import 'zones_schemas_security_level.dart';import 'zones_schemas_sort_query_string_for_cache.dart';import 'zones_schemas_ssl.dart';import 'zones_schemas_true_client_ip_header.dart';import 'zones_schemas_waf.dart';import 'zones_security_header.dart';import 'zones_server_side_exclude.dart';import 'zones_sha1_support.dart';import 'zones_ssl_recommender.dart';import 'zones_tls12_only.dart';import 'zones_tls13.dart';import 'zones_tls_client_auth.dart';import 'zones_webp.dart';import 'zones_websockets.dart';
@immutable
final class ZonesMultipleSettings2 {
  const ZonesMultipleSettings2({this.zones0rtt = const Omittable.absent(),
this.zonesAdvancedDdos = const Omittable.absent(),
this.zonesCacheRulesAegis = const Omittable.absent(),
this.zonesAlwaysOnline = const Omittable.absent(),
this.zonesSchemasAlwaysUseHttps = const Omittable.absent(),
this.zonesSchemasAutomaticHttpsRewrites = const Omittable.absent(),
this.zonesBrotli = const Omittable.absent(),
this.zonesSchemasBrowserCacheTtl = const Omittable.absent(),
this.zonesSchemasBrowserCheck = const Omittable.absent(),
this.zonesSchemasCacheLevel = const Omittable.absent(),
this.zonesChallengeTtl = const Omittable.absent(),
this.zonesChinaNetworkEnabled = const Omittable.absent(),
this.zonesContentConverter = const Omittable.absent(),
this.zonesCiphers = const Omittable.absent(),
this.zonesCnameFlattening = const Omittable.absent(),
this.zonesDevelopmentMode = const Omittable.absent(),
this.zonesEarlyHints = const Omittable.absent(),
this.zonesSchemasEdgeCacheTtl = const Omittable.absent(),
this.zonesSchemasEmailObfuscation = const Omittable.absent(),
this.zonesH2Prioritization = const Omittable.absent(),
this.zonesHotlinkProtection = const Omittable.absent(),
this.zonesHttp2 = const Omittable.absent(),
this.zonesHttp3 = const Omittable.absent(),
this.zonesSchemasIpGeolocation = const Omittable.absent(),
this.zonesIpv6 = const Omittable.absent(),
this.zonesMaxUpload = const Omittable.absent(),
this.zonesMinTlsVersion = const Omittable.absent(),
this.zonesSchemasMirage = const Omittable.absent(),
this.zonesNel = const Omittable.absent(),
this.zonesSchemasOpportunisticEncryption = const Omittable.absent(),
this.zonesOpportunisticOnion = const Omittable.absent(),
this.zonesOrangeToOrange = const Omittable.absent(),
this.zonesSchemasOriginErrorPagePassThru = const Omittable.absent(),
this.zonesCacheRulesOriginH2MaxStreams = const Omittable.absent(),
this.zonesCacheRulesOriginMaxHttpVersion = const Omittable.absent(),
this.zonesSchemasPolish = const Omittable.absent(),
this.zonesPrefetchPreload = const Omittable.absent(),
this.zonesPrivacyPass = const Omittable.absent(),
this.zonesProxyReadTimeout = const Omittable.absent(),
this.zonesPseudoIpv4 = const Omittable.absent(),
this.zonesRedirectsForAiTraining = const Omittable.absent(),
this.zonesReplaceInsecureJs = const Omittable.absent(),
this.zonesSchemasResponseBuffering = const Omittable.absent(),
this.zonesSchemasRocketLoader = const Omittable.absent(),
this.zonesSchemasAutomaticPlatformOptimization = const Omittable.absent(),
this.zonesSecurityHeader = const Omittable.absent(),
this.zonesSchemasSecurityLevel = const Omittable.absent(),
this.zonesServerSideExclude = const Omittable.absent(),
this.zonesSha1Support = const Omittable.absent(),
this.zonesSchemasSortQueryStringForCache = const Omittable.absent(),
this.zonesSchemasSsl = const Omittable.absent(),
this.zonesSslRecommender = const Omittable.absent(),
this.zonesTls12Only = const Omittable.absent(),
this.zonesTls13 = const Omittable.absent(),
this.zonesTlsClientAuth = const Omittable.absent(),
this.zonesSchemasTrueClientIpHeader = const Omittable.absent(),
this.zonesSchemasWaf = const Omittable.absent(),
this.zonesWebp = const Omittable.absent(),
this.zonesWebsockets = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZonesMultipleSettings2._({required this.rawValue, required this.zones0rtt,
required this.zonesAdvancedDdos,
required this.zonesCacheRulesAegis,
required this.zonesAlwaysOnline,
required this.zonesSchemasAlwaysUseHttps,
required this.zonesSchemasAutomaticHttpsRewrites,
required this.zonesBrotli,
required this.zonesSchemasBrowserCacheTtl,
required this.zonesSchemasBrowserCheck,
required this.zonesSchemasCacheLevel,
required this.zonesChallengeTtl,
required this.zonesChinaNetworkEnabled,
required this.zonesContentConverter,
required this.zonesCiphers,
required this.zonesCnameFlattening,
required this.zonesDevelopmentMode,
required this.zonesEarlyHints,
required this.zonesSchemasEdgeCacheTtl,
required this.zonesSchemasEmailObfuscation,
required this.zonesH2Prioritization,
required this.zonesHotlinkProtection,
required this.zonesHttp2,
required this.zonesHttp3,
required this.zonesSchemasIpGeolocation,
required this.zonesIpv6,
required this.zonesMaxUpload,
required this.zonesMinTlsVersion,
required this.zonesSchemasMirage,
required this.zonesNel,
required this.zonesSchemasOpportunisticEncryption,
required this.zonesOpportunisticOnion,
required this.zonesOrangeToOrange,
required this.zonesSchemasOriginErrorPagePassThru,
required this.zonesCacheRulesOriginH2MaxStreams,
required this.zonesCacheRulesOriginMaxHttpVersion,
required this.zonesSchemasPolish,
required this.zonesPrefetchPreload,
required this.zonesPrivacyPass,
required this.zonesProxyReadTimeout,
required this.zonesPseudoIpv4,
required this.zonesRedirectsForAiTraining,
required this.zonesReplaceInsecureJs,
required this.zonesSchemasResponseBuffering,
required this.zonesSchemasRocketLoader,
required this.zonesSchemasAutomaticPlatformOptimization,
required this.zonesSecurityHeader,
required this.zonesSchemasSecurityLevel,
required this.zonesServerSideExclude,
required this.zonesSha1Support,
required this.zonesSchemasSortQueryStringForCache,
required this.zonesSchemasSsl,
required this.zonesSslRecommender,
required this.zonesTls12Only,
required this.zonesTls13,
required this.zonesTlsClientAuth,
required this.zonesSchemasTrueClientIpHeader,
required this.zonesSchemasWaf,
required this.zonesWebp,
required this.zonesWebsockets,});
  factory ZonesMultipleSettings2.fromJson(Object? json) => ZonesMultipleSettings2._(
    rawValue: Omittable(json),
    zones0rtt: parseAnyOfVariant<Zones0rtt>(json, (value) => Zones0rtt.fromJson(value! as Map<String, dynamic>)),
zonesAdvancedDdos: parseAnyOfVariant<ZonesAdvancedDdos>(json, (value) => ZonesAdvancedDdos.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesAegis: parseAnyOfVariant<ZonesCacheRulesAegis>(json, (value) => ZonesCacheRulesAegis.fromJson(value! as Map<String, dynamic>)),
zonesAlwaysOnline: parseAnyOfVariant<ZonesAlwaysOnline>(json, (value) => ZonesAlwaysOnline.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAlwaysUseHttps: parseAnyOfVariant<ZonesSchemasAlwaysUseHttps>(json, (value) => ZonesSchemasAlwaysUseHttps.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAutomaticHttpsRewrites: parseAnyOfVariant<ZonesSchemasAutomaticHttpsRewrites>(json, (value) => ZonesSchemasAutomaticHttpsRewrites.fromJson(value! as Map<String, dynamic>)),
zonesBrotli: parseAnyOfVariant<ZonesBrotli>(json, (value) => ZonesBrotli.fromJson(value! as Map<String, dynamic>)),
zonesSchemasBrowserCacheTtl: parseAnyOfVariant<ZonesSchemasBrowserCacheTtl>(json, (value) => ZonesSchemasBrowserCacheTtl.fromJson(value! as Map<String, dynamic>)),
zonesSchemasBrowserCheck: parseAnyOfVariant<ZonesSchemasBrowserCheck>(json, (value) => ZonesSchemasBrowserCheck.fromJson(value! as Map<String, dynamic>)),
zonesSchemasCacheLevel: parseAnyOfVariant<ZonesSchemasCacheLevel>(json, (value) => ZonesSchemasCacheLevel.fromJson(value! as Map<String, dynamic>)),
zonesChallengeTtl: parseAnyOfVariant<ZonesChallengeTtl>(json, (value) => ZonesChallengeTtl.fromJson(value! as Map<String, dynamic>)),
zonesChinaNetworkEnabled: parseAnyOfVariant<ZonesChinaNetworkEnabled>(json, (value) => ZonesChinaNetworkEnabled.fromJson(value! as Map<String, dynamic>)),
zonesContentConverter: parseAnyOfVariant<ZonesContentConverter>(json, (value) => ZonesContentConverter.fromJson(value! as Map<String, dynamic>)),
zonesCiphers: parseAnyOfVariant<ZonesCiphers>(json, (value) => ZonesCiphers.fromJson(value! as Map<String, dynamic>)),
zonesCnameFlattening: parseAnyOfVariant<ZonesCnameFlattening>(json, (value) => ZonesCnameFlattening.fromJson(value! as Map<String, dynamic>)),
zonesDevelopmentMode: parseAnyOfVariant<ZonesDevelopmentMode>(json, (value) => ZonesDevelopmentMode.fromJson(value! as Map<String, dynamic>)),
zonesEarlyHints: parseAnyOfVariant<ZonesEarlyHints>(json, (value) => ZonesEarlyHints.fromJson(value! as Map<String, dynamic>)),
zonesSchemasEdgeCacheTtl: parseAnyOfVariant<ZonesSchemasEdgeCacheTtl>(json, (value) => ZonesSchemasEdgeCacheTtl.fromJson(value! as Map<String, dynamic>)),
zonesSchemasEmailObfuscation: parseAnyOfVariant<ZonesSchemasEmailObfuscation>(json, (value) => ZonesSchemasEmailObfuscation.fromJson(value! as Map<String, dynamic>)),
zonesH2Prioritization: parseAnyOfVariant<ZonesH2Prioritization>(json, (value) => ZonesH2Prioritization.fromJson(value! as Map<String, dynamic>)),
zonesHotlinkProtection: parseAnyOfVariant<ZonesHotlinkProtection>(json, (value) => ZonesHotlinkProtection.fromJson(value! as Map<String, dynamic>)),
zonesHttp2: parseAnyOfVariant<ZonesHttp2>(json, (value) => ZonesHttp2.fromJson(value! as Map<String, dynamic>)),
zonesHttp3: parseAnyOfVariant<ZonesHttp3>(json, (value) => ZonesHttp3.fromJson(value! as Map<String, dynamic>)),
zonesSchemasIpGeolocation: parseAnyOfVariant<ZonesSchemasIpGeolocation>(json, (value) => ZonesSchemasIpGeolocation.fromJson(value! as Map<String, dynamic>)),
zonesIpv6: parseAnyOfVariant<ZonesIpv6>(json, (value) => ZonesIpv6.fromJson(value! as Map<String, dynamic>)),
zonesMaxUpload: parseAnyOfVariant<ZonesMaxUpload>(json, (value) => ZonesMaxUpload.fromJson(value! as Map<String, dynamic>)),
zonesMinTlsVersion: parseAnyOfVariant<ZonesMinTlsVersion>(json, (value) => ZonesMinTlsVersion.fromJson(value! as Map<String, dynamic>)),
zonesSchemasMirage: parseAnyOfVariant<ZonesSchemasMirage>(json, (value) => ZonesSchemasMirage.fromJson(value! as Map<String, dynamic>)),
zonesNel: parseAnyOfVariant<ZonesNel>(json, (value) => ZonesNel.fromJson(value! as Map<String, dynamic>)),
zonesSchemasOpportunisticEncryption: parseAnyOfVariant<ZonesSchemasOpportunisticEncryption>(json, (value) => ZonesSchemasOpportunisticEncryption.fromJson(value! as Map<String, dynamic>)),
zonesOpportunisticOnion: parseAnyOfVariant<ZonesOpportunisticOnion>(json, (value) => ZonesOpportunisticOnion.fromJson(value! as Map<String, dynamic>)),
zonesOrangeToOrange: parseAnyOfVariant<ZonesOrangeToOrange>(json, (value) => ZonesOrangeToOrange.fromJson(value! as Map<String, dynamic>)),
zonesSchemasOriginErrorPagePassThru: parseAnyOfVariant<ZonesSchemasOriginErrorPagePassThru>(json, (value) => ZonesSchemasOriginErrorPagePassThru.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesOriginH2MaxStreams: parseAnyOfVariant<ZonesCacheRulesOriginH2MaxStreams>(json, (value) => ZonesCacheRulesOriginH2MaxStreams.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesOriginMaxHttpVersion: parseAnyOfVariant<ZonesCacheRulesOriginMaxHttpVersion>(json, (value) => ZonesCacheRulesOriginMaxHttpVersion.fromJson(value! as Map<String, dynamic>)),
zonesSchemasPolish: parseAnyOfVariant<ZonesSchemasPolish>(json, (value) => ZonesSchemasPolish.fromJson(value! as Map<String, dynamic>)),
zonesPrefetchPreload: parseAnyOfVariant<ZonesPrefetchPreload>(json, (value) => ZonesPrefetchPreload.fromJson(value! as Map<String, dynamic>)),
zonesPrivacyPass: parseAnyOfVariant<ZonesPrivacyPass>(json, (value) => ZonesPrivacyPass.fromJson(value! as Map<String, dynamic>)),
zonesProxyReadTimeout: parseAnyOfVariant<ZonesProxyReadTimeout>(json, (value) => ZonesProxyReadTimeout.fromJson(value! as Map<String, dynamic>)),
zonesPseudoIpv4: parseAnyOfVariant<ZonesPseudoIpv4>(json, (value) => ZonesPseudoIpv4.fromJson(value! as Map<String, dynamic>)),
zonesRedirectsForAiTraining: parseAnyOfVariant<ZonesRedirectsForAiTraining>(json, (value) => ZonesRedirectsForAiTraining.fromJson(value! as Map<String, dynamic>)),
zonesReplaceInsecureJs: parseAnyOfVariant<ZonesReplaceInsecureJs>(json, (value) => ZonesReplaceInsecureJs.fromJson(value! as Map<String, dynamic>)),
zonesSchemasResponseBuffering: parseAnyOfVariant<ZonesSchemasResponseBuffering>(json, (value) => ZonesSchemasResponseBuffering.fromJson(value! as Map<String, dynamic>)),
zonesSchemasRocketLoader: parseAnyOfVariant<ZonesSchemasRocketLoader>(json, (value) => ZonesSchemasRocketLoader.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAutomaticPlatformOptimization: parseAnyOfVariant<ZonesSchemasAutomaticPlatformOptimization>(json, (value) => ZonesSchemasAutomaticPlatformOptimization.fromJson(value! as Map<String, dynamic>)),
zonesSecurityHeader: parseAnyOfVariant<ZonesSecurityHeader>(json, (value) => ZonesSecurityHeader.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSecurityLevel: parseAnyOfVariant<ZonesSchemasSecurityLevel>(json, (value) => ZonesSchemasSecurityLevel.fromJson(value! as Map<String, dynamic>)),
zonesServerSideExclude: parseAnyOfVariant<ZonesServerSideExclude>(json, (value) => ZonesServerSideExclude.fromJson(value! as Map<String, dynamic>)),
zonesSha1Support: parseAnyOfVariant<ZonesSha1Support>(json, (value) => ZonesSha1Support.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSortQueryStringForCache: parseAnyOfVariant<ZonesSchemasSortQueryStringForCache>(json, (value) => ZonesSchemasSortQueryStringForCache.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSsl: parseAnyOfVariant<ZonesSchemasSsl>(json, (value) => ZonesSchemasSsl.fromJson(value! as Map<String, dynamic>)),
zonesSslRecommender: parseAnyOfVariant<ZonesSslRecommender>(json, (value) => ZonesSslRecommender.fromJson(value! as Map<String, dynamic>)),
zonesTls12Only: parseAnyOfVariant<ZonesTls12Only>(json, (value) => ZonesTls12Only.fromJson(value! as Map<String, dynamic>)),
zonesTls13: parseAnyOfVariant<ZonesTls13>(json, (value) => ZonesTls13.fromJson(value! as Map<String, dynamic>)),
zonesTlsClientAuth: parseAnyOfVariant<ZonesTlsClientAuth>(json, (value) => ZonesTlsClientAuth.fromJson(value! as Map<String, dynamic>)),
zonesSchemasTrueClientIpHeader: parseAnyOfVariant<ZonesSchemasTrueClientIpHeader>(json, (value) => ZonesSchemasTrueClientIpHeader.fromJson(value! as Map<String, dynamic>)),
zonesSchemasWaf: parseAnyOfVariant<ZonesSchemasWaf>(json, (value) => ZonesSchemasWaf.fromJson(value! as Map<String, dynamic>)),
zonesWebp: parseAnyOfVariant<ZonesWebp>(json, (value) => ZonesWebp.fromJson(value! as Map<String, dynamic>)),
zonesWebsockets: parseAnyOfVariant<ZonesWebsockets>(json, (value) => ZonesWebsockets.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Zones0rtt> zones0rtt;
final Omittable<ZonesAdvancedDdos> zonesAdvancedDdos;
final Omittable<ZonesCacheRulesAegis> zonesCacheRulesAegis;
final Omittable<ZonesAlwaysOnline> zonesAlwaysOnline;
final Omittable<ZonesSchemasAlwaysUseHttps> zonesSchemasAlwaysUseHttps;
final Omittable<ZonesSchemasAutomaticHttpsRewrites> zonesSchemasAutomaticHttpsRewrites;
final Omittable<ZonesBrotli> zonesBrotli;
final Omittable<ZonesSchemasBrowserCacheTtl> zonesSchemasBrowserCacheTtl;
final Omittable<ZonesSchemasBrowserCheck> zonesSchemasBrowserCheck;
final Omittable<ZonesSchemasCacheLevel> zonesSchemasCacheLevel;
final Omittable<ZonesChallengeTtl> zonesChallengeTtl;
final Omittable<ZonesChinaNetworkEnabled> zonesChinaNetworkEnabled;
final Omittable<ZonesContentConverter> zonesContentConverter;
final Omittable<ZonesCiphers> zonesCiphers;
final Omittable<ZonesCnameFlattening> zonesCnameFlattening;
final Omittable<ZonesDevelopmentMode> zonesDevelopmentMode;
final Omittable<ZonesEarlyHints> zonesEarlyHints;
final Omittable<ZonesSchemasEdgeCacheTtl> zonesSchemasEdgeCacheTtl;
final Omittable<ZonesSchemasEmailObfuscation> zonesSchemasEmailObfuscation;
final Omittable<ZonesH2Prioritization> zonesH2Prioritization;
final Omittable<ZonesHotlinkProtection> zonesHotlinkProtection;
final Omittable<ZonesHttp2> zonesHttp2;
final Omittable<ZonesHttp3> zonesHttp3;
final Omittable<ZonesSchemasIpGeolocation> zonesSchemasIpGeolocation;
final Omittable<ZonesIpv6> zonesIpv6;
final Omittable<ZonesMaxUpload> zonesMaxUpload;
final Omittable<ZonesMinTlsVersion> zonesMinTlsVersion;
final Omittable<ZonesSchemasMirage> zonesSchemasMirage;
final Omittable<ZonesNel> zonesNel;
final Omittable<ZonesSchemasOpportunisticEncryption> zonesSchemasOpportunisticEncryption;
final Omittable<ZonesOpportunisticOnion> zonesOpportunisticOnion;
final Omittable<ZonesOrangeToOrange> zonesOrangeToOrange;
final Omittable<ZonesSchemasOriginErrorPagePassThru> zonesSchemasOriginErrorPagePassThru;
final Omittable<ZonesCacheRulesOriginH2MaxStreams> zonesCacheRulesOriginH2MaxStreams;
final Omittable<ZonesCacheRulesOriginMaxHttpVersion> zonesCacheRulesOriginMaxHttpVersion;
final Omittable<ZonesSchemasPolish> zonesSchemasPolish;
final Omittable<ZonesPrefetchPreload> zonesPrefetchPreload;
final Omittable<ZonesPrivacyPass> zonesPrivacyPass;
final Omittable<ZonesProxyReadTimeout> zonesProxyReadTimeout;
final Omittable<ZonesPseudoIpv4> zonesPseudoIpv4;
final Omittable<ZonesRedirectsForAiTraining> zonesRedirectsForAiTraining;
final Omittable<ZonesReplaceInsecureJs> zonesReplaceInsecureJs;
final Omittable<ZonesSchemasResponseBuffering> zonesSchemasResponseBuffering;
final Omittable<ZonesSchemasRocketLoader> zonesSchemasRocketLoader;
final Omittable<ZonesSchemasAutomaticPlatformOptimization> zonesSchemasAutomaticPlatformOptimization;
final Omittable<ZonesSecurityHeader> zonesSecurityHeader;
final Omittable<ZonesSchemasSecurityLevel> zonesSchemasSecurityLevel;
final Omittable<ZonesServerSideExclude> zonesServerSideExclude;
final Omittable<ZonesSha1Support> zonesSha1Support;
final Omittable<ZonesSchemasSortQueryStringForCache> zonesSchemasSortQueryStringForCache;
final Omittable<ZonesSchemasSsl> zonesSchemasSsl;
final Omittable<ZonesSslRecommender> zonesSslRecommender;
final Omittable<ZonesTls12Only> zonesTls12Only;
final Omittable<ZonesTls13> zonesTls13;
final Omittable<ZonesTlsClientAuth> zonesTlsClientAuth;
final Omittable<ZonesSchemasTrueClientIpHeader> zonesSchemasTrueClientIpHeader;
final Omittable<ZonesSchemasWaf> zonesSchemasWaf;
final Omittable<ZonesWebp> zonesWebp;
final Omittable<ZonesWebsockets> zonesWebsockets;

  /// Whether at least one known variant matched.
  bool get isValid => zones0rtt.isPresent || zonesAdvancedDdos.isPresent || zonesCacheRulesAegis.isPresent || zonesAlwaysOnline.isPresent || zonesSchemasAlwaysUseHttps.isPresent || zonesSchemasAutomaticHttpsRewrites.isPresent || zonesBrotli.isPresent || zonesSchemasBrowserCacheTtl.isPresent || zonesSchemasBrowserCheck.isPresent || zonesSchemasCacheLevel.isPresent || zonesChallengeTtl.isPresent || zonesChinaNetworkEnabled.isPresent || zonesContentConverter.isPresent || zonesCiphers.isPresent || zonesCnameFlattening.isPresent || zonesDevelopmentMode.isPresent || zonesEarlyHints.isPresent || zonesSchemasEdgeCacheTtl.isPresent || zonesSchemasEmailObfuscation.isPresent || zonesH2Prioritization.isPresent || zonesHotlinkProtection.isPresent || zonesHttp2.isPresent || zonesHttp3.isPresent || zonesSchemasIpGeolocation.isPresent || zonesIpv6.isPresent || zonesMaxUpload.isPresent || zonesMinTlsVersion.isPresent || zonesSchemasMirage.isPresent || zonesNel.isPresent || zonesSchemasOpportunisticEncryption.isPresent || zonesOpportunisticOnion.isPresent || zonesOrangeToOrange.isPresent || zonesSchemasOriginErrorPagePassThru.isPresent || zonesCacheRulesOriginH2MaxStreams.isPresent || zonesCacheRulesOriginMaxHttpVersion.isPresent || zonesSchemasPolish.isPresent || zonesPrefetchPreload.isPresent || zonesPrivacyPass.isPresent || zonesProxyReadTimeout.isPresent || zonesPseudoIpv4.isPresent || zonesRedirectsForAiTraining.isPresent || zonesReplaceInsecureJs.isPresent || zonesSchemasResponseBuffering.isPresent || zonesSchemasRocketLoader.isPresent || zonesSchemasAutomaticPlatformOptimization.isPresent || zonesSecurityHeader.isPresent || zonesSchemasSecurityLevel.isPresent || zonesServerSideExclude.isPresent || zonesSha1Support.isPresent || zonesSchemasSortQueryStringForCache.isPresent || zonesSchemasSsl.isPresent || zonesSslRecommender.isPresent || zonesTls12Only.isPresent || zonesTls13.isPresent || zonesTlsClientAuth.isPresent || zonesSchemasTrueClientIpHeader.isPresent || zonesSchemasWaf.isPresent || zonesWebp.isPresent || zonesWebsockets.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (zones0rtt.isPresent) zones0rtt.value?.toJson(),
if (zonesAdvancedDdos.isPresent) zonesAdvancedDdos.value?.toJson(),
if (zonesCacheRulesAegis.isPresent) zonesCacheRulesAegis.value?.toJson(),
if (zonesAlwaysOnline.isPresent) zonesAlwaysOnline.value?.toJson(),
if (zonesSchemasAlwaysUseHttps.isPresent) zonesSchemasAlwaysUseHttps.value?.toJson(),
if (zonesSchemasAutomaticHttpsRewrites.isPresent) zonesSchemasAutomaticHttpsRewrites.value?.toJson(),
if (zonesBrotli.isPresent) zonesBrotli.value?.toJson(),
if (zonesSchemasBrowserCacheTtl.isPresent) zonesSchemasBrowserCacheTtl.value?.toJson(),
if (zonesSchemasBrowserCheck.isPresent) zonesSchemasBrowserCheck.value?.toJson(),
if (zonesSchemasCacheLevel.isPresent) zonesSchemasCacheLevel.value?.toJson(),
if (zonesChallengeTtl.isPresent) zonesChallengeTtl.value?.toJson(),
if (zonesChinaNetworkEnabled.isPresent) zonesChinaNetworkEnabled.value?.toJson(),
if (zonesContentConverter.isPresent) zonesContentConverter.value?.toJson(),
if (zonesCiphers.isPresent) zonesCiphers.value?.toJson(),
if (zonesCnameFlattening.isPresent) zonesCnameFlattening.value?.toJson(),
if (zonesDevelopmentMode.isPresent) zonesDevelopmentMode.value?.toJson(),
if (zonesEarlyHints.isPresent) zonesEarlyHints.value?.toJson(),
if (zonesSchemasEdgeCacheTtl.isPresent) zonesSchemasEdgeCacheTtl.value?.toJson(),
if (zonesSchemasEmailObfuscation.isPresent) zonesSchemasEmailObfuscation.value?.toJson(),
if (zonesH2Prioritization.isPresent) zonesH2Prioritization.value?.toJson(),
if (zonesHotlinkProtection.isPresent) zonesHotlinkProtection.value?.toJson(),
if (zonesHttp2.isPresent) zonesHttp2.value?.toJson(),
if (zonesHttp3.isPresent) zonesHttp3.value?.toJson(),
if (zonesSchemasIpGeolocation.isPresent) zonesSchemasIpGeolocation.value?.toJson(),
if (zonesIpv6.isPresent) zonesIpv6.value?.toJson(),
if (zonesMaxUpload.isPresent) zonesMaxUpload.value?.toJson(),
if (zonesMinTlsVersion.isPresent) zonesMinTlsVersion.value?.toJson(),
if (zonesSchemasMirage.isPresent) zonesSchemasMirage.value?.toJson(),
if (zonesNel.isPresent) zonesNel.value?.toJson(),
if (zonesSchemasOpportunisticEncryption.isPresent) zonesSchemasOpportunisticEncryption.value?.toJson(),
if (zonesOpportunisticOnion.isPresent) zonesOpportunisticOnion.value?.toJson(),
if (zonesOrangeToOrange.isPresent) zonesOrangeToOrange.value?.toJson(),
if (zonesSchemasOriginErrorPagePassThru.isPresent) zonesSchemasOriginErrorPagePassThru.value?.toJson(),
if (zonesCacheRulesOriginH2MaxStreams.isPresent) zonesCacheRulesOriginH2MaxStreams.value?.toJson(),
if (zonesCacheRulesOriginMaxHttpVersion.isPresent) zonesCacheRulesOriginMaxHttpVersion.value?.toJson(),
if (zonesSchemasPolish.isPresent) zonesSchemasPolish.value?.toJson(),
if (zonesPrefetchPreload.isPresent) zonesPrefetchPreload.value?.toJson(),
if (zonesPrivacyPass.isPresent) zonesPrivacyPass.value?.toJson(),
if (zonesProxyReadTimeout.isPresent) zonesProxyReadTimeout.value?.toJson(),
if (zonesPseudoIpv4.isPresent) zonesPseudoIpv4.value?.toJson(),
if (zonesRedirectsForAiTraining.isPresent) zonesRedirectsForAiTraining.value?.toJson(),
if (zonesReplaceInsecureJs.isPresent) zonesReplaceInsecureJs.value?.toJson(),
if (zonesSchemasResponseBuffering.isPresent) zonesSchemasResponseBuffering.value?.toJson(),
if (zonesSchemasRocketLoader.isPresent) zonesSchemasRocketLoader.value?.toJson(),
if (zonesSchemasAutomaticPlatformOptimization.isPresent) zonesSchemasAutomaticPlatformOptimization.value?.toJson(),
if (zonesSecurityHeader.isPresent) zonesSecurityHeader.value?.toJson(),
if (zonesSchemasSecurityLevel.isPresent) zonesSchemasSecurityLevel.value?.toJson(),
if (zonesServerSideExclude.isPresent) zonesServerSideExclude.value?.toJson(),
if (zonesSha1Support.isPresent) zonesSha1Support.value?.toJson(),
if (zonesSchemasSortQueryStringForCache.isPresent) zonesSchemasSortQueryStringForCache.value?.toJson(),
if (zonesSchemasSsl.isPresent) zonesSchemasSsl.value?.toJson(),
if (zonesSslRecommender.isPresent) zonesSslRecommender.value?.toJson(),
if (zonesTls12Only.isPresent) zonesTls12Only.value?.toJson(),
if (zonesTls13.isPresent) zonesTls13.value?.toJson(),
if (zonesTlsClientAuth.isPresent) zonesTlsClientAuth.value?.toJson(),
if (zonesSchemasTrueClientIpHeader.isPresent) zonesSchemasTrueClientIpHeader.value?.toJson(),
if (zonesSchemasWaf.isPresent) zonesSchemasWaf.value?.toJson(),
if (zonesWebp.isPresent) zonesWebp.value?.toJson(),
if (zonesWebsockets.isPresent) zonesWebsockets.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZonesMultipleSettings2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZonesMultipleSettings2(${toJson()})';
}
