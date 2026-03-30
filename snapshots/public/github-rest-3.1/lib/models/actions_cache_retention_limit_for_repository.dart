// GENERATED CODE - DO NOT MODIFY BY HAND

/// GitHub Actions cache retention policy for a repository.
final class ActionsCacheRetentionLimitForRepository {const ActionsCacheRetentionLimitForRepository({this.maxCacheRetentionDays});

factory ActionsCacheRetentionLimitForRepository.fromJson(Map<String, dynamic> json) { return ActionsCacheRetentionLimitForRepository(
  maxCacheRetentionDays: json['max_cache_retention_days'] != null ? (json['max_cache_retention_days'] as num).toInt() : null,
); }

/// The maximum number of days to keep caches in this repository.
final int? maxCacheRetentionDays;

Map<String, dynamic> toJson() { return {
  'max_cache_retention_days': ?maxCacheRetentionDays,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_retention_days'}.contains(key)); } 
ActionsCacheRetentionLimitForRepository copyWith({int Function()? maxCacheRetentionDays}) { return ActionsCacheRetentionLimitForRepository(
  maxCacheRetentionDays: maxCacheRetentionDays != null ? maxCacheRetentionDays() : this.maxCacheRetentionDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheRetentionLimitForRepository &&
          maxCacheRetentionDays == other.maxCacheRetentionDays; } 
@override int get hashCode { return maxCacheRetentionDays.hashCode; } 
@override String toString() { return 'ActionsCacheRetentionLimitForRepository(maxCacheRetentionDays: $maxCacheRetentionDays)'; } 
 }
