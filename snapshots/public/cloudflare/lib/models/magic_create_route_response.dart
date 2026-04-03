// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route.dart';@immutable final class MagicCreateRouteResponse {const MagicCreateRouteResponse({this.result});

factory MagicCreateRouteResponse.fromJson(Map<String, dynamic> json) { return MagicCreateRouteResponse(
  result: json['result'] != null ? MagicRoute.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicRoute? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicCreateRouteResponse copyWith({MagicRoute Function()? result}) { return MagicCreateRouteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicCreateRouteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicCreateRouteResponse(result: $result)'; } 
 }
