// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_traceroute_test_result_network_path_response.dart';@immutable final class DexEndpointsTracerouteTestResultNetworkPathResponse {const DexEndpointsTracerouteTestResultNetworkPathResponse({this.result});

factory DexEndpointsTracerouteTestResultNetworkPathResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTracerouteTestResultNetworkPathResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsTracerouteTestResultNetworkPathResponse copyWith({DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponse Function()? result}) { return DexEndpointsTracerouteTestResultNetworkPathResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTracerouteTestResultNetworkPathResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsTracerouteTestResultNetworkPathResponse(result: $result)'; } 
 }
