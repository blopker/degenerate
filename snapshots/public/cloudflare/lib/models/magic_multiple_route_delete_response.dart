// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_multiple_route_delete_response_result.dart';@immutable final class MagicMultipleRouteDeleteResponse {const MagicMultipleRouteDeleteResponse({this.result});

factory MagicMultipleRouteDeleteResponse.fromJson(Map<String, dynamic> json) { return MagicMultipleRouteDeleteResponse(
  result: json['result'] != null ? MagicMultipleRouteDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicMultipleRouteDeleteResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicMultipleRouteDeleteResponse copyWith({MagicMultipleRouteDeleteResponseResult Function()? result}) { return MagicMultipleRouteDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicMultipleRouteDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicMultipleRouteDeleteResponse(result: $result)'; } 
 }
