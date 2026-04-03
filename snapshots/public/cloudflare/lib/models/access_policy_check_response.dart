// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_policy_check_response_result.dart';@immutable final class AccessPolicyCheckResponse {const AccessPolicyCheckResponse({this.result});

factory AccessPolicyCheckResponse.fromJson(Map<String, dynamic> json) { return AccessPolicyCheckResponse(
  result: json['result'] != null ? AccessPolicyCheckResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessPolicyCheckResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessPolicyCheckResponse copyWith({AccessPolicyCheckResponseResult Function()? result}) { return AccessPolicyCheckResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessPolicyCheckResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessPolicyCheckResponse(result: $result)'; } 
 }
