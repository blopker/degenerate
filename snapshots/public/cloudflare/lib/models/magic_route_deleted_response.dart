// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_route_deleted_response_result.dart';final class MagicRouteDeletedResponse {const MagicRouteDeletedResponse({this.result});

factory MagicRouteDeletedResponse.fromJson(Map<String, dynamic> json) { return MagicRouteDeletedResponse(
  result: json['result'] != null ? MagicRouteDeletedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicRouteDeletedResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicRouteDeletedResponse copyWith({MagicRouteDeletedResponseResult Function()? result}) { return MagicRouteDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicRouteDeletedResponse(result: $result)'; } 
 }
