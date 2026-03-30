// GENERATED CODE - DO NOT MODIFY BY HAND

/// GitHub Actions cache retention policy for an organization.
final class ActionsCacheRetentionLimitForOrganization {const ActionsCacheRetentionLimitForOrganization({this.maxCacheRetentionDays});

factory ActionsCacheRetentionLimitForOrganization.fromJson(Map<String, dynamic> json) { return ActionsCacheRetentionLimitForOrganization(
  maxCacheRetentionDays: json['max_cache_retention_days'] != null ? (json['max_cache_retention_days'] as num).toInt() : null,
); }

/// For repositories in this organization, the maximum duration, in days, for which caches in a repository may be retained.
final int? maxCacheRetentionDays;

Map<String, dynamic> toJson() { return {
  'max_cache_retention_days': ?maxCacheRetentionDays,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_cache_retention_days'}.contains(key)); } 
ActionsCacheRetentionLimitForOrganization copyWith({int Function()? maxCacheRetentionDays}) { return ActionsCacheRetentionLimitForOrganization(
  maxCacheRetentionDays: maxCacheRetentionDays != null ? maxCacheRetentionDays() : this.maxCacheRetentionDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCacheRetentionLimitForOrganization &&
          maxCacheRetentionDays == other.maxCacheRetentionDays; } 
@override int get hashCode { return maxCacheRetentionDays.hashCode; } 
@override String toString() { return 'ActionsCacheRetentionLimitForOrganization(maxCacheRetentionDays: $maxCacheRetentionDays)'; } 
 }
