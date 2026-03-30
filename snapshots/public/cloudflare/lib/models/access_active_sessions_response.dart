// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_active_sessions_response_result.dart';final class AccessActiveSessionsResponse {const AccessActiveSessionsResponse({this.result});

factory AccessActiveSessionsResponse.fromJson(Map<String, dynamic> json) { return AccessActiveSessionsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessActiveSessionsResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessActiveSessionsResponseResult>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessActiveSessionsResponse copyWith({List<AccessActiveSessionsResponseResult> Function()? result}) { return AccessActiveSessionsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessActiveSessionsResponse(result: $result)'; } 
 }
