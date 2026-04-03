// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_reusable_policy_resp.dart';@immutable final class AccessReusablePoliciesComponentsSchemasResponseCollection {const AccessReusablePoliciesComponentsSchemasResponseCollection({this.result});

factory AccessReusablePoliciesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessReusablePoliciesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessReusablePolicyResp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessReusablePolicyResp>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessReusablePoliciesComponentsSchemasResponseCollection copyWith({List<AccessReusablePolicyResp> Function()? result}) { return AccessReusablePoliciesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessReusablePoliciesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessReusablePoliciesComponentsSchemasResponseCollection(result: $result)'; } 
 }
