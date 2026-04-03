// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'healthchecks_healthchecks.dart';@immutable final class HealthchecksSingleResponse {const HealthchecksSingleResponse({this.result});

factory HealthchecksSingleResponse.fromJson(Map<String, dynamic> json) { return HealthchecksSingleResponse(
  result: json['result'] != null ? HealthchecksHealthchecks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final HealthchecksHealthchecks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
HealthchecksSingleResponse copyWith({HealthchecksHealthchecks Function()? result}) { return HealthchecksSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'HealthchecksSingleResponse(result: $result)'; } 
 }
