// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aaa_sensitive_id_response_result.dart';final class AaaSensitiveIdResponse {const AaaSensitiveIdResponse({this.result});

factory AaaSensitiveIdResponse.fromJson(Map<String, dynamic> json) { return AaaSensitiveIdResponse(
  result: json['result'] != null ? AaaSensitiveIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AaaSensitiveIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AaaSensitiveIdResponse copyWith({AaaSensitiveIdResponseResult Function()? result}) { return AaaSensitiveIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSensitiveIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AaaSensitiveIdResponse(result: $result)'; } 
 }
