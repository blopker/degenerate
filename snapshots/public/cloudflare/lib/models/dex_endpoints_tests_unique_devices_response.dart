// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_unique_devices_response.dart';final class DexEndpointsTestsUniqueDevicesResponse {const DexEndpointsTestsUniqueDevicesResponse({this.result});

factory DexEndpointsTestsUniqueDevicesResponse.fromJson(Map<String, dynamic> json) { return DexEndpointsTestsUniqueDevicesResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringUniqueDevicesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringUniqueDevicesResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DexEndpointsTestsUniqueDevicesResponse copyWith({DigitalExperienceMonitoringUniqueDevicesResponse Function()? result}) { return DexEndpointsTestsUniqueDevicesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DexEndpointsTestsUniqueDevicesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DexEndpointsTestsUniqueDevicesResponse(result: $result)'; } 
 }
