// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_membership_with_policies.dart';final class IamCollectionMembershipResponseWithPolicies {const IamCollectionMembershipResponseWithPolicies({this.result});

factory IamCollectionMembershipResponseWithPolicies.fromJson(Map<String, dynamic> json) { return IamCollectionMembershipResponseWithPolicies(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamMembershipWithPolicies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamMembershipWithPolicies>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamCollectionMembershipResponseWithPolicies copyWith({List<IamMembershipWithPolicies> Function()? result}) { return IamCollectionMembershipResponseWithPolicies(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCollectionMembershipResponseWithPolicies &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamCollectionMembershipResponseWithPolicies(result: $result)'; } 
 }
