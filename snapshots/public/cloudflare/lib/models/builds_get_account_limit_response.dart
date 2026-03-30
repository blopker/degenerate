// GENERATED CODE - DO NOT MODIFY BY HAND

final class BuildsGetAccountLimitResponse {const BuildsGetAccountLimitResponse({this.buildMinutesRefreshOn, this.hasReachedBuildMinutesLimit, });

factory BuildsGetAccountLimitResponse.fromJson(Map<String, dynamic> json) { return BuildsGetAccountLimitResponse(
  buildMinutesRefreshOn: json['build_minutes_refresh_on'] != null ? DateTime.parse(json['build_minutes_refresh_on'] as String) : null,
  hasReachedBuildMinutesLimit: json['has_reached_build_minutes_limit'] as bool?,
); }

/// When build minutes will refresh (only for non-paid plans)
final DateTime? buildMinutesRefreshOn;

/// Whether build minutes limit has been reached (only for non-paid plans)
final bool? hasReachedBuildMinutesLimit;

Map<String, dynamic> toJson() { return {
  if (buildMinutesRefreshOn != null) 'build_minutes_refresh_on': buildMinutesRefreshOn?.toIso8601String(),
  'has_reached_build_minutes_limit': ?hasReachedBuildMinutesLimit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'build_minutes_refresh_on', 'has_reached_build_minutes_limit'}.contains(key)); } 
BuildsGetAccountLimitResponse copyWith({DateTime? Function()? buildMinutesRefreshOn, bool? Function()? hasReachedBuildMinutesLimit, }) { return BuildsGetAccountLimitResponse(
  buildMinutesRefreshOn: buildMinutesRefreshOn != null ? buildMinutesRefreshOn() : this.buildMinutesRefreshOn,
  hasReachedBuildMinutesLimit: hasReachedBuildMinutesLimit != null ? hasReachedBuildMinutesLimit() : this.hasReachedBuildMinutesLimit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsGetAccountLimitResponse &&
          buildMinutesRefreshOn == other.buildMinutesRefreshOn &&
          hasReachedBuildMinutesLimit == other.hasReachedBuildMinutesLimit; } 
@override int get hashCode { return Object.hash(buildMinutesRefreshOn, hasReachedBuildMinutesLimit); } 
@override String toString() { return 'BuildsGetAccountLimitResponse(buildMinutesRefreshOn: $buildMinutesRefreshOn, hasReachedBuildMinutesLimit: $hasReachedBuildMinutesLimit)'; } 
 }
