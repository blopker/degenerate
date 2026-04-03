// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_group_member.dart';@immutable final class AccountUserGroupMemberListResponse {const AccountUserGroupMemberListResponse({this.result});

factory AccountUserGroupMemberListResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupMemberListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamUserGroupMember.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamUserGroupMember>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupMemberListResponse copyWith({List<IamUserGroupMember> Function()? result}) { return AccountUserGroupMemberListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupMemberListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccountUserGroupMemberListResponse(result: $result)'; } 
 }
