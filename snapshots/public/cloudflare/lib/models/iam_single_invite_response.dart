// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_user_invite.dart';final class IamSingleInviteResponse {const IamSingleInviteResponse({this.result});

factory IamSingleInviteResponse.fromJson(Map<String, dynamic> json) { return IamSingleInviteResponse(
  result: json['result'] != null ? IamUserInvite.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamUserInvite? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleInviteResponse copyWith({IamUserInvite Function()? result}) { return IamSingleInviteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleInviteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleInviteResponse(result: $result)'; } 
 }
