// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_group.dart';@immutable final class AccountUserGroupListResponse {const AccountUserGroupListResponse({this.result});

factory AccountUserGroupListResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamUserGroup.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of user groups for the account.
final List<IamUserGroup>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupListResponse copyWith({List<IamUserGroup> Function()? result}) { return AccountUserGroupListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccountUserGroupListResponse(result: $result)'; } 
 }
