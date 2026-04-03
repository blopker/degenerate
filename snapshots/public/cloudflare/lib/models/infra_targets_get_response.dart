// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_target.dart';@immutable final class InfraTargetsGetResponse {const InfraTargetsGetResponse({this.result});

factory InfraTargetsGetResponse.fromJson(Map<String, dynamic> json) { return InfraTargetsGetResponse(
  result: json['result'] != null ? InfraTarget.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final InfraTarget? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
InfraTargetsGetResponse copyWith({InfraTarget Function()? result}) { return InfraTargetsGetResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraTargetsGetResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'InfraTargetsGetResponse(result: $result)'; } 
 }
