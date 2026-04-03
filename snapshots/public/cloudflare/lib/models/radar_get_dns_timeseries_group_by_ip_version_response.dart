// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_ip_version_response_result.dart';@immutable final class RadarGetDnsTimeseriesGroupByIpVersionResponse {const RadarGetDnsTimeseriesGroupByIpVersionResponse({required this.result, required this.success, });

factory RadarGetDnsTimeseriesGroupByIpVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByIpVersionResponse(
  result: RadarGetDnsTimeseriesGroupByIpVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsTimeseriesGroupByIpVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsTimeseriesGroupByIpVersionResponse copyWith({RadarGetDnsTimeseriesGroupByIpVersionResponseResult? result, bool? success, }) { return RadarGetDnsTimeseriesGroupByIpVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByIpVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByIpVersionResponse(result: $result, success: $success)'; } 
 }
