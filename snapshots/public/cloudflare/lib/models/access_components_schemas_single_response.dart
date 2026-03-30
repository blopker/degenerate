// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_identity_providers.dart';final class AccessComponentsSchemasSingleResponse {const AccessComponentsSchemasSingleResponse({this.result});

factory AccessComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessIdentityProviders.fromJson(json['result'] as Map<String, dynamic>) : null,
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
