// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_multiple_route_modified_response_result.dart';@immutable final class MagicMultipleRouteModifiedResponse {const MagicMultipleRouteModifiedResponse({this.result});

factory MagicMultipleRouteModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicMultipleRouteModifiedResponse(
  result: json['result'] != null ? MagicMultipleRouteModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicMultipleRouteModifiedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicMultipleRouteModifiedResponse copyWith({MagicMultipleRouteModifiedResponseResult Function()? result}) { return MagicMultipleRouteModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicMultipleRouteModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicMultipleRouteModifiedResponse(result: $result)'; } 
 }
