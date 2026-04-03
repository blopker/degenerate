// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps.dart';import 'access_schemas_basic_app_response_props.dart';@immutable final class ZoneLevelAccessApplicationsAddABookmarkApplicationResponse {const ZoneLevelAccessApplicationsAddABookmarkApplicationResponse({this.result});

factory ZoneLevelAccessApplicationsAddABookmarkApplicationResponse.fromJson(Map<String, dynamic> json) { return ZoneLevelAccessApplicationsAddABookmarkApplicationResponse(
  result: json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),) : null,
); }

final AccessApps? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZoneLevelAccessApplicationsAddABookmarkApplicationResponse copyWith({AccessApps Function()? result}) { return ZoneLevelAccessApplicationsAddABookmarkApplicationResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLevelAccessApplicationsAddABookmarkApplicationResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZoneLevelAccessApplicationsAddABookmarkApplicationResponse(result: $result)'; } 
 }
