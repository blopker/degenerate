// GENERATED CODE - DO NOT MODIFY BY HAND

import 'infra_target.dart';final class InfraTargetsPostResponse {const InfraTargetsPostResponse({this.result});

factory InfraTargetsPostResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsPostResponse(
  result: json['result'] != null ? InfraTarget.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraTarget? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
InfraTargetsPostResponse copyWith({InfraTarget Function()? result}) { return InfraTargetsPostResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsPostResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'InfraTargetsPostResponse(result: $result)'; } 
 }
