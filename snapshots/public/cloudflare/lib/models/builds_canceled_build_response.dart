// GENERATED CODE - DO NOT MODIFY BY HAND

import 'builds_build_outcome.dart';import 'builds_build_uuid.dart';import 'builds_stopped_on.dart';final class BuildsCanceledBuildResponse {const BuildsCanceledBuildResponse({this.buildOutcome, this.buildUuid, this.stoppedOn, });

factory BuildsCanceledBuildResponse.fromJson(Map<String, dynamic> json) { return BuildsCanceledBuildResponse(
  buildOutcome: json['build_outcome'] != null ? BuildsBuildOutcome.fromJson(json['build_outcome'] as String) : null,
  buildUuid: json['build_uuid'] != null ? BuildsBuildUuid.fromJson(json['build_uuid'] as String) : null,
  stoppedOn: json['stopped_on'] != null ? BuildsStoppedOn.fromJson(json['stopped_on'] as String) : null,
); }

final BuildsBuildOutcome? buildOutcome;

final BuildsBuildUuid? buildUuid;

final BuildsStoppedOn? stoppedOn;

Map<String, dynamic> toJson() { return {
  if (buildOutcome != null) 'build_outcome': buildOutcome?.toJson(),
  if (buildUuid != null) 'build_uuid': buildUuid?.toJson(),
  if (stoppedOn != null) 'stopped_on': stoppedOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BuildsCanceledBuildResponse copyWith({BuildsBuildOutcome Function()? buildOutcome, BuildsBuildUuid Function()? buildUuid, BuildsStoppedOn? Function()? stoppedOn, }) { return BuildsCanceledBuildResponse(
  buildOutcome: buildOutcome != null ? buildOutcome() : this.buildOutcome,
  buildUuid: buildUuid != null ? buildUuid() : this.buildUuid,
  stoppedOn: stoppedOn != null ? stoppedOn() : this.stoppedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BuildsCanceledBuildResponse &&
          buildOutcome == other.buildOutcome &&
          buildUuid == other.buildUuid &&
          stoppedOn == other.stoppedOn; } 
@override int get hashCode { return Object.hash(buildOutcome, buildUuid, stoppedOn); } 
@override String toString() { return 'BuildsCanceledBuildResponse(buildOutcome: $buildOutcome, buildUuid: $buildUuid, stoppedOn: $stoppedOn)'; } 
 }
