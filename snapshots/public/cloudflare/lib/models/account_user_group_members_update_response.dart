// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_group_member.dart';final class AccountUserGroupMembersUpdateResponse {const AccountUserGroupMembersUpdateResponse({this.result});

factory AccountUserGroupMembersUpdateResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupMembersUpdateResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamUserGroupMember.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamUserGroupMember>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupMembersUpdateResponse copyWith({List<IamUserGroupMember> Function()? result}) { return AccountUserGroupMembersUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupMembersUpdateResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccountUserGroupMembersUpdateResponse(result: $result)'; } 
 }
