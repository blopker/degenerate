// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_organizations.dart';final class AccessOrganizationsComponentsSchemasSingleResponse {const AccessOrganizationsComponentsSchemasSingleResponse({this.result});

factory AccessOrganizationsComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessOrganizationsComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessSchemasOrganizations.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasOrganizations? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessOrganizationsComponentsSchemasSingleResponse copyWith({AccessSchemasOrganizations Function()? result}) { return AccessOrganizationsComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOrganizationsComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessOrganizationsComponentsSchemasSingleResponse(result: $result)'; } 
 }
