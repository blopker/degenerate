// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse {const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse(
  result: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse copyWith({RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult? result, bool? success, }) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByProtocolResponse(result: $result, success: $success)'; } 
 }
