// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_posture_integrations.dart';@immutable final class TeamsDevicesSchemasResponseCollection {const TeamsDevicesSchemasResponseCollection({this.result});

factory TeamsDevicesSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDevicePostureIntegrations.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDevicePostureIntegrations>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesSchemasResponseCollection copyWith({List<TeamsDevicesDevicePostureIntegrations> Function()? result}) { return TeamsDevicesSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesSchemasResponseCollection(result: $result)'; } 
 }
