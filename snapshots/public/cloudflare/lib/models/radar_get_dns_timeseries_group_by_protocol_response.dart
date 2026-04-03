// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_protocol_response_result.dart';@immutable final class RadarGetDnsTimeseriesGroupByProtocolResponse {const RadarGetDnsTimeseriesGroupByProtocolResponse({required this.result, required this.success, });

factory RadarGetDnsTimeseriesGroupByProtocolResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByProtocolResponse(
  result: RadarGetDnsTimeseriesGroupByProtocolResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsTimeseriesGroupByProtocolResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsTimeseriesGroupByProtocolResponse copyWith({RadarGetDnsTimeseriesGroupByProtocolResponseResult? result, bool? success, }) { return RadarGetDnsTimeseriesGroupByProtocolResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByProtocolResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByProtocolResponse(result: $result, success: $success)'; } 
 }
