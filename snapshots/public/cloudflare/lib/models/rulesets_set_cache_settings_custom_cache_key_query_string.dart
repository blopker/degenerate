// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_settings_custom_cache_key_query_string_exclude.dart';import 'rulesets_set_cache_settings_custom_cache_key_query_string_include.dart';/// Which query string parameters to include in or exclude from the cache key.
@immutable final class RulesetsSetCacheSettingsCustomCacheKeyQueryString {const RulesetsSetCacheSettingsCustomCacheKeyQueryString({this.exclude, this.include, });

factory RulesetsSetCacheSettingsCustomCacheKeyQueryString.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsCustomCacheKeyQueryString(
  exclude: json['exclude'] != null ? RulesetsSetCacheSettingsCustomCacheKeyQueryStringExclude.fromJson(json['exclude'] as Map<String, dynamic>) : null,
  include: json['include'] != null ? RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude.fromJson(json['include'] as Map<String, dynamic>) : null,
); }

/// Which query string parameters to exclude from the cache key.
final RulesetsSetCacheSettingsCustomCacheKeyQueryStringExclude? exclude;

/// Which query string parameters to include in the cache key.
final RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude? include;

Map<String, dynamic> toJson() { return {
  if (exclude != null) 'exclude': exclude?.toJson(),
  if (include != null) 'include': include?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exclude', 'include'}.contains(key)); } 
RulesetsSetCacheSettingsCustomCacheKeyQueryString copyWith({RulesetsSetCacheSettingsCustomCacheKeyQueryStringExclude Function()? exclude, RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude Function()? include, }) { return RulesetsSetCacheSettingsCustomCacheKeyQueryString(
  exclude: exclude != null ? exclude() : this.exclude,
  include: include != null ? include() : this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsCustomCacheKeyQueryString &&
          exclude == other.exclude &&
          include == other.include; } 
@override int get hashCode { return Object.hash(exclude, include); } 
@override String toString() { return 'RulesetsSetCacheSettingsCustomCacheKeyQueryString(exclude: $exclude, include: $include)'; } 
 }
