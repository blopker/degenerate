// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_role.dart';final class IamSingleRoleResponse {const IamSingleRoleResponse({this.result});

factory IamSingleRoleResponse.fromJson(Map<String, dynamic> json) { return IamSingleRoleResponse(
  result: json['result'] != null ? IamRole.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamRole? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleRoleResponse copyWith({IamRole Function()? result}) { return IamSingleRoleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleRoleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleRoleResponse(result: $result)'; } 
 }
