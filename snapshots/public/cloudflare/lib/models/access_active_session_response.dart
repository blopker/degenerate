// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_active_session_response_result.dart';@immutable final class AccessActiveSessionResponse {const AccessActiveSessionResponse({this.result});

factory AccessActiveSessionResponse.fromJson(Map<String, dynamic> json) { return AccessActiveSessionResponse(
  result: json['result'] != null ? AccessActiveSessionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessActiveSessionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessActiveSessionResponse copyWith({AccessActiveSessionResponseResult Function()? result}) { return AccessActiveSessionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessActiveSessionResponse(result: $result)'; } 
 }
