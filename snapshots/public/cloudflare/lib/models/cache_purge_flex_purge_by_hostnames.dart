// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CachePurgeFlexPurgeByHostnames {const CachePurgeFlexPurgeByHostnames({this.hosts});

factory CachePurgeFlexPurgeByHostnames.fromJson(Map<String, dynamic> json) { return CachePurgeFlexPurgeByHostnames(
  hosts: (json['hosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// For more information purging by hostnames, please refer to [purge by hostname documentation page](https://developers.cloudflare.com/cache/how-to/purge-cache/purge-by-hostname/).
final List<String>? hosts;

Map<String, dynamic> toJson() { return {
  'hosts': ?hosts,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CachePurgeFlexPurgeByHostnames copyWith({List<String> Function()? hosts}) { return CachePurgeFlexPurgeByHostnames(
  hosts: hosts != null ? hosts() : this.hosts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CachePurgeFlexPurgeByHostnames &&
          listEquals(hosts, other.hosts); } 
@override int get hashCode { return Object.hashAll(hosts ?? const []).hashCode; } 
@override String toString() { return 'CachePurgeFlexPurgeByHostnames(hosts: $hosts)'; } 
 }
