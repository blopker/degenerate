// GENERATED CODE - DO NOT MODIFY BY HAND

/// GitHub Actions cache storage policy for a repository.
final class ActionsCacheStorageLimitForRepository {const ActionsCacheStorageLimitForRepository({this.maxCacheSizeGb});

factory ActionsCacheStorageLimitForRepository.fromJson(Map<String, dynamic> json) { return ActionsCacheStorageLimitForRepository(
  maxCacheSizeGb: json['max_cache_size_gb'] != null ? (json['max_cache_size_gb'] as num).toInt() : null,
); }

/// The maximum total cache size for this repository, in gigabytes.
final int? maxCacheSizeGb;

Map<String, dynamic> toJson() { return {
  'max_cache_size_gb': ?maxCacheSizeGb,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_size_gb'}.contains(key)); } 
ActionsCacheStorageLimitForRepository copyWith({int Function()? maxCacheSizeGb}) { return ActionsCacheStorageLimitForRepository(
  maxCacheSizeGb: maxCacheSizeGb != null ? maxCacheSizeGb() : this.maxCacheSizeGb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheStorageLimitForRepository &&
          maxCacheSizeGb == other.maxCacheSizeGb; } 
@override int get hashCode { return maxCacheSizeGb.hashCode; } 
@override String toString() { return 'ActionsCacheStorageLimitForRepository(maxCacheSizeGb: $maxCacheSizeGb)'; } 
 }
