// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rate_limits_for_a_zone_delete_a_rate_limit_response_result.dart';@immutable final class RateLimitsForAZoneDeleteARateLimitResponse {const RateLimitsForAZoneDeleteARateLimitResponse({this.result});

factory RateLimitsForAZoneDeleteARateLimitResponse.fromJson(Map<String, dynamic> json) { return RateLimitsForAZoneDeleteARateLimitResponse(
  result: json['result'] != null ? RateLimitsForAZoneDeleteARateLimitResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final RateLimitsForAZoneDeleteARateLimitResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
RateLimitsForAZoneDeleteARateLimitResponse copyWith({RateLimitsForAZoneDeleteARateLimitResponseResult Function()? result}) { return RateLimitsForAZoneDeleteARateLimitResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RateLimitsForAZoneDeleteARateLimitResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'RateLimitsForAZoneDeleteARateLimitResponse(result: $result)'; } 
 }
