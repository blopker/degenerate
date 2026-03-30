// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_member_with_policies.dart';final class IamSingleMemberResponseWithPolicies {const IamSingleMemberResponseWithPolicies({this.result});

factory IamSingleMemberResponseWithPolicies.fromJson(Map<String, dynamic> json) { return IamSingleMemberResponseWithPolicies(
  result: json['result'] != null ? IamMemberWithPolicies.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamMemberWithPolicies? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleMemberResponseWithPolicies copyWith({IamMemberWithPolicies Function()? result}) { return IamSingleMemberResponseWithPolicies(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleMemberResponseWithPolicies &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleMemberResponseWithPolicies(result: $result)'; } 
 }
