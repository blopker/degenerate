// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_devices.dart';@immutable final class TeamsDevicesDevicesResponse {const TeamsDevicesDevicesResponse({this.result});

factory TeamsDevicesDevicesResponse.fromJson(Map<String, dynamic> json) { return TeamsDevicesDevicesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => TeamsDevicesDevices.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<TeamsDevicesDevices>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
TeamsDevicesDevicesResponse copyWith({List<TeamsDevicesDevices> Function()? result}) { return TeamsDevicesDevicesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDevicesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'TeamsDevicesDevicesResponse(result: $result)'; } 
 }
