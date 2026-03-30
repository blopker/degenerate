// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aaa_id_response_result.dart';final class AaaIdResponse {const AaaIdResponse({this.result});

factory AaaIdResponse.fromJson(Map<String, dynamic> json) { return AaaIdResponse(
  result: json['result'] != null ? AaaIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AaaIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AaaIdResponse copyWith({AaaIdResponseResult Function()? result}) { return AaaIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AaaIdResponse(result: $result)'; } 
 }
