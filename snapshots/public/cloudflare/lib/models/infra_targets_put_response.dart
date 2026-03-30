// GENERATED CODE - DO NOT MODIFY BY HAND

import 'infra_target.dart';final class InfraTargetsPutResponse {const InfraTargetsPutResponse({this.result});

factory InfraTargetsPutResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsPutResponse(
  result: json['result'] != null ? InfraTarget.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraTarget? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
InfraTargetsPutResponse copyWith({InfraTarget Function()? result}) { return InfraTargetsPutResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsPutResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'InfraTargetsPutResponse(result: $result)'; } 
 }
