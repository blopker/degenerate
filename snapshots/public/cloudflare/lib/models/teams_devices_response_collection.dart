// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_device_posture_rules.dart';@immutable final class TeamsDevicesResponseCollection {const TeamsDevicesResponseCollection({this.result});

factory TeamsDevicesResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDevicePostureRules.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDevicePostureRules>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesResponseCollection copyWith({List<TeamsDevicesDevicePostureRules> Function()? result}) { return TeamsDevicesResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesResponseCollection(result: $result)'; } 
 }
