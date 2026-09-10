// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BuildsGetAccountLimitResponse {const BuildsGetAccountLimitResponse({this.buildMinutesRefreshOn = const Omittable.absent(), this.hasReachedBuildMinutesLimit = const Omittable.absent(), });

factory BuildsGetAccountLimitResponse.fromJson(Map<String, dynamic> json) { return BuildsGetAccountLimitResponse(
  buildMinutesRefreshOn: json.containsKey('build_minutes_refresh_on') ? Omittable(json['build_minutes_refresh_on'] != null ? DateTime.parse(json['build_minutes_refresh_on'] as String) : null) : const Omittable.absent(),
  hasReachedBuildMinutesLimit: json.containsKey('has_reached_build_minutes_limit') ? Omittable(json['has_reached_build_minutes_limit'] as bool?) : const Omittable.absent(),
); }

/// When build minutes will refresh (only for non-paid plans)
final Omittable<DateTime?> buildMinutesRefreshOn;

/// Whether build minutes limit has been reached (only for non-paid plans)
final Omittable<bool?> hasReachedBuildMinutesLimit;

Map<String, dynamic> toJson() { return {
  if (buildMinutesRefreshOn.isPresent) 'build_minutes_refresh_on': buildMinutesRefreshOn.value?.toIso8601String(),
  if (hasReachedBuildMinutesLimit.isPresent) 'has_reached_build_minutes_limit': hasReachedBuildMinutesLimit.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'build_minutes_refresh_on', 'has_reached_build_minutes_limit'}.contains(key)); } 
BuildsGetAccountLimitResponse copyWith({Omittable<DateTime?>? buildMinutesRefreshOn, Omittable<bool?>? hasReachedBuildMinutesLimit, }) { return BuildsGetAccountLimitResponse(
  buildMinutesRefreshOn: buildMinutesRefreshOn ?? this.buildMinutesRefreshOn,
  hasReachedBuildMinutesLimit: hasReachedBuildMinutesLimit ?? this.hasReachedBuildMinutesLimit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsGetAccountLimitResponse &&
          buildMinutesRefreshOn == other.buildMinutesRefreshOn &&
          hasReachedBuildMinutesLimit == other.hasReachedBuildMinutesLimit; } 
@override int get hashCode { return Object.hash(buildMinutesRefreshOn, hasReachedBuildMinutesLimit); } 
@override String toString() { return 'BuildsGetAccountLimitResponse(buildMinutesRefreshOn: $buildMinutesRefreshOn, hasReachedBuildMinutesLimit: $hasReachedBuildMinutesLimit)'; } 
 }
