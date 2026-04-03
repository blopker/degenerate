// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_id_response_result.dart';@immutable final class HealthchecksIdResponse {const HealthchecksIdResponse({this.result});

factory HealthchecksIdResponse.fromJson(Map<String, dynamic> json) { return HealthchecksIdResponse(
  result: json['result'] != null ? HealthchecksIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final HealthchecksIdResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
HealthchecksIdResponse copyWith({HealthchecksIdResponseResult Function()? result}) { return HealthchecksIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'HealthchecksIdResponse(result: $result)'; } 
 }
