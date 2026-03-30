// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_user_group.dart';final class AccountUserGroupUpdateResponse {const AccountUserGroupUpdateResponse({this.result});

factory AccountUserGroupUpdateResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupUpdateResponse(
  result: json['result'] != null ? IamUserGroup.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamUserGroup? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccountUserGroupUpdateResponse copyWith({IamUserGroup Function()? result}) { return AccountUserGroupUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccountUserGroupUpdateResponse(result: $result)'; } 
 }
