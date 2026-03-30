// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_build_uuid.dart';import 'builds_created_on.dart';final class BuildsInsertBuildResponse {const BuildsInsertBuildResponse({this.buildUuid, this.createdOn, });

factory BuildsInsertBuildResponse.fromJson(Map<String, dynamic> json) { return BuildsInsertBuildResponse(
  buildUuid: json['build_uuid'] != null ? BuildsBuildUuid.fromJson(json['build_uuid'] as String) : null,
  createdOn: json['created_on'] != null ? BuildsCreatedOn.fromJson(json['created_on'] as String) : null,
); }

final BuildsBuildUuid? buildUuid;

final BuildsCreatedOn? createdOn;

Map<String, dynamic> toJson() { return {
  if (buildUuid != null) 'build_uuid': buildUuid?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'build_uuid', 'created_on'}.contains(key)); } 
BuildsInsertBuildResponse copyWith({BuildsBuildUuid Function()? buildUuid, BuildsCreatedOn Function()? createdOn, }) { return BuildsInsertBuildResponse(
  buildUuid: buildUuid != null ? buildUuid() : this.buildUuid,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsInsertBuildResponse &&
          buildUuid == other.buildUuid &&
          createdOn == other.createdOn; } 
@override int get hashCode { return Object.hash(buildUuid, createdOn); } 
@override String toString() { return 'BuildsInsertBuildResponse(buildUuid: $buildUuid, createdOn: $createdOn)'; } 
 }
