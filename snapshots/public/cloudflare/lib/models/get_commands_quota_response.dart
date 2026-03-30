// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_get_commands_quota_response.dart';final class GetCommandsQuotaResponse {const GetCommandsQuotaResponse({this.result});

factory GetCommandsQuotaResponse.fromJson(Map<String, dynamic> json) { return GetCommandsQuotaResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringGetCommandsQuotaResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringGetCommandsQuotaResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
GetCommandsQuotaResponse copyWith({DigitalExperienceMonitoringGetCommandsQuotaResponse Function()? result}) { return GetCommandsQuotaResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCommandsQuotaResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'GetCommandsQuotaResponse(result: $result)'; } 
 }
