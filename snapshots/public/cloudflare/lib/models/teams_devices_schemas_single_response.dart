// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_posture_integrations.dart';@immutable final class TeamsDevicesSchemasSingleResponse {const TeamsDevicesSchemasSingleResponse({this.result});

factory TeamsDevicesSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesSchemasSingleResponse(
  result: json['result'] != null ? TeamsDevicesDevicePostureIntegrations.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDevicePostureIntegrations? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesSchemasSingleResponse copyWith({TeamsDevicesDevicePostureIntegrations Function()? result}) { return TeamsDevicesSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesSchemasSingleResponse(result: $result)'; } 
 }
