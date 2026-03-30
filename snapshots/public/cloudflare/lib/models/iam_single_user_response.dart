// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_single_user_response_result.dart';final class IamSingleUserResponse {const IamSingleUserResponse({this.result});

factory IamSingleUserResponse.fromJson(Map<String, dynamic> json) { return IamSingleUserResponse(
  result: json['result'] != null ? IamSingleUserResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamSingleUserResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleUserResponse copyWith({IamSingleUserResponseResult Function()? result}) { return IamSingleUserResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleUserResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleUserResponse(result: $result)'; } 
 }
