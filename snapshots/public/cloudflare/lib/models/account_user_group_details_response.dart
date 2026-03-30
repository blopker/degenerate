// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_user_group.dart';final class AccountUserGroupDetailsResponse {const AccountUserGroupDetailsResponse({this.result});

factory AccountUserGroupDetailsResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupDetailsResponse(
  result: json['result'] != null ? IamUserGroup.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamUserGroup? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupDetailsResponse copyWith({IamUserGroup Function()? result}) { return AccountUserGroupDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountUserGroupDetailsResponse(result: $result)'; } 
 }
