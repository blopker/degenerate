// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_device_managed_networks.dart';final class TeamsDevicesComponentsSchemasSingleResponse {const TeamsDevicesComponentsSchemasSingleResponse({this.result});

factory TeamsDevicesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesComponentsSchemasSingleResponse(
  result: json['result'] != null ? TeamsDevicesDeviceManagedNetworks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final TeamsDevicesDeviceManagedNetworks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesComponentsSchemasSingleResponse copyWith({TeamsDevicesDeviceManagedNetworks Function()? result}) { return TeamsDevicesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'TeamsDevicesComponentsSchemasSingleResponse(result: $result)'; } 
 }
