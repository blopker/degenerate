// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0rtt_request.dart';import 'zones_advanced_ddos_request.dart';import 'zones_always_online_request.dart';import 'zones_brotli_request.dart';import 'zones_cache_rules_aegis_request.dart';import 'zones_cache_rules_origin_h2_max_streams_request.dart';import 'zones_cache_rules_origin_max_http_version_request.dart';import 'zones_challenge_ttl_request.dart';import 'zones_china_network_enabled_request.dart';import 'zones_ciphers_request.dart';import 'zones_cname_flattening_request.dart';import 'zones_content_converter_request.dart';import 'zones_development_mode_request.dart';import 'zones_early_hints_request.dart';import 'zones_h2_prioritization_request.dart';import 'zones_hotlink_protection_request.dart';import 'zones_http2_request.dart';import 'zones_http3_request.dart';import 'zones_ipv6_request.dart';import 'zones_max_upload_request.dart';import 'zones_min_tls_version_request.dart';import 'zones_nel_request.dart';import 'zones_opportunistic_onion_request.dart';import 'zones_orange_to_orange_request.dart';import 'zones_prefetch_preload_request.dart';import 'zones_privacy_pass_request.dart';import 'zones_proxy_read_timeout_request.dart';import 'zones_pseudo_ipv4_request.dart';import 'zones_redirects_for_ai_training_request.dart';import 'zones_replace_insecure_js_request.dart';import 'zones_schemas_always_use_https_request.dart';import 'zones_schemas_automatic_https_rewrites_request.dart';import 'zones_schemas_automatic_platform_optimization_request.dart';import 'zones_schemas_browser_cache_ttl_request.dart';import 'zones_schemas_browser_check_request.dart';import 'zones_schemas_cache_level_request.dart';import 'zones_schemas_edge_cache_ttl_request.dart';import 'zones_schemas_email_obfuscation_request.dart';import 'zones_schemas_ip_geolocation_request.dart';import 'zones_schemas_mirage_request.dart';import 'zones_schemas_opportunistic_encryption_request.dart';import 'zones_schemas_origin_error_page_pass_thru_request.dart';import 'zones_schemas_polish_request.dart';import 'zones_schemas_response_buffering_request.dart';import 'zones_schemas_rocket_loader_request.dart';import 'zones_schemas_security_level_request.dart';import 'zones_schemas_sort_query_string_for_cache_request.dart';import 'zones_schemas_ssl_request.dart';import 'zones_schemas_true_client_ip_header_request.dart';import 'zones_schemas_waf_request.dart';import 'zones_security_header_request.dart';import 'zones_server_side_exclude_request.dart';import 'zones_sha1_support_request.dart';import 'zones_ssl_recommender.dart';import 'zones_tls12_only_request.dart';import 'zones_tls13_request.dart';import 'zones_tls_client_auth_request.dart';import 'zones_webp_request.dart';import 'zones_websockets_request.dart';
@immutable
final class ZonesMultipleSettingsRequest2 {
  const ZonesMultipleSettingsRequest2({this.zones0rttRequest = const Omittable.absent(),
this.zonesAdvancedDdosRequest = const Omittable.absent(),
this.zonesCacheRulesAegisRequest = const Omittable.absent(),
this.zonesAlwaysOnlineRequest = const Omittable.absent(),
this.zonesSchemasAlwaysUseHttpsRequest = const Omittable.absent(),
this.zonesSchemasAutomaticHttpsRewritesRequest = const Omittable.absent(),
this.zonesBrotliRequest = const Omittable.absent(),
this.zonesSchemasBrowserCacheTtlRequest = const Omittable.absent(),
this.zonesSchemasBrowserCheckRequest = const Omittable.absent(),
this.zonesSchemasCacheLevelRequest = const Omittable.absent(),
this.zonesChallengeTtlRequest = const Omittable.absent(),
this.zonesChinaNetworkEnabledRequest = const Omittable.absent(),
this.zonesContentConverterRequest = const Omittable.absent(),
this.zonesCiphersRequest = const Omittable.absent(),
this.zonesCnameFlatteningRequest = const Omittable.absent(),
this.zonesDevelopmentModeRequest = const Omittable.absent(),
this.zonesEarlyHintsRequest = const Omittable.absent(),
this.zonesSchemasEdgeCacheTtlRequest = const Omittable.absent(),
this.zonesSchemasEmailObfuscationRequest = const Omittable.absent(),
this.zonesH2PrioritizationRequest = const Omittable.absent(),
this.zonesHotlinkProtectionRequest = const Omittable.absent(),
this.zonesHttp2Request = const Omittable.absent(),
this.zonesHttp3Request = const Omittable.absent(),
this.zonesSchemasIpGeolocationRequest = const Omittable.absent(),
this.zonesIpv6Request = const Omittable.absent(),
this.zonesMaxUploadRequest = const Omittable.absent(),
this.zonesMinTlsVersionRequest = const Omittable.absent(),
this.zonesSchemasMirageRequest = const Omittable.absent(),
this.zonesNelRequest = const Omittable.absent(),
this.zonesSchemasOpportunisticEncryptionRequest = const Omittable.absent(),
this.zonesOpportunisticOnionRequest = const Omittable.absent(),
this.zonesOrangeToOrangeRequest = const Omittable.absent(),
this.zonesSchemasOriginErrorPagePassThruRequest = const Omittable.absent(),
this.zonesCacheRulesOriginH2MaxStreamsRequest = const Omittable.absent(),
this.zonesCacheRulesOriginMaxHttpVersionRequest = const Omittable.absent(),
this.zonesSchemasPolishRequest = const Omittable.absent(),
this.zonesPrefetchPreloadRequest = const Omittable.absent(),
this.zonesPrivacyPassRequest = const Omittable.absent(),
this.zonesProxyReadTimeoutRequest = const Omittable.absent(),
this.zonesPseudoIpv4Request = const Omittable.absent(),
this.zonesRedirectsForAiTrainingRequest = const Omittable.absent(),
this.zonesReplaceInsecureJsRequest = const Omittable.absent(),
this.zonesSchemasResponseBufferingRequest = const Omittable.absent(),
this.zonesSchemasRocketLoaderRequest = const Omittable.absent(),
this.zonesSchemasAutomaticPlatformOptimizationRequest = const Omittable.absent(),
this.zonesSecurityHeaderRequest = const Omittable.absent(),
this.zonesSchemasSecurityLevelRequest = const Omittable.absent(),
this.zonesServerSideExcludeRequest = const Omittable.absent(),
this.zonesSha1SupportRequest = const Omittable.absent(),
this.zonesSchemasSortQueryStringForCacheRequest = const Omittable.absent(),
this.zonesSchemasSslRequest = const Omittable.absent(),
this.zonesSslRecommender = const Omittable.absent(),
this.zonesTls12OnlyRequest = const Omittable.absent(),
this.zonesTls13Request = const Omittable.absent(),
this.zonesTlsClientAuthRequest = const Omittable.absent(),
this.zonesSchemasTrueClientIpHeaderRequest = const Omittable.absent(),
this.zonesSchemasWafRequest = const Omittable.absent(),
this.zonesWebpRequest = const Omittable.absent(),
this.zonesWebsocketsRequest = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ZonesMultipleSettingsRequest2._({required this.rawValue, required this.zones0rttRequest,
required this.zonesAdvancedDdosRequest,
required this.zonesCacheRulesAegisRequest,
required this.zonesAlwaysOnlineRequest,
required this.zonesSchemasAlwaysUseHttpsRequest,
required this.zonesSchemasAutomaticHttpsRewritesRequest,
required this.zonesBrotliRequest,
required this.zonesSchemasBrowserCacheTtlRequest,
required this.zonesSchemasBrowserCheckRequest,
required this.zonesSchemasCacheLevelRequest,
required this.zonesChallengeTtlRequest,
required this.zonesChinaNetworkEnabledRequest,
required this.zonesContentConverterRequest,
required this.zonesCiphersRequest,
required this.zonesCnameFlatteningRequest,
required this.zonesDevelopmentModeRequest,
required this.zonesEarlyHintsRequest,
required this.zonesSchemasEdgeCacheTtlRequest,
required this.zonesSchemasEmailObfuscationRequest,
required this.zonesH2PrioritizationRequest,
required this.zonesHotlinkProtectionRequest,
required this.zonesHttp2Request,
required this.zonesHttp3Request,
required this.zonesSchemasIpGeolocationRequest,
required this.zonesIpv6Request,
required this.zonesMaxUploadRequest,
required this.zonesMinTlsVersionRequest,
required this.zonesSchemasMirageRequest,
required this.zonesNelRequest,
required this.zonesSchemasOpportunisticEncryptionRequest,
required this.zonesOpportunisticOnionRequest,
required this.zonesOrangeToOrangeRequest,
required this.zonesSchemasOriginErrorPagePassThruRequest,
required this.zonesCacheRulesOriginH2MaxStreamsRequest,
required this.zonesCacheRulesOriginMaxHttpVersionRequest,
required this.zonesSchemasPolishRequest,
required this.zonesPrefetchPreloadRequest,
required this.zonesPrivacyPassRequest,
required this.zonesProxyReadTimeoutRequest,
required this.zonesPseudoIpv4Request,
required this.zonesRedirectsForAiTrainingRequest,
required this.zonesReplaceInsecureJsRequest,
required this.zonesSchemasResponseBufferingRequest,
required this.zonesSchemasRocketLoaderRequest,
required this.zonesSchemasAutomaticPlatformOptimizationRequest,
required this.zonesSecurityHeaderRequest,
required this.zonesSchemasSecurityLevelRequest,
required this.zonesServerSideExcludeRequest,
required this.zonesSha1SupportRequest,
required this.zonesSchemasSortQueryStringForCacheRequest,
required this.zonesSchemasSslRequest,
required this.zonesSslRecommender,
required this.zonesTls12OnlyRequest,
required this.zonesTls13Request,
required this.zonesTlsClientAuthRequest,
required this.zonesSchemasTrueClientIpHeaderRequest,
required this.zonesSchemasWafRequest,
required this.zonesWebpRequest,
required this.zonesWebsocketsRequest,});
  factory ZonesMultipleSettingsRequest2.fromJson(Object? json) => ZonesMultipleSettingsRequest2._(
    rawValue: Omittable(json),
    zones0rttRequest: parseAnyOfVariant<Zones0rttRequest>(json, (value) => Zones0rttRequest.fromJson(value! as Map<String, dynamic>)),
zonesAdvancedDdosRequest: parseAnyOfVariant<ZonesAdvancedDdosRequest>(json, (value) => ZonesAdvancedDdosRequest.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesAegisRequest: parseAnyOfVariant<ZonesCacheRulesAegisRequest>(json, (value) => ZonesCacheRulesAegisRequest.fromJson(value! as Map<String, dynamic>)),
zonesAlwaysOnlineRequest: parseAnyOfVariant<ZonesAlwaysOnlineRequest>(json, (value) => ZonesAlwaysOnlineRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAlwaysUseHttpsRequest: parseAnyOfVariant<ZonesSchemasAlwaysUseHttpsRequest>(json, (value) => ZonesSchemasAlwaysUseHttpsRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAutomaticHttpsRewritesRequest: parseAnyOfVariant<ZonesSchemasAutomaticHttpsRewritesRequest>(json, (value) => ZonesSchemasAutomaticHttpsRewritesRequest.fromJson(value! as Map<String, dynamic>)),
zonesBrotliRequest: parseAnyOfVariant<ZonesBrotliRequest>(json, (value) => ZonesBrotliRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasBrowserCacheTtlRequest: parseAnyOfVariant<ZonesSchemasBrowserCacheTtlRequest>(json, (value) => ZonesSchemasBrowserCacheTtlRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasBrowserCheckRequest: parseAnyOfVariant<ZonesSchemasBrowserCheckRequest>(json, (value) => ZonesSchemasBrowserCheckRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasCacheLevelRequest: parseAnyOfVariant<ZonesSchemasCacheLevelRequest>(json, (value) => ZonesSchemasCacheLevelRequest.fromJson(value! as Map<String, dynamic>)),
zonesChallengeTtlRequest: parseAnyOfVariant<ZonesChallengeTtlRequest>(json, (value) => ZonesChallengeTtlRequest.fromJson(value! as Map<String, dynamic>)),
zonesChinaNetworkEnabledRequest: parseAnyOfVariant<ZonesChinaNetworkEnabledRequest>(json, (value) => ZonesChinaNetworkEnabledRequest.fromJson(value! as Map<String, dynamic>)),
zonesContentConverterRequest: parseAnyOfVariant<ZonesContentConverterRequest>(json, (value) => ZonesContentConverterRequest.fromJson(value! as Map<String, dynamic>)),
zonesCiphersRequest: parseAnyOfVariant<ZonesCiphersRequest>(json, (value) => ZonesCiphersRequest.fromJson(value! as Map<String, dynamic>)),
zonesCnameFlatteningRequest: parseAnyOfVariant<ZonesCnameFlatteningRequest>(json, (value) => ZonesCnameFlatteningRequest.fromJson(value! as Map<String, dynamic>)),
zonesDevelopmentModeRequest: parseAnyOfVariant<ZonesDevelopmentModeRequest>(json, (value) => ZonesDevelopmentModeRequest.fromJson(value! as Map<String, dynamic>)),
zonesEarlyHintsRequest: parseAnyOfVariant<ZonesEarlyHintsRequest>(json, (value) => ZonesEarlyHintsRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasEdgeCacheTtlRequest: parseAnyOfVariant<ZonesSchemasEdgeCacheTtlRequest>(json, (value) => ZonesSchemasEdgeCacheTtlRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasEmailObfuscationRequest: parseAnyOfVariant<ZonesSchemasEmailObfuscationRequest>(json, (value) => ZonesSchemasEmailObfuscationRequest.fromJson(value! as Map<String, dynamic>)),
zonesH2PrioritizationRequest: parseAnyOfVariant<ZonesH2PrioritizationRequest>(json, (value) => ZonesH2PrioritizationRequest.fromJson(value! as Map<String, dynamic>)),
zonesHotlinkProtectionRequest: parseAnyOfVariant<ZonesHotlinkProtectionRequest>(json, (value) => ZonesHotlinkProtectionRequest.fromJson(value! as Map<String, dynamic>)),
zonesHttp2Request: parseAnyOfVariant<ZonesHttp2Request>(json, (value) => ZonesHttp2Request.fromJson(value! as Map<String, dynamic>)),
zonesHttp3Request: parseAnyOfVariant<ZonesHttp3Request>(json, (value) => ZonesHttp3Request.fromJson(value! as Map<String, dynamic>)),
zonesSchemasIpGeolocationRequest: parseAnyOfVariant<ZonesSchemasIpGeolocationRequest>(json, (value) => ZonesSchemasIpGeolocationRequest.fromJson(value! as Map<String, dynamic>)),
zonesIpv6Request: parseAnyOfVariant<ZonesIpv6Request>(json, (value) => ZonesIpv6Request.fromJson(value! as Map<String, dynamic>)),
zonesMaxUploadRequest: parseAnyOfVariant<ZonesMaxUploadRequest>(json, (value) => ZonesMaxUploadRequest.fromJson(value! as Map<String, dynamic>)),
zonesMinTlsVersionRequest: parseAnyOfVariant<ZonesMinTlsVersionRequest>(json, (value) => ZonesMinTlsVersionRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasMirageRequest: parseAnyOfVariant<ZonesSchemasMirageRequest>(json, (value) => ZonesSchemasMirageRequest.fromJson(value! as Map<String, dynamic>)),
zonesNelRequest: parseAnyOfVariant<ZonesNelRequest>(json, (value) => ZonesNelRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasOpportunisticEncryptionRequest: parseAnyOfVariant<ZonesSchemasOpportunisticEncryptionRequest>(json, (value) => ZonesSchemasOpportunisticEncryptionRequest.fromJson(value! as Map<String, dynamic>)),
zonesOpportunisticOnionRequest: parseAnyOfVariant<ZonesOpportunisticOnionRequest>(json, (value) => ZonesOpportunisticOnionRequest.fromJson(value! as Map<String, dynamic>)),
zonesOrangeToOrangeRequest: parseAnyOfVariant<ZonesOrangeToOrangeRequest>(json, (value) => ZonesOrangeToOrangeRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasOriginErrorPagePassThruRequest: parseAnyOfVariant<ZonesSchemasOriginErrorPagePassThruRequest>(json, (value) => ZonesSchemasOriginErrorPagePassThruRequest.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesOriginH2MaxStreamsRequest: parseAnyOfVariant<ZonesCacheRulesOriginH2MaxStreamsRequest>(json, (value) => ZonesCacheRulesOriginH2MaxStreamsRequest.fromJson(value! as Map<String, dynamic>)),
zonesCacheRulesOriginMaxHttpVersionRequest: parseAnyOfVariant<ZonesCacheRulesOriginMaxHttpVersionRequest>(json, (value) => ZonesCacheRulesOriginMaxHttpVersionRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasPolishRequest: parseAnyOfVariant<ZonesSchemasPolishRequest>(json, (value) => ZonesSchemasPolishRequest.fromJson(value! as Map<String, dynamic>)),
zonesPrefetchPreloadRequest: parseAnyOfVariant<ZonesPrefetchPreloadRequest>(json, (value) => ZonesPrefetchPreloadRequest.fromJson(value! as Map<String, dynamic>)),
zonesPrivacyPassRequest: parseAnyOfVariant<ZonesPrivacyPassRequest>(json, (value) => ZonesPrivacyPassRequest.fromJson(value! as Map<String, dynamic>)),
zonesProxyReadTimeoutRequest: parseAnyOfVariant<ZonesProxyReadTimeoutRequest>(json, (value) => ZonesProxyReadTimeoutRequest.fromJson(value! as Map<String, dynamic>)),
zonesPseudoIpv4Request: parseAnyOfVariant<ZonesPseudoIpv4Request>(json, (value) => ZonesPseudoIpv4Request.fromJson(value! as Map<String, dynamic>)),
zonesRedirectsForAiTrainingRequest: parseAnyOfVariant<ZonesRedirectsForAiTrainingRequest>(json, (value) => ZonesRedirectsForAiTrainingRequest.fromJson(value! as Map<String, dynamic>)),
zonesReplaceInsecureJsRequest: parseAnyOfVariant<ZonesReplaceInsecureJsRequest>(json, (value) => ZonesReplaceInsecureJsRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasResponseBufferingRequest: parseAnyOfVariant<ZonesSchemasResponseBufferingRequest>(json, (value) => ZonesSchemasResponseBufferingRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasRocketLoaderRequest: parseAnyOfVariant<ZonesSchemasRocketLoaderRequest>(json, (value) => ZonesSchemasRocketLoaderRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasAutomaticPlatformOptimizationRequest: parseAnyOfVariant<ZonesSchemasAutomaticPlatformOptimizationRequest>(json, (value) => ZonesSchemasAutomaticPlatformOptimizationRequest.fromJson(value! as Map<String, dynamic>)),
zonesSecurityHeaderRequest: parseAnyOfVariant<ZonesSecurityHeaderRequest>(json, (value) => ZonesSecurityHeaderRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSecurityLevelRequest: parseAnyOfVariant<ZonesSchemasSecurityLevelRequest>(json, (value) => ZonesSchemasSecurityLevelRequest.fromJson(value! as Map<String, dynamic>)),
zonesServerSideExcludeRequest: parseAnyOfVariant<ZonesServerSideExcludeRequest>(json, (value) => ZonesServerSideExcludeRequest.fromJson(value! as Map<String, dynamic>)),
zonesSha1SupportRequest: parseAnyOfVariant<ZonesSha1SupportRequest>(json, (value) => ZonesSha1SupportRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSortQueryStringForCacheRequest: parseAnyOfVariant<ZonesSchemasSortQueryStringForCacheRequest>(json, (value) => ZonesSchemasSortQueryStringForCacheRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasSslRequest: parseAnyOfVariant<ZonesSchemasSslRequest>(json, (value) => ZonesSchemasSslRequest.fromJson(value! as Map<String, dynamic>)),
zonesSslRecommender: parseAnyOfVariant<ZonesSslRecommender>(json, (value) => ZonesSslRecommender.fromJson(value! as Map<String, dynamic>)),
zonesTls12OnlyRequest: parseAnyOfVariant<ZonesTls12OnlyRequest>(json, (value) => ZonesTls12OnlyRequest.fromJson(value! as Map<String, dynamic>)),
zonesTls13Request: parseAnyOfVariant<ZonesTls13Request>(json, (value) => ZonesTls13Request.fromJson(value! as Map<String, dynamic>)),
zonesTlsClientAuthRequest: parseAnyOfVariant<ZonesTlsClientAuthRequest>(json, (value) => ZonesTlsClientAuthRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasTrueClientIpHeaderRequest: parseAnyOfVariant<ZonesSchemasTrueClientIpHeaderRequest>(json, (value) => ZonesSchemasTrueClientIpHeaderRequest.fromJson(value! as Map<String, dynamic>)),
zonesSchemasWafRequest: parseAnyOfVariant<ZonesSchemasWafRequest>(json, (value) => ZonesSchemasWafRequest.fromJson(value! as Map<String, dynamic>)),
zonesWebpRequest: parseAnyOfVariant<ZonesWebpRequest>(json, (value) => ZonesWebpRequest.fromJson(value! as Map<String, dynamic>)),
zonesWebsocketsRequest: parseAnyOfVariant<ZonesWebsocketsRequest>(json, (value) => ZonesWebsocketsRequest.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Zones0rttRequest> zones0rttRequest;
final Omittable<ZonesAdvancedDdosRequest> zonesAdvancedDdosRequest;
final Omittable<ZonesCacheRulesAegisRequest> zonesCacheRulesAegisRequest;
final Omittable<ZonesAlwaysOnlineRequest> zonesAlwaysOnlineRequest;
final Omittable<ZonesSchemasAlwaysUseHttpsRequest> zonesSchemasAlwaysUseHttpsRequest;
final Omittable<ZonesSchemasAutomaticHttpsRewritesRequest> zonesSchemasAutomaticHttpsRewritesRequest;
final Omittable<ZonesBrotliRequest> zonesBrotliRequest;
final Omittable<ZonesSchemasBrowserCacheTtlRequest> zonesSchemasBrowserCacheTtlRequest;
final Omittable<ZonesSchemasBrowserCheckRequest> zonesSchemasBrowserCheckRequest;
final Omittable<ZonesSchemasCacheLevelRequest> zonesSchemasCacheLevelRequest;
final Omittable<ZonesChallengeTtlRequest> zonesChallengeTtlRequest;
final Omittable<ZonesChinaNetworkEnabledRequest> zonesChinaNetworkEnabledRequest;
final Omittable<ZonesContentConverterRequest> zonesContentConverterRequest;
final Omittable<ZonesCiphersRequest> zonesCiphersRequest;
final Omittable<ZonesCnameFlatteningRequest> zonesCnameFlatteningRequest;
final Omittable<ZonesDevelopmentModeRequest> zonesDevelopmentModeRequest;
final Omittable<ZonesEarlyHintsRequest> zonesEarlyHintsRequest;
final Omittable<ZonesSchemasEdgeCacheTtlRequest> zonesSchemasEdgeCacheTtlRequest;
final Omittable<ZonesSchemasEmailObfuscationRequest> zonesSchemasEmailObfuscationRequest;
final Omittable<ZonesH2PrioritizationRequest> zonesH2PrioritizationRequest;
final Omittable<ZonesHotlinkProtectionRequest> zonesHotlinkProtectionRequest;
final Omittable<ZonesHttp2Request> zonesHttp2Request;
final Omittable<ZonesHttp3Request> zonesHttp3Request;
final Omittable<ZonesSchemasIpGeolocationRequest> zonesSchemasIpGeolocationRequest;
final Omittable<ZonesIpv6Request> zonesIpv6Request;
final Omittable<ZonesMaxUploadRequest> zonesMaxUploadRequest;
final Omittable<ZonesMinTlsVersionRequest> zonesMinTlsVersionRequest;
final Omittable<ZonesSchemasMirageRequest> zonesSchemasMirageRequest;
final Omittable<ZonesNelRequest> zonesNelRequest;
final Omittable<ZonesSchemasOpportunisticEncryptionRequest> zonesSchemasOpportunisticEncryptionRequest;
final Omittable<ZonesOpportunisticOnionRequest> zonesOpportunisticOnionRequest;
final Omittable<ZonesOrangeToOrangeRequest> zonesOrangeToOrangeRequest;
final Omittable<ZonesSchemasOriginErrorPagePassThruRequest> zonesSchemasOriginErrorPagePassThruRequest;
final Omittable<ZonesCacheRulesOriginH2MaxStreamsRequest> zonesCacheRulesOriginH2MaxStreamsRequest;
final Omittable<ZonesCacheRulesOriginMaxHttpVersionRequest> zonesCacheRulesOriginMaxHttpVersionRequest;
final Omittable<ZonesSchemasPolishRequest> zonesSchemasPolishRequest;
final Omittable<ZonesPrefetchPreloadRequest> zonesPrefetchPreloadRequest;
final Omittable<ZonesPrivacyPassRequest> zonesPrivacyPassRequest;
final Omittable<ZonesProxyReadTimeoutRequest> zonesProxyReadTimeoutRequest;
final Omittable<ZonesPseudoIpv4Request> zonesPseudoIpv4Request;
final Omittable<ZonesRedirectsForAiTrainingRequest> zonesRedirectsForAiTrainingRequest;
final Omittable<ZonesReplaceInsecureJsRequest> zonesReplaceInsecureJsRequest;
final Omittable<ZonesSchemasResponseBufferingRequest> zonesSchemasResponseBufferingRequest;
final Omittable<ZonesSchemasRocketLoaderRequest> zonesSchemasRocketLoaderRequest;
final Omittable<ZonesSchemasAutomaticPlatformOptimizationRequest> zonesSchemasAutomaticPlatformOptimizationRequest;
final Omittable<ZonesSecurityHeaderRequest> zonesSecurityHeaderRequest;
final Omittable<ZonesSchemasSecurityLevelRequest> zonesSchemasSecurityLevelRequest;
final Omittable<ZonesServerSideExcludeRequest> zonesServerSideExcludeRequest;
final Omittable<ZonesSha1SupportRequest> zonesSha1SupportRequest;
final Omittable<ZonesSchemasSortQueryStringForCacheRequest> zonesSchemasSortQueryStringForCacheRequest;
final Omittable<ZonesSchemasSslRequest> zonesSchemasSslRequest;
final Omittable<ZonesSslRecommender> zonesSslRecommender;
final Omittable<ZonesTls12OnlyRequest> zonesTls12OnlyRequest;
final Omittable<ZonesTls13Request> zonesTls13Request;
final Omittable<ZonesTlsClientAuthRequest> zonesTlsClientAuthRequest;
final Omittable<ZonesSchemasTrueClientIpHeaderRequest> zonesSchemasTrueClientIpHeaderRequest;
final Omittable<ZonesSchemasWafRequest> zonesSchemasWafRequest;
final Omittable<ZonesWebpRequest> zonesWebpRequest;
final Omittable<ZonesWebsocketsRequest> zonesWebsocketsRequest;

  /// Whether at least one known variant matched.
  bool get isValid => zones0rttRequest.isPresent || zonesAdvancedDdosRequest.isPresent || zonesCacheRulesAegisRequest.isPresent || zonesAlwaysOnlineRequest.isPresent || zonesSchemasAlwaysUseHttpsRequest.isPresent || zonesSchemasAutomaticHttpsRewritesRequest.isPresent || zonesBrotliRequest.isPresent || zonesSchemasBrowserCacheTtlRequest.isPresent || zonesSchemasBrowserCheckRequest.isPresent || zonesSchemasCacheLevelRequest.isPresent || zonesChallengeTtlRequest.isPresent || zonesChinaNetworkEnabledRequest.isPresent || zonesContentConverterRequest.isPresent || zonesCiphersRequest.isPresent || zonesCnameFlatteningRequest.isPresent || zonesDevelopmentModeRequest.isPresent || zonesEarlyHintsRequest.isPresent || zonesSchemasEdgeCacheTtlRequest.isPresent || zonesSchemasEmailObfuscationRequest.isPresent || zonesH2PrioritizationRequest.isPresent || zonesHotlinkProtectionRequest.isPresent || zonesHttp2Request.isPresent || zonesHttp3Request.isPresent || zonesSchemasIpGeolocationRequest.isPresent || zonesIpv6Request.isPresent || zonesMaxUploadRequest.isPresent || zonesMinTlsVersionRequest.isPresent || zonesSchemasMirageRequest.isPresent || zonesNelRequest.isPresent || zonesSchemasOpportunisticEncryptionRequest.isPresent || zonesOpportunisticOnionRequest.isPresent || zonesOrangeToOrangeRequest.isPresent || zonesSchemasOriginErrorPagePassThruRequest.isPresent || zonesCacheRulesOriginH2MaxStreamsRequest.isPresent || zonesCacheRulesOriginMaxHttpVersionRequest.isPresent || zonesSchemasPolishRequest.isPresent || zonesPrefetchPreloadRequest.isPresent || zonesPrivacyPassRequest.isPresent || zonesProxyReadTimeoutRequest.isPresent || zonesPseudoIpv4Request.isPresent || zonesRedirectsForAiTrainingRequest.isPresent || zonesReplaceInsecureJsRequest.isPresent || zonesSchemasResponseBufferingRequest.isPresent || zonesSchemasRocketLoaderRequest.isPresent || zonesSchemasAutomaticPlatformOptimizationRequest.isPresent || zonesSecurityHeaderRequest.isPresent || zonesSchemasSecurityLevelRequest.isPresent || zonesServerSideExcludeRequest.isPresent || zonesSha1SupportRequest.isPresent || zonesSchemasSortQueryStringForCacheRequest.isPresent || zonesSchemasSslRequest.isPresent || zonesSslRecommender.isPresent || zonesTls12OnlyRequest.isPresent || zonesTls13Request.isPresent || zonesTlsClientAuthRequest.isPresent || zonesSchemasTrueClientIpHeaderRequest.isPresent || zonesSchemasWafRequest.isPresent || zonesWebpRequest.isPresent || zonesWebsocketsRequest.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (zones0rttRequest.isPresent) zones0rttRequest.value?.toJson(),
if (zonesAdvancedDdosRequest.isPresent) zonesAdvancedDdosRequest.value?.toJson(),
if (zonesCacheRulesAegisRequest.isPresent) zonesCacheRulesAegisRequest.value?.toJson(),
if (zonesAlwaysOnlineRequest.isPresent) zonesAlwaysOnlineRequest.value?.toJson(),
if (zonesSchemasAlwaysUseHttpsRequest.isPresent) zonesSchemasAlwaysUseHttpsRequest.value?.toJson(),
if (zonesSchemasAutomaticHttpsRewritesRequest.isPresent) zonesSchemasAutomaticHttpsRewritesRequest.value?.toJson(),
if (zonesBrotliRequest.isPresent) zonesBrotliRequest.value?.toJson(),
if (zonesSchemasBrowserCacheTtlRequest.isPresent) zonesSchemasBrowserCacheTtlRequest.value?.toJson(),
if (zonesSchemasBrowserCheckRequest.isPresent) zonesSchemasBrowserCheckRequest.value?.toJson(),
if (zonesSchemasCacheLevelRequest.isPresent) zonesSchemasCacheLevelRequest.value?.toJson(),
if (zonesChallengeTtlRequest.isPresent) zonesChallengeTtlRequest.value?.toJson(),
if (zonesChinaNetworkEnabledRequest.isPresent) zonesChinaNetworkEnabledRequest.value?.toJson(),
if (zonesContentConverterRequest.isPresent) zonesContentConverterRequest.value?.toJson(),
if (zonesCiphersRequest.isPresent) zonesCiphersRequest.value?.toJson(),
if (zonesCnameFlatteningRequest.isPresent) zonesCnameFlatteningRequest.value?.toJson(),
if (zonesDevelopmentModeRequest.isPresent) zonesDevelopmentModeRequest.value?.toJson(),
if (zonesEarlyHintsRequest.isPresent) zonesEarlyHintsRequest.value?.toJson(),
if (zonesSchemasEdgeCacheTtlRequest.isPresent) zonesSchemasEdgeCacheTtlRequest.value?.toJson(),
if (zonesSchemasEmailObfuscationRequest.isPresent) zonesSchemasEmailObfuscationRequest.value?.toJson(),
if (zonesH2PrioritizationRequest.isPresent) zonesH2PrioritizationRequest.value?.toJson(),
if (zonesHotlinkProtectionRequest.isPresent) zonesHotlinkProtectionRequest.value?.toJson(),
if (zonesHttp2Request.isPresent) zonesHttp2Request.value?.toJson(),
if (zonesHttp3Request.isPresent) zonesHttp3Request.value?.toJson(),
if (zonesSchemasIpGeolocationRequest.isPresent) zonesSchemasIpGeolocationRequest.value?.toJson(),
if (zonesIpv6Request.isPresent) zonesIpv6Request.value?.toJson(),
if (zonesMaxUploadRequest.isPresent) zonesMaxUploadRequest.value?.toJson(),
if (zonesMinTlsVersionRequest.isPresent) zonesMinTlsVersionRequest.value?.toJson(),
if (zonesSchemasMirageRequest.isPresent) zonesSchemasMirageRequest.value?.toJson(),
if (zonesNelRequest.isPresent) zonesNelRequest.value?.toJson(),
if (zonesSchemasOpportunisticEncryptionRequest.isPresent) zonesSchemasOpportunisticEncryptionRequest.value?.toJson(),
if (zonesOpportunisticOnionRequest.isPresent) zonesOpportunisticOnionRequest.value?.toJson(),
if (zonesOrangeToOrangeRequest.isPresent) zonesOrangeToOrangeRequest.value?.toJson(),
if (zonesSchemasOriginErrorPagePassThruRequest.isPresent) zonesSchemasOriginErrorPagePassThruRequest.value?.toJson(),
if (zonesCacheRulesOriginH2MaxStreamsRequest.isPresent) zonesCacheRulesOriginH2MaxStreamsRequest.value?.toJson(),
if (zonesCacheRulesOriginMaxHttpVersionRequest.isPresent) zonesCacheRulesOriginMaxHttpVersionRequest.value?.toJson(),
if (zonesSchemasPolishRequest.isPresent) zonesSchemasPolishRequest.value?.toJson(),
if (zonesPrefetchPreloadRequest.isPresent) zonesPrefetchPreloadRequest.value?.toJson(),
if (zonesPrivacyPassRequest.isPresent) zonesPrivacyPassRequest.value?.toJson(),
if (zonesProxyReadTimeoutRequest.isPresent) zonesProxyReadTimeoutRequest.value?.toJson(),
if (zonesPseudoIpv4Request.isPresent) zonesPseudoIpv4Request.value?.toJson(),
if (zonesRedirectsForAiTrainingRequest.isPresent) zonesRedirectsForAiTrainingRequest.value?.toJson(),
if (zonesReplaceInsecureJsRequest.isPresent) zonesReplaceInsecureJsRequest.value?.toJson(),
if (zonesSchemasResponseBufferingRequest.isPresent) zonesSchemasResponseBufferingRequest.value?.toJson(),
if (zonesSchemasRocketLoaderRequest.isPresent) zonesSchemasRocketLoaderRequest.value?.toJson(),
if (zonesSchemasAutomaticPlatformOptimizationRequest.isPresent) zonesSchemasAutomaticPlatformOptimizationRequest.value?.toJson(),
if (zonesSecurityHeaderRequest.isPresent) zonesSecurityHeaderRequest.value?.toJson(),
if (zonesSchemasSecurityLevelRequest.isPresent) zonesSchemasSecurityLevelRequest.value?.toJson(),
if (zonesServerSideExcludeRequest.isPresent) zonesServerSideExcludeRequest.value?.toJson(),
if (zonesSha1SupportRequest.isPresent) zonesSha1SupportRequest.value?.toJson(),
if (zonesSchemasSortQueryStringForCacheRequest.isPresent) zonesSchemasSortQueryStringForCacheRequest.value?.toJson(),
if (zonesSchemasSslRequest.isPresent) zonesSchemasSslRequest.value?.toJson(),
if (zonesSslRecommender.isPresent) zonesSslRecommender.value?.toJson(),
if (zonesTls12OnlyRequest.isPresent) zonesTls12OnlyRequest.value?.toJson(),
if (zonesTls13Request.isPresent) zonesTls13Request.value?.toJson(),
if (zonesTlsClientAuthRequest.isPresent) zonesTlsClientAuthRequest.value?.toJson(),
if (zonesSchemasTrueClientIpHeaderRequest.isPresent) zonesSchemasTrueClientIpHeaderRequest.value?.toJson(),
if (zonesSchemasWafRequest.isPresent) zonesSchemasWafRequest.value?.toJson(),
if (zonesWebpRequest.isPresent) zonesWebpRequest.value?.toJson(),
if (zonesWebsocketsRequest.isPresent) zonesWebsocketsRequest.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ZonesMultipleSettingsRequest2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ZonesMultipleSettingsRequest2(${toJson()})';
}
