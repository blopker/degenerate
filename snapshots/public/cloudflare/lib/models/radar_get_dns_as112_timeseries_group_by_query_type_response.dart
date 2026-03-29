// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_timeseries_group_by_query_type_response_result.dart';final class RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse {const RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse({required this.result, required this.success, });

factory RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse(
  result: RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse copyWith({RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult? result, bool? success, }) { return RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByQueryTypeResponse(result: $result, success: $success)'; } 
 }
