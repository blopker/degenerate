// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_settings_custom_cache_key_cookie.dart';import 'rulesets_set_cache_settings_custom_cache_key_header.dart';import 'rulesets_set_cache_settings_custom_cache_key_host.dart';import 'rulesets_set_cache_settings_custom_cache_key_query_string.dart';import 'rulesets_set_cache_settings_custom_cache_key_user.dart';/// Which components of the request are included or excluded from the cache key.
@immutable final class RulesetsSetCacheSettingsCustomCacheKey {const RulesetsSetCacheSettingsCustomCacheKey({this.cookie, this.header, this.host, this.queryString, this.user, });

factory RulesetsSetCacheSettingsCustomCacheKey.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsCustomCacheKey(
  cookie: json['cookie'] != null ? RulesetsSetCacheSettingsCustomCacheKeyCookie.fromJson(json['cookie'] as Map<String, dynamic>) : null,
  header: json['header'] != null ? RulesetsSetCacheSettingsCustomCacheKeyHeader.fromJson(json['header'] as Map<String, dynamic>) : null,
  host: json['host'] != null ? RulesetsSetCacheSettingsCustomCacheKeyHost.fromJson(json['host'] as Map<String, dynamic>) : null,
  queryString: json['query_string'] != null ? RulesetsSetCacheSettingsCustomCacheKeyQueryString.fromJson(json['query_string'] as Map<String, dynamic>) : null,
  user: json['user'] != null ? RulesetsSetCacheSettingsCustomCacheKeyUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final RulesetsSetCacheSettingsCustomCacheKeyCookie? cookie;

final RulesetsSetCacheSettingsCustomCacheKeyHeader? header;

final RulesetsSetCacheSettingsCustomCacheKeyHost? host;

final RulesetsSetCacheSettingsCustomCacheKeyQueryString? queryString;

final RulesetsSetCacheSettingsCustomCacheKeyUser? user;

Map<String, dynamic> toJson() { return {
  if (cookie != null) 'cookie': cookie?.toJson(),
  if (header != null) 'header': header?.toJson(),
  if (host != null) 'host': host?.toJson(),
  if (queryString != null) 'query_string': queryString?.toJson(),
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cookie', 'header', 'host', 'query_string', 'user'}.contains(key)); } 
RulesetsSetCacheSettingsCustomCacheKey copyWith({RulesetsSetCacheSettingsCustomCacheKeyCookie Function()? cookie, RulesetsSetCacheSettingsCustomCacheKeyHeader Function()? header, RulesetsSetCacheSettingsCustomCacheKeyHost Function()? host, RulesetsSetCacheSettingsCustomCacheKeyQueryString Function()? queryString, RulesetsSetCacheSettingsCustomCacheKeyUser Function()? user, }) { return RulesetsSetCacheSettingsCustomCacheKey(
  cookie: cookie != null ? cookie() : this.cookie,
  header: header != null ? header() : this.header,
  host: host != null ? host() : this.host,
  queryString: queryString != null ? queryString() : this.queryString,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsCustomCacheKey &&
          cookie == other.cookie &&
          header == other.header &&
          host == other.host &&
          queryString == other.queryString &&
          user == other.user; } 
@override int get hashCode { return Object.hash(cookie, header, host, queryString, user); } 
@override String toString() { return 'RulesetsSetCacheSettingsCustomCacheKey(cookie: $cookie, header: $header, host: $host, queryString: $queryString, user: $user)'; } 
 }
