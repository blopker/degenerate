// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_identity_provider.dart';import 'access_schemas_identity_providers.dart';@immutable final class AccessIdentityProvidersComponentsSchemasSingleResponse {const AccessIdentityProvidersComponentsSchemasSingleResponse({this.result});

factory AccessIdentityProvidersComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessIdentityProvidersComponentsSchemasSingleResponse(
  result: json['result'] != null ? OneOf8.parse(json['result'], fromA: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessSchemasIdentityProvider.fromJson(v as Map<String, dynamic>),) : null,
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
