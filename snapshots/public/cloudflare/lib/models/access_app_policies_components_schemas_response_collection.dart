// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policy_response.dart';@immutable final class AccessAppPoliciesComponentsSchemasResponseCollection {const AccessAppPoliciesComponentsSchemasResponseCollection({this.result});

factory AccessAppPoliciesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessAppPoliciesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessAppPolicyResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessAppPoliciesComponentsSchemasResponseCollection copyWith({List<AccessAppPolicyResponse> Function()? result}) { return AccessAppPoliciesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPoliciesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessAppPoliciesComponentsSchemasResponseCollection(result: $result)'; } 
 }
