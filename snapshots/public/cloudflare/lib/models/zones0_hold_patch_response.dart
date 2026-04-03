// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0_hold_patch_response_result.dart';@immutable final class Zones0HoldPatchResponse {const Zones0HoldPatchResponse({this.result});

factory Zones0HoldPatchResponse.fromJson(Map<String, dynamic> json) { return Zones0HoldPatchResponse(
  result: json['result'] != null ? Zones0HoldPatchResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Zones0HoldPatchResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
Zones0HoldPatchResponse copyWith({Zones0HoldPatchResponseResult Function()? result}) { return Zones0HoldPatchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0HoldPatchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'Zones0HoldPatchResponse(result: $result)'; } 
 }
