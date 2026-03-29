// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_timeseries_group_by_response_ttl_response_result.dart';final class RadarGetDnsTimeseriesGroupByResponseTtlResponse {const RadarGetDnsTimeseriesGroupByResponseTtlResponse({required this.result, required this.success, });

factory RadarGetDnsTimeseriesGroupByResponseTtlResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByResponseTtlResponse(
  result: RadarGetDnsTimeseriesGroupByResponseTtlResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsTimeseriesGroupByResponseTtlResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsTimeseriesGroupByResponseTtlResponse copyWith({RadarGetDnsTimeseriesGroupByResponseTtlResponseResult? result, bool? success, }) { return RadarGetDnsTimeseriesGroupByResponseTtlResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByResponseTtlResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseTtlResponse(result: $result, success: $success)'; } 
 }
