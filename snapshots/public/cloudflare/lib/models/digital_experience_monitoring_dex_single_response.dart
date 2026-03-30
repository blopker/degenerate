// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_device_dex_test_schemas_http.dart';final class DigitalExperienceMonitoringDexSingleResponse {const DigitalExperienceMonitoringDexSingleResponse({this.result});

factory DigitalExperienceMonitoringDexSingleResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDexSingleResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringDeviceDexTestSchemasHttp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringDeviceDexTestSchemasHttp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DigitalExperienceMonitoringDexSingleResponse copyWith({DigitalExperienceMonitoringDeviceDexTestSchemasHttp Function()? result}) { return DigitalExperienceMonitoringDexSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDexSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringDexSingleResponse(result: $result)'; } 
 }
