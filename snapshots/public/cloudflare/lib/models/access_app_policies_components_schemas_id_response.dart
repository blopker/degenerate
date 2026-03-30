// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_app_policies_components_schemas_id_response_result.dart';final class AccessAppPoliciesComponentsSchemasIdResponse {const AccessAppPoliciesComponentsSchemasIdResponse({this.result});

factory AccessAppPoliciesComponentsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return AccessAppPoliciesComponentsSchemasIdResponse(
  result: json['result'] != null ? AccessAppPoliciesComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppPoliciesComponentsSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppPoliciesComponentsSchemasIdResponse copyWith({AccessAppPoliciesComponentsSchemasIdResponseResult Function()? result}) { return AccessAppPoliciesComponentsSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPoliciesComponentsSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessAppPoliciesComponentsSchemasIdResponse(result: $result)'; } 
 }
