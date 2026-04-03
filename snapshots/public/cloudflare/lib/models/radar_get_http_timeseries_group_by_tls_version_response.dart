// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_tls_version_response_result.dart';@immutable final class RadarGetHttpTimeseriesGroupByTlsVersionResponse {const RadarGetHttpTimeseriesGroupByTlsVersionResponse({required this.result, required this.success, });

factory RadarGetHttpTimeseriesGroupByTlsVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByTlsVersionResponse(
  result: RadarGetHttpTimeseriesGroupByTlsVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTimeseriesGroupByTlsVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTimeseriesGroupByTlsVersionResponse copyWith({RadarGetHttpTimeseriesGroupByTlsVersionResponseResult? result, bool? success, }) { return RadarGetHttpTimeseriesGroupByTlsVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByTlsVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByTlsVersionResponse(result: $result, success: $success)'; } 
 }
