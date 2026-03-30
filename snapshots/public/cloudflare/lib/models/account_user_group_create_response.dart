// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_user_group.dart';final class AccountUserGroupCreateResponse {const AccountUserGroupCreateResponse({this.result});

factory AccountUserGroupCreateResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupCreateResponse(
  result: json['result'] != null ? IamUserGroup.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamUserGroup? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupCreateResponse copyWith({IamUserGroup Function()? result}) { return AccountUserGroupCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountUserGroupCreateResponse(result: $result)'; } 
 }
