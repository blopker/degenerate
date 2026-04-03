// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_response.dart';@immutable final class AccessAppsComponentsSchemasSingleResponse {const AccessAppsComponentsSchemasSingleResponse({this.result});

factory AccessAppsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessAppsComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessAppResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppsComponentsSchemasSingleResponse copyWith({AccessAppResponse Function()? result}) { return AccessAppsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessAppsComponentsSchemasSingleResponse(result: $result)'; } 
 }
