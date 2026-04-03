// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_group_member.dart';@immutable final class AccountUserGroupMemberDeleteResponse {const AccountUserGroupMemberDeleteResponse({this.result});

factory AccountUserGroupMemberDeleteResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupMemberDeleteResponse(
  result: json['result'] != null ? IamUserGroupMember.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamUserGroupMember? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupMemberDeleteResponse copyWith({IamUserGroupMember Function()? result}) { return AccountUserGroupMemberDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupMemberDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountUserGroupMemberDeleteResponse(result: $result)'; } 
 }
