// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'user_s_account_memberships_delete_membership_response_result.dart';@immutable final class UserSAccountMembershipsDeleteMembershipResponse {const UserSAccountMembershipsDeleteMembershipResponse({this.result});

factory UserSAccountMembershipsDeleteMembershipResponse.fromJson(Map<String, dynamic> json) { return UserSAccountMembershipsDeleteMembershipResponse(
  result: json['result'] != null ? UserSAccountMembershipsDeleteMembershipResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final UserSAccountMembershipsDeleteMembershipResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
UserSAccountMembershipsDeleteMembershipResponse copyWith({UserSAccountMembershipsDeleteMembershipResponseResult Function()? result}) { return UserSAccountMembershipsDeleteMembershipResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSAccountMembershipsDeleteMembershipResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'UserSAccountMembershipsDeleteMembershipResponse(result: $result)'; } 
 }
