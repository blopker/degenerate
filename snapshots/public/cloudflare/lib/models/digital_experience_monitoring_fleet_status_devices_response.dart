// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_device.dart';@immutable final class DigitalExperienceMonitoringFleetStatusDevicesResponse {const DigitalExperienceMonitoringFleetStatusDevicesResponse({this.result});

factory DigitalExperienceMonitoringFleetStatusDevicesResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusDevicesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringDevice.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DigitalExperienceMonitoringDevice>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusDevicesResponse copyWith({List<DigitalExperienceMonitoringDevice> Function()? result}) { return DigitalExperienceMonitoringFleetStatusDevicesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusDevicesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusDevicesResponse(result: $result)'; } 
 }
