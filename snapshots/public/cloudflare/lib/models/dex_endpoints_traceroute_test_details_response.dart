// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_traceroute_details_response.dart';final class DexEndpointsTracerouteTestDetailsResponse {const DexEndpointsTracerouteTestDetailsResponse({this.result});

factory DexEndpointsTracerouteTestDetailsResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTracerouteTestDetailsResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringTracerouteDetailsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringTracerouteDetailsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsTracerouteTestDetailsResponse copyWith({DigitalExperienceMonitoringTracerouteDetailsResponse Function()? result}) { return DexEndpointsTracerouteTestDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTracerouteTestDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsTracerouteTestDetailsResponse(result: $result)'; } 
 }
