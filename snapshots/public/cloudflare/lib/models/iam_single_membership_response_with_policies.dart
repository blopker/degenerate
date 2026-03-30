// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_membership_with_policies.dart';final class IamSingleMembershipResponseWithPolicies {const IamSingleMembershipResponseWithPolicies({this.result});

factory IamSingleMembershipResponseWithPolicies.fromJson(Map<String, dynamic> json) { return IamSingleMembershipResponseWithPolicies(
  result: json['result'] != null ? IamMembershipWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamMembershipWithPolicies? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleMembershipResponseWithPolicies copyWith({IamMembershipWithPolicies Function()? result}) { return IamSingleMembershipResponseWithPolicies(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleMembershipResponseWithPolicies &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleMembershipResponseWithPolicies(result: $result)'; } 
 }
