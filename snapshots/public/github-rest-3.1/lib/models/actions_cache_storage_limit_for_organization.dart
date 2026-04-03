// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// GitHub Actions cache storage policy for an organization.
@immutable final class ActionsCacheStorageLimitForOrganization {const ActionsCacheStorageLimitForOrganization({this.maxCacheSizeGb});

factory ActionsCacheStorageLimitForOrganization.fromJson(Map<String, dynamic> json) { return ActionsCacheStorageLimitForOrganization(
  maxCacheSizeGb: json['max_cache_size_gb'] != null ? (json['max_cache_size_gb'] as num).toInt() : null,
); }

/// For repositories in the organization, the maximum size limit for the sum of all caches in a repository, in gigabytes.
final int? maxCacheSizeGb;

Map<String, dynamic> toJson() { return {
  'max_cache_size_gb': ?maxCacheSizeGb,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_size_gb'}.contains(key)); } 
ActionsCacheStorageLimitForOrganization copyWith({int Function()? maxCacheSizeGb}) { return ActionsCacheStorageLimitForOrganization(
  maxCacheSizeGb: maxCacheSizeGb != null ? maxCacheSizeGb() : this.maxCacheSizeGb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheStorageLimitForOrganization &&
          maxCacheSizeGb == other.maxCacheSizeGb; } 
@override int get hashCode { return maxCacheSizeGb.hashCode; } 
@override String toString() { return 'ActionsCacheStorageLimitForOrganization(maxCacheSizeGb: $maxCacheSizeGb)'; } 
 }
