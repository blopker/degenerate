// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_identity_provider.dart';import 'access_identity_providers.dart';@immutable final class AccessComponentsSchemasSingleResponse {const AccessComponentsSchemasSingleResponse({this.result});

factory AccessComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessComponentsSchemasSingleResponse(
  result: json['result'] != null ? OneOf9.parse(json['result'], fromA: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromI: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>),) : null,
); }

final AccessIdentityProviders? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessComponentsSchemasSingleResponse copyWith({AccessIdentityProviders Function()? result}) { return AccessComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessComponentsSchemasSingleResponse(result: $result)'; } 
 }
