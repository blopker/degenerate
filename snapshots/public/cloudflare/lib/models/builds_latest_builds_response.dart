// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_build_response.dart';final class BuildsLatestBuildsResponse {const BuildsLatestBuildsResponse({this.builds});

factory BuildsLatestBuildsResponse.fromJson(Map<String, dynamic> json) { return BuildsLatestBuildsResponse(
  builds: (json['builds'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, BuildsBuildResponse.fromJson(v as Map<String, dynamic>))),
); }

final Map<String,BuildsBuildResponse>? builds;

Map<String, dynamic> toJson() { return {
  if (builds != null) 'builds': builds?.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BuildsLatestBuildsResponse copyWith({Map<String, BuildsBuildResponse> Function()? builds}) { return BuildsLatestBuildsResponse(
  builds: builds != null ? builds() : this.builds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsLatestBuildsResponse &&
          builds == other.builds; } 
@override int get hashCode { return builds.hashCode; } 
@override String toString() { return 'BuildsLatestBuildsResponse(builds: $builds)'; } 
 }
