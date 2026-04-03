// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policies.dart';@immutable final class AccessPoliciesComponentsSchemasSingleResponse {const AccessPoliciesComponentsSchemasSingleResponse({this.result});

factory AccessPoliciesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessPoliciesComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessPolicies.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessPolicies? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPoliciesComponentsSchemasSingleResponse copyWith({AccessPolicies Function()? result}) { return AccessPoliciesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPoliciesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessPoliciesComponentsSchemasSingleResponse(result: $result)'; } 
 }
