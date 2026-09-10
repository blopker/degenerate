// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_settings_browser_ttl.dart';import 'rulesets_set_cache_settings_cache.dart';import 'rulesets_set_cache_settings_cache_key.dart';import 'rulesets_set_cache_settings_cache_reserve.dart';import 'rulesets_set_cache_settings_edge_ttl.dart';import 'rulesets_set_cache_settings_origin_cache_control.dart';import 'rulesets_set_cache_settings_origin_error_page_passthru.dart';import 'rulesets_set_cache_settings_read_timeout.dart';import 'rulesets_set_cache_settings_respect_strong_etags.dart';import 'rulesets_set_cache_settings_serve_stale.dart';import 'rulesets_set_cache_settings_strip_e_tags.dart';import 'rulesets_set_cache_settings_strip_last_modified.dart';import 'rulesets_set_cache_settings_strip_set_cookie.dart';@immutable final class RulesetsSetCacheSettingsRuleRequestActionParameters {const RulesetsSetCacheSettingsRuleRequestActionParameters({this.additionalCacheablePorts, this.browserTtl, this.cache, this.cacheKey, this.cacheReserve, this.edgeTtl, this.originCacheControl, this.originErrorPagePassthru, this.readTimeout, this.respectStrongEtags, this.serveStale, this.stripEtags, this.stripLastModified, this.stripSetCookie, });

factory RulesetsSetCacheSettingsRuleRequestActionParameters.fromJson(Map<String, dynamic> json) {return RulesetsSetCacheSettingsRuleRequestActionParameters(
  additionalCacheablePorts: (json['additional_cacheable_ports'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  browserTtl: json['browser_ttl'] != null ? RulesetsSetCacheSettingsBrowserTtl.fromJson(json['browser_ttl'] as Map<String, dynamic>) : null,
  cache: json['cache'] != null ? RulesetsSetCacheSettingsCache.fromJson(json['cache'] as bool) : null,
  cacheKey: json['cache_key'] != null ? RulesetsSetCacheSettingsCacheKey.fromJson(json['cache_key'] as Map<String, dynamic>) : null,
  cacheReserve: json['cache_reserve'] != null ? RulesetsSetCacheSettingsCacheReserve.fromJson(json['cache_reserve'] as Map<String, dynamic>) : null,
  edgeTtl: json['edge_ttl'] != null ? RulesetsSetCacheSettingsEdgeTtl.fromJson(json['edge_ttl'] as Map<String, dynamic>) : null,
  originCacheControl: json['origin_cache_control'] != null ? RulesetsSetCacheSettingsOriginCacheControl.fromJson(json['origin_cache_control'] as bool) : null,
  originErrorPagePassthru: json['origin_error_page_passthru'] != null ? RulesetsSetCacheSettingsOriginErrorPagePassthru.fromJson(json['origin_error_page_passthru'] as bool) : null,
  readTimeout: json['read_timeout'] != null ? RulesetsSetCacheSettingsReadTimeout.fromJson(json['read_timeout'] as num) : null,
  respectStrongEtags: json['respect_strong_etags'] != null ? RulesetsSetCacheSettingsRespectStrongEtags.fromJson(json['respect_strong_etags'] as bool) : null,
  serveStale: json['serve_stale'] != null ? RulesetsSetCacheSettingsServeStale.fromJson(json['serve_stale'] as Map<String, dynamic>) : null,
  stripEtags: json['strip_etags'] != null ? RulesetsSetCacheSettingsStripETags.fromJson(json['strip_etags'] as bool) : null,
  stripLastModified: json['strip_last_modified'] != null ? RulesetsSetCacheSettingsStripLastModified.fromJson(json['strip_last_modified'] as bool) : null,
  stripSetCookie: json['strip_set_cookie'] != null ? RulesetsSetCacheSettingsStripSetCookie.fromJson(json['strip_set_cookie'] as bool) : null,
);}

/// A list of additional ports that caching should be enabled on.
final List<int>? additionalCacheablePorts;

final RulesetsSetCacheSettingsBrowserTtl? browserTtl;

/// Whether the request's response from the origin is eligible for caching. Caching itself will still depend on the cache control header and your other caching configurations.
final RulesetsSetCacheSettingsCache? cache;

final RulesetsSetCacheSettingsCacheKey? cacheKey;

final RulesetsSetCacheSettingsCacheReserve? cacheReserve;

final RulesetsSetCacheSettingsEdgeTtl? edgeTtl;

/// Whether Cloudflare will aim to strictly adhere to RFC 7234.
final RulesetsSetCacheSettingsOriginCacheControl? originCacheControl;

/// Whether to generate Cloudflare error pages for issues from the origin server.
final RulesetsSetCacheSettingsOriginErrorPagePassthru? originErrorPagePassthru;

/// A timeout value between two successive read operations to use for your origin server. Historically, the timeout value between two read options from Cloudflare to an origin server is 100 seconds. If you are attempting to reduce HTTP 524 errors because of timeouts from an origin server, try increasing this timeout value.
final RulesetsSetCacheSettingsReadTimeout? readTimeout;

/// Whether Cloudflare should respect strong ETag (entity tag) headers. If false, Cloudflare converts strong ETag headers to weak ETag headers.
final RulesetsSetCacheSettingsRespectStrongEtags? respectStrongEtags;

final RulesetsSetCacheSettingsServeStale? serveStale;

/// Whether to strip ETag headers from the origin response before caching.
final RulesetsSetCacheSettingsStripETags? stripEtags;

/// Whether to strip Last-Modified headers from the origin response before caching.
final RulesetsSetCacheSettingsStripLastModified? stripLastModified;

/// Whether to strip Set-Cookie headers from the origin response before caching.
final RulesetsSetCacheSettingsStripSetCookie? stripSetCookie;

Map<String, dynamic> toJson() {return {
  'additional_cacheable_ports': ?additionalCacheablePorts,
  if (browserTtl != null) 'browser_ttl': browserTtl?.toJson(),
  if (cache != null) 'cache': cache?.toJson(),
  if (cacheKey != null) 'cache_key': cacheKey?.toJson(),
  if (cacheReserve != null) 'cache_reserve': cacheReserve?.toJson(),
  if (edgeTtl != null) 'edge_ttl': edgeTtl?.toJson(),
  if (originCacheControl != null) 'origin_cache_control': originCacheControl?.toJson(),
  if (originErrorPagePassthru != null) 'origin_error_page_passthru': originErrorPagePassthru?.toJson(),
  if (readTimeout != null) 'read_timeout': readTimeout?.toJson(),
  if (respectStrongEtags != null) 'respect_strong_etags': respectStrongEtags?.toJson(),
  if (serveStale != null) 'serve_stale': serveStale?.toJson(),
  if (stripEtags != null) 'strip_etags': stripEtags?.toJson(),
  if (stripLastModified != null) 'strip_last_modified': stripLastModified?.toJson(),
  if (stripSetCookie != null) 'strip_set_cookie': stripSetCookie?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'additional_cacheable_ports', 'browser_ttl', 'cache', 'cache_key', 'cache_reserve', 'edge_ttl', 'origin_cache_control', 'origin_error_page_passthru', 'read_timeout', 'respect_strong_etags', 'serve_stale', 'strip_etags', 'strip_last_modified', 'strip_set_cookie'}.contains(key));}
RulesetsSetCacheSettingsRuleRequestActionParameters copyWith({List<int>? Function()? additionalCacheablePorts, RulesetsSetCacheSettingsBrowserTtl? Function()? browserTtl, RulesetsSetCacheSettingsCache? Function()? cache, RulesetsSetCacheSettingsCacheKey? Function()? cacheKey, RulesetsSetCacheSettingsCacheReserve? Function()? cacheReserve, RulesetsSetCacheSettingsEdgeTtl? Function()? edgeTtl, RulesetsSetCacheSettingsOriginCacheControl? Function()? originCacheControl, RulesetsSetCacheSettingsOriginErrorPagePassthru? Function()? originErrorPagePassthru, RulesetsSetCacheSettingsReadTimeout? Function()? readTimeout, RulesetsSetCacheSettingsRespectStrongEtags? Function()? respectStrongEtags, RulesetsSetCacheSettingsServeStale? Function()? serveStale, RulesetsSetCacheSettingsStripETags? Function()? stripEtags, RulesetsSetCacheSettingsStripLastModified? Function()? stripLastModified, RulesetsSetCacheSettingsStripSetCookie? Function()? stripSetCookie, }) {return RulesetsSetCacheSettingsRuleRequestActionParameters(
  additionalCacheablePorts: additionalCacheablePorts != null ? additionalCacheablePorts() : this.additionalCacheablePorts,
  browserTtl: browserTtl != null ? browserTtl() : this.browserTtl,
  cache: cache != null ? cache() : this.cache,
  cacheKey: cacheKey != null ? cacheKey() : this.cacheKey,
  cacheReserve: cacheReserve != null ? cacheReserve() : this.cacheReserve,
  edgeTtl: edgeTtl != null ? edgeTtl() : this.edgeTtl,
  originCacheControl: originCacheControl != null ? originCacheControl() : this.originCacheControl,
  originErrorPagePassthru: originErrorPagePassthru != null ? originErrorPagePassthru() : this.originErrorPagePassthru,
  readTimeout: readTimeout != null ? readTimeout() : this.readTimeout,
  respectStrongEtags: respectStrongEtags != null ? respectStrongEtags() : this.respectStrongEtags,
  serveStale: serveStale != null ? serveStale() : this.serveStale,
  stripEtags: stripEtags != null ? stripEtags() : this.stripEtags,
  stripLastModified: stripLastModified != null ? stripLastModified() : this.stripLastModified,
  stripSetCookie: stripSetCookie != null ? stripSetCookie() : this.stripSetCookie,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsSetCacheSettingsRuleRequestActionParameters &&
          listEquals(additionalCacheablePorts, other.additionalCacheablePorts) &&
          browserTtl == other.browserTtl &&
          cache == other.cache &&
          cacheKey == other.cacheKey &&
          cacheReserve == other.cacheReserve &&
          edgeTtl == other.edgeTtl &&
          originCacheControl == other.originCacheControl &&
          originErrorPagePassthru == other.originErrorPagePassthru &&
          readTimeout == other.readTimeout &&
          respectStrongEtags == other.respectStrongEtags &&
          serveStale == other.serveStale &&
          stripEtags == other.stripEtags &&
          stripLastModified == other.stripLastModified &&
          stripSetCookie == other.stripSetCookie;}
@override int get hashCode {return Object.hash(Object.hashAll(additionalCacheablePorts ?? const []), browserTtl, cache, cacheKey, cacheReserve, edgeTtl, originCacheControl, originErrorPagePassthru, readTimeout, respectStrongEtags, serveStale, stripEtags, stripLastModified, stripSetCookie);}
@override String toString() {return 'RulesetsSetCacheSettingsRuleRequestActionParameters(additionalCacheablePorts: $additionalCacheablePorts, browserTtl: $browserTtl, cache: $cache, cacheKey: $cacheKey, cacheReserve: $cacheReserve, edgeTtl: $edgeTtl, originCacheControl: $originCacheControl, originErrorPagePassthru: $originErrorPagePassthru, readTimeout: $readTimeout, respectStrongEtags: $respectStrongEtags, serveStale: $serveStale, stripEtags: $stripEtags, stripLastModified: $stripLastModified, stripSetCookie: $stripSetCookie)';}
}
