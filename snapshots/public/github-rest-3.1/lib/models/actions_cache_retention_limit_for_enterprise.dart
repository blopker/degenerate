// GENERATED CODE - DO NOT MODIFY BY HAND

/// GitHub Actions cache retention policy for an enterprise.
final class ActionsCacheRetentionLimitForEnterprise {const ActionsCacheRetentionLimitForEnterprise({this.maxCacheRetentionDays});

factory ActionsCacheRetentionLimitForEnterprise.fromJson(Map<String, dynamic> json) { return ActionsCacheRetentionLimitForEnterprise(
  maxCacheRetentionDays: json['max_cache_retention_days'] != null ? (json['max_cache_retention_days'] as num).toInt() : null,
); }

/// For repositories & organizations in an enterprise, the maximum duration, in days, for which caches in a repository may be retained.
final int? maxCacheRetentionDays;

Map<String, dynamic> toJson() { return {
  'max_cache_retention_days': ?maxCacheRetentionDays,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_retention_days'}.contains(key)); } 
ActionsCacheRetentionLimitForEnterprise copyWith({int Function()? maxCacheRetentionDays}) { return ActionsCacheRetentionLimitForEnterprise(
  maxCacheRetentionDays: maxCacheRetentionDays != null ? maxCacheRetentionDays() : this.maxCacheRetentionDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheRetentionLimitForEnterprise &&
          maxCacheRetentionDays == other.maxCacheRetentionDays; } 
@override int get hashCode { return maxCacheRetentionDays.hashCode; } 
@override String toString() { return 'ActionsCacheRetentionLimitForEnterprise(maxCacheRetentionDays: $maxCacheRetentionDays)'; } 
 }
