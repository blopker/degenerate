// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_fleet_status_over_time_response_result.dart';final class DigitalExperienceMonitoringFleetStatusOverTimeResponse {const DigitalExperienceMonitoringFleetStatusOverTimeResponse({this.result});

factory DigitalExperienceMonitoringFleetStatusOverTimeResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusOverTimeResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringFleetStatusOverTimeResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringFleetStatusOverTimeResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusOverTimeResponse copyWith({DigitalExperienceMonitoringFleetStatusOverTimeResponseResult Function()? result}) { return DigitalExperienceMonitoringFleetStatusOverTimeResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusOverTimeResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusOverTimeResponse(result: $result)'; } 
 }
