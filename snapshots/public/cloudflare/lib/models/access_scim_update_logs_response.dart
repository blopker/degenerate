// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_responses.dart';final class AccessScimUpdateLogsResponse {const AccessScimUpdateLogsResponse({this.result});

factory AccessScimUpdateLogsResponse.fromJson(Map<String, dynamic> json) { return AccessScimUpdateLogsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessResponses.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessResponses>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessScimUpdateLogsResponse copyWith({List<AccessResponses> Function()? result}) { return AccessScimUpdateLogsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessScimUpdateLogsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessScimUpdateLogsResponse(result: $result)'; } 
 }
