// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_warp_config_change_event.dart';import 'digital_experience_monitoring_warp_events_response2.dart';import 'digital_experience_monitoring_warp_toggle_change_event.dart';@immutable final class ListWarpChangeEventsResponse {const ListWarpChangeEventsResponse({this.result});

factory ListWarpChangeEventsResponse.fromJson(Map<String, dynamic> json) { return ListWarpChangeEventsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => DigitalExperienceMonitoringWarpToggleChangeEvent.fromJson(v as Map<String, dynamic>), fromB: (v) => DigitalExperienceMonitoringWarpConfigChangeEvent.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<DigitalExperienceMonitoringWarpEventsResponse2>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ListWarpChangeEventsResponse copyWith({List<DigitalExperienceMonitoringWarpEventsResponse2> Function()? result}) { return ListWarpChangeEventsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListWarpChangeEventsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ListWarpChangeEventsResponse(result: $result)'; } 
 }
