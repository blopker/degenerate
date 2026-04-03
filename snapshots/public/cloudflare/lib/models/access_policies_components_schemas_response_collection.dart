// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policies.dart';@immutable final class AccessPoliciesComponentsSchemasResponseCollection {const AccessPoliciesComponentsSchemasResponseCollection({this.result});

factory AccessPoliciesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessPoliciesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessPolicies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessPolicies>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPoliciesComponentsSchemasResponseCollection copyWith({List<AccessPolicies> Function()? result}) { return AccessPoliciesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPoliciesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessPoliciesComponentsSchemasResponseCollection(result: $result)'; } 
 }
