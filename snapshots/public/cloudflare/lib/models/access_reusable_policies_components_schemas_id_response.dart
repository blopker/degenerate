// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_reusable_policies_components_schemas_id_response_result.dart';@immutable final class AccessReusablePoliciesComponentsSchemasIdResponse {const AccessReusablePoliciesComponentsSchemasIdResponse({this.result});

factory AccessReusablePoliciesComponentsSchemasIdResponse.fromJson(Map<String, dynamic> json) { return AccessReusablePoliciesComponentsSchemasIdResponse(
  result: json['result'] != null ? AccessReusablePoliciesComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessReusablePoliciesComponentsSchemasIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessReusablePoliciesComponentsSchemasIdResponse copyWith({AccessReusablePoliciesComponentsSchemasIdResponseResult Function()? result}) { return AccessReusablePoliciesComponentsSchemasIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessReusablePoliciesComponentsSchemasIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessReusablePoliciesComponentsSchemasIdResponse(result: $result)'; } 
 }
