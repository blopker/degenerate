// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_group_by_ip_version_response_result.dart';@immutable final class RadarGetDnsAs112TimeseriesGroupByIpVersionResponse {const RadarGetDnsAs112TimeseriesGroupByIpVersionResponse({required this.result, required this.success, });

factory RadarGetDnsAs112TimeseriesGroupByIpVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByIpVersionResponse(
  result: RadarGetDnsAs112TimeseriesGroupByIpVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsAs112TimeseriesGroupByIpVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsAs112TimeseriesGroupByIpVersionResponse copyWith({RadarGetDnsAs112TimeseriesGroupByIpVersionResponseResult? result, bool? success, }) { return RadarGetDnsAs112TimeseriesGroupByIpVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByIpVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByIpVersionResponse(result: $result, success: $success)'; } 
 }
