// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_commands_devices_response.dart';@immutable final class GetCommandsEligibleDevicesResponse {const GetCommandsEligibleDevicesResponse({this.result});

factory GetCommandsEligibleDevicesResponse.fromJson(Map<String, dynamic> json) { return GetCommandsEligibleDevicesResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringCommandsDevicesResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringCommandsDevicesResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
GetCommandsEligibleDevicesResponse copyWith({DigitalExperienceMonitoringCommandsDevicesResponse Function()? result}) { return GetCommandsEligibleDevicesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCommandsEligibleDevicesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'GetCommandsEligibleDevicesResponse(result: $result)'; } 
 }
