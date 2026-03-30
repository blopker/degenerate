// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_id_response_result.dart';final class AccessIdResponse {const AccessIdResponse({this.result});

factory AccessIdResponse.fromJson(Map<String, dynamic> json) { return AccessIdResponse(
  result: json['result'] != null ? AccessIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessIdResponse copyWith({AccessIdResponseResult Function()? result}) { return AccessIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessIdResponse(result: $result)'; } 
 }
