// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_get_commands_response.dart';@immutable final class GetCommandsResponse {const GetCommandsResponse({this.result});

factory GetCommandsResponse.fromJson(Map<String, dynamic> json) { return GetCommandsResponse(
  result: json['result'] != null ? DigitalExperienceMonitoringGetCommandsResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringGetCommandsResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
GetCommandsResponse copyWith({DigitalExperienceMonitoringGetCommandsResponse Function()? result}) { return GetCommandsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCommandsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'GetCommandsResponse(result: $result)'; } 
 }
