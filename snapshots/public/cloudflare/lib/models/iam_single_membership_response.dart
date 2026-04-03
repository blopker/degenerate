// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_membership.dart';@immutable final class IamSingleMembershipResponse {const IamSingleMembershipResponse({this.result});

factory IamSingleMembershipResponse.fromJson(Map<String, dynamic> json) { return IamSingleMembershipResponse(
  result: json['result'] != null ? IamMembership.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamMembership? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSingleMembershipResponse copyWith({IamMembership Function()? result}) { return IamSingleMembershipResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleMembershipResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSingleMembershipResponse(result: $result)'; } 
 }
