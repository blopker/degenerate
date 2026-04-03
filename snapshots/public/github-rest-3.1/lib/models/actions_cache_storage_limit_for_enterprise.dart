// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// GitHub Actions cache storage policy for an enterprise.
@immutable final class ActionsCacheStorageLimitForEnterprise {const ActionsCacheStorageLimitForEnterprise({this.maxCacheSizeGb});

factory ActionsCacheStorageLimitForEnterprise.fromJson(Map<String, dynamic> json) { return ActionsCacheStorageLimitForEnterprise(
  maxCacheSizeGb: json['max_cache_size_gb'] != null ? (json['max_cache_size_gb'] as num).toInt() : null,
); }

/// For repositories & organizations in an enterprise, the maximum size limit for the sum of all caches in a repository, in gigabytes.
final int? maxCacheSizeGb;

Map<String, dynamic> toJson() { return {
  'max_cache_size_gb': ?maxCacheSizeGb,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_size_gb'}.contains(key)); } 
ActionsCacheStorageLimitForEnterprise copyWith({int Function()? maxCacheSizeGb}) { return ActionsCacheStorageLimitForEnterprise(
  maxCacheSizeGb: maxCacheSizeGb != null ? maxCacheSizeGb() : this.maxCacheSizeGb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheStorageLimitForEnterprise &&
          maxCacheSizeGb == other.maxCacheSizeGb; } 
@override int get hashCode { return maxCacheSizeGb.hashCode; } 
@override String toString() { return 'ActionsCacheStorageLimitForEnterprise(maxCacheSizeGb: $maxCacheSizeGb)'; } 
 }
