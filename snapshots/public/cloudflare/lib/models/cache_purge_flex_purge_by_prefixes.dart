// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CachePurgeFlexPurgeByPrefixes {const CachePurgeFlexPurgeByPrefixes({this.prefixes});

factory CachePurgeFlexPurgeByPrefixes.fromJson(Map<String, dynamic> json) { return CachePurgeFlexPurgeByPrefixes(
  prefixes: (json['prefixes'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// For more information on purging by prefixes, please refer to [purge by prefix documentation page](https://developers.cloudflare.com/cache/how-to/purge-cache/purge_by_prefix/).
final List<String>? prefixes;

Map<String, dynamic> toJson() { return {
  'prefixes': ?prefixes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'prefixes'}.contains(key)); } 
CachePurgeFlexPurgeByPrefixes copyWith({List<String> Function()? prefixes}) { return CachePurgeFlexPurgeByPrefixes(
  prefixes: prefixes != null ? prefixes() : this.prefixes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CachePurgeFlexPurgeByPrefixes &&
          listEquals(prefixes, other.prefixes); } 
@override int get hashCode { return Object.hashAll(prefixes ?? const []).hashCode; } 
@override String toString() { return 'CachePurgeFlexPurgeByPrefixes(prefixes: $prefixes)'; } 
 }
