// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_apps.dart';import 'access_schemas_basic_app_response_props.dart';@immutable final class AccessAppsComponentsSchemasResponseCollection2 {const AccessAppsComponentsSchemasResponseCollection2({this.result});

factory AccessAppsComponentsSchemasResponseCollection2.fromJson(Map<String, dynamic> json) { return AccessAppsComponentsSchemasResponseCollection2(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf8.parse(e, fromA: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasBasicAppResponseProps.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<AccessApps>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppsComponentsSchemasResponseCollection2 copyWith({List<AccessApps> Function()? result}) { return AccessAppsComponentsSchemasResponseCollection2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppsComponentsSchemasResponseCollection2 &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessAppsComponentsSchemasResponseCollection2(result: $result)'; } 
 }
