// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_response.dart';@immutable final class AccessAppPoliciesComponentsSchemasSingleResponse {const AccessAppPoliciesComponentsSchemasSingleResponse({this.result});

factory AccessAppPoliciesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessAppPoliciesComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessAppPolicyResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessAppPolicyResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppPoliciesComponentsSchemasSingleResponse copyWith({AccessAppPolicyResponse Function()? result}) { return AccessAppPoliciesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPoliciesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessAppPoliciesComponentsSchemasSingleResponse(result: $result)'; } 
 }
