// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_reusable_policy_resp.dart';final class AccessReusablePoliciesComponentsSchemasSingleResponse {const AccessReusablePoliciesComponentsSchemasSingleResponse({this.result});

factory AccessReusablePoliciesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessReusablePoliciesComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessReusablePolicyResp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessReusablePolicyResp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessReusablePoliciesComponentsSchemasSingleResponse copyWith({AccessReusablePolicyResp Function()? result}) { return AccessReusablePoliciesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessReusablePoliciesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessReusablePoliciesComponentsSchemasSingleResponse(result: $result)'; } 
 }
