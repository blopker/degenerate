// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Which query string parameters to include in the cache key.
@immutable final class RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude {const RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude({this.all, this.list, });

factory RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude.fromJson(Map<String, dynamic> json) { return RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude(
  all: json['all'] as bool?,
  list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Whether to include all query string parameters in the cache key.
final bool? all;

/// A list of query string parameters to include in the cache key.
final List<String>? list;

Map<String, dynamic> toJson() { return {
  'all': ?all,
  'list': ?list,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'all', 'list'}.contains(key)); } 
RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude copyWith({bool Function()? all, List<String> Function()? list, }) { return RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude(
  all: all != null ? all() : this.all,
  list: list != null ? list() : this.list,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude &&
          all == other.all &&
          listEquals(list, other.list); } 
@override int get hashCode { return Object.hash(all, Object.hashAll(list ?? const [])); } 
@override String toString() { return 'RulesetsSetCacheSettingsCustomCacheKeyQueryStringInclude(all: $all, list: $list)'; } 
 }
