// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route_single_response_result.dart';@immutable final class MagicRouteSingleResponse {const MagicRouteSingleResponse({this.result});

factory MagicRouteSingleResponse.fromJson(Map<String, dynamic> json) { return MagicRouteSingleResponse(
  result: json['result'] != null ? MagicRouteSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicRouteSingleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicRouteSingleResponse copyWith({MagicRouteSingleResponseResult Function()? result}) { return MagicRouteSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicRouteSingleResponse(result: $result)'; } 
 }
