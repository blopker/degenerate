// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_traceroute_details_percentiles_response.dart';final class DexEndpointsTracerouteTestPercentilesResponse {const DexEndpointsTracerouteTestPercentilesResponse({this.result});

factory DexEndpointsTracerouteTestPercentilesResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTracerouteTestPercentilesResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringTracerouteDetailsPercentilesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringTracerouteDetailsPercentilesResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsTracerouteTestPercentilesResponse copyWith({DigitalExperienceMonitoringTracerouteDetailsPercentilesResponse Function()? result}) { return DexEndpointsTracerouteTestPercentilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTracerouteTestPercentilesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsTracerouteTestPercentilesResponse(result: $result)'; } 
 }
