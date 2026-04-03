// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'builds_build_response.dart';@immutable final class BuildsBuildsByVersionResponse {const BuildsBuildsByVersionResponse({this.builds});

factory BuildsBuildsByVersionResponse.fromJson(Map<String, dynamic> json) { return BuildsBuildsByVersionResponse(
  builds: (json['builds'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, BuildsBuildResponse.fromJson(v as Map<String, dynamic>))),
); }

final Map<String,BuildsBuildResponse>? builds;

Map<String, dynamic> toJson() { return {
  if (builds != null) 'builds': builds?.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'builds'}.contains(key)); } 
BuildsBuildsByVersionResponse copyWith({Map<String, BuildsBuildResponse> Function()? builds}) { return BuildsBuildsByVersionResponse(
  builds: builds != null ? builds() : this.builds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsBuildsByVersionResponse &&
          builds == other.builds; } 
@override int get hashCode { return builds.hashCode; } 
@override String toString() { return 'BuildsBuildsByVersionResponse(builds: $builds)'; } 
 }
