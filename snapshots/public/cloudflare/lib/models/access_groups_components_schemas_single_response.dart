// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_groups.dart';final class AccessGroupsComponentsSchemasSingleResponse {const AccessGroupsComponentsSchemasSingleResponse({this.result});

factory AccessGroupsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessGroupsComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasGroups? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessGroupsComponentsSchemasSingleResponse copyWith({AccessSchemasGroups Function()? result}) { return AccessGroupsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroupsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessGroupsComponentsSchemasSingleResponse(result: $result)'; } 
 }
