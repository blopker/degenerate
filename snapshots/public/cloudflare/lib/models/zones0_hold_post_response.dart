// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0_hold_post_response_result.dart';@immutable final class Zones0HoldPostResponse {const Zones0HoldPostResponse({this.result});

factory Zones0HoldPostResponse.fromJson(Map<String, dynamic> json) { return Zones0HoldPostResponse(
  result: json['result'] != null ? Zones0HoldPostResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Zones0HoldPostResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Zones0HoldPostResponse copyWith({Zones0HoldPostResponseResult Function()? result}) { return Zones0HoldPostResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0HoldPostResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Zones0HoldPostResponse(result: $result)'; } 
 }
