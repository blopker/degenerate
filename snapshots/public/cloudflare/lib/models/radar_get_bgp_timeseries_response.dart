// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_timeseries_response_result.dart';@immutable final class RadarGetBgpTimeseriesResponse {const RadarGetBgpTimeseriesResponse({required this.result, required this.success, });

factory RadarGetBgpTimeseriesResponse.fromJson(Map<String, dynamic> json) { return RadarGetBgpTimeseriesResponse(
  result: RadarGetBgpTimeseriesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetBgpTimeseriesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetBgpTimeseriesResponse copyWith({RadarGetBgpTimeseriesResponseResult? result, bool? success, }) { return RadarGetBgpTimeseriesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTimeseriesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetBgpTimeseriesResponse(result: $result, success: $success)'; } 
 }
