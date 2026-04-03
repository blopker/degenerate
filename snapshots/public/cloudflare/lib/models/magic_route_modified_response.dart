// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route_modified_response_result.dart';@immutable final class MagicRouteModifiedResponse {const MagicRouteModifiedResponse({this.result});

factory MagicRouteModifiedResponse.fromJson(Map<String, dynamic> json) { return MagicRouteModifiedResponse(
  result: json['result'] != null ? MagicRouteModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicRouteModifiedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicRouteModifiedResponse copyWith({MagicRouteModifiedResponseResult Function()? result}) { return MagicRouteModifiedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteModifiedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicRouteModifiedResponse(result: $result)'; } 
 }
