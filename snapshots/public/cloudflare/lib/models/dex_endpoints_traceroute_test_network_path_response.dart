// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_traceroute_test_network_path_response.dart';final class DexEndpointsTracerouteTestNetworkPathResponse {const DexEndpointsTracerouteTestNetworkPathResponse({this.result});

factory DexEndpointsTracerouteTestNetworkPathResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTracerouteTestNetworkPathResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringTracerouteTestNetworkPathResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringTracerouteTestNetworkPathResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsTracerouteTestNetworkPathResponse copyWith({DigitalExperienceMonitoringTracerouteTestNetworkPathResponse Function()? result}) { return DexEndpointsTracerouteTestNetworkPathResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTracerouteTestNetworkPathResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsTracerouteTestNetworkPathResponse(result: $result)'; } 
 }
