// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_schemas_identity_providers.dart';final class AccessIdentityProvidersComponentsSchemasSingleResponse {const AccessIdentityProvidersComponentsSchemasSingleResponse({this.result});

factory AccessIdentityProvidersComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessIdentityProvidersComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessSchemasIdentityProviders.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessSchemasIdentityProviders? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessIdentityProvidersComponentsSchemasSingleResponse copyWith({AccessSchemasIdentityProviders Function()? result}) { return AccessIdentityProvidersComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIdentityProvidersComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessIdentityProvidersComponentsSchemasSingleResponse(result: $result)'; } 
 }
