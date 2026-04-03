// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Which headers to include in the cache key.
@immutable final class RulesetsSetCacheSettingsCustomCacheKeyHeader {const RulesetsSetCacheSettingsCustomCacheKeyHeader({this.checkPresence, this.contains, this.excludeOrigin, this.include, });

factory RulesetsSetCacheSettingsCustomCacheKeyHeader.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsCustomCacheKeyHeader(
  checkPresence: (json['check_presence'] as List<dynamic>?)?.map((e) => e as String).toList(),
  contains: (json['contains'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  excludeOrigin: json['exclude_origin'] as bool?,
  include: (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of headers to check for the presence of. The presence of these headers is included in the cache key.
final List<String>? checkPresence;

/// A mapping of header names to a list of values. If a header is present in the request and contains any of the values provided, its value is included in the cache key.
final Map<String,List<String>>? contains;

/// Whether to exclude the origin header in the cache key.
final bool? excludeOrigin;

/// A list of headers to include in the cache key.
final List<String>? include;

Map<String, dynamic> toJson() { return {
  'check_presence': ?checkPresence,
  if (contains != null) 'contains': contains?.map((k, v) => MapEntry(k, v)),
  'exclude_origin': ?excludeOrigin,
  'include': ?include,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'check_presence', 'contains', 'exclude_origin', 'include'}.contains(key)); } 
RulesetsSetCacheSettingsCustomCacheKeyHeader copyWith({List<String> Function()? checkPresence, Map<String, List<String>> Function()? contains, bool Function()? excludeOrigin, List<String> Function()? include, }) { return RulesetsSetCacheSettingsCustomCacheKeyHeader(
  checkPresence: checkPresence != null ? checkPresence() : this.checkPresence,
  contains: contains != null ? contains() : this.contains,
  excludeOrigin: excludeOrigin != null ? excludeOrigin() : this.excludeOrigin,
  include: include != null ? include() : this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsCustomCacheKeyHeader &&
          listEquals(checkPresence, other.checkPresence) &&
          contains == other.contains &&
          excludeOrigin == other.excludeOrigin &&
          listEquals(include, other.include); } 
@override int get hashCode { return Object.hash(Object.hashAll(checkPresence ?? const []), contains, excludeOrigin, Object.hashAll(include ?? const [])); } 
@override String toString() { return 'RulesetsSetCacheSettingsCustomCacheKeyHeader(checkPresence: $checkPresence, contains: $contains, excludeOrigin: $excludeOrigin, include: $include)'; } 
 }
