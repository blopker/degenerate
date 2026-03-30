// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_name_response_result.dart';final class AccessNameResponse {const AccessNameResponse({this.result});

factory AccessNameResponse.fromJson(Map<String, dynamic> json) { return AccessNameResponse(
  result: json['result'] != null ? AccessNameResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessNameResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessNameResponse copyWith({AccessNameResponseResult Function()? result}) { return AccessNameResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessNameResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessNameResponse(result: $result)'; } 
 }
