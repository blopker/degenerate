// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_timeseries_by_response_codes_response_result.dart';final class RadarGetDnsAs112TimeseriesByResponseCodesResponse {const RadarGetDnsAs112TimeseriesByResponseCodesResponse({required this.result, required this.success, });

factory RadarGetDnsAs112TimeseriesByResponseCodesResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByResponseCodesResponse(
  result: RadarGetDnsAs112TimeseriesByResponseCodesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsAs112TimeseriesByResponseCodesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsAs112TimeseriesByResponseCodesResponse copyWith({RadarGetDnsAs112TimeseriesByResponseCodesResponseResult? result, bool? success, }) { return RadarGetDnsAs112TimeseriesByResponseCodesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByResponseCodesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByResponseCodesResponse(result: $result, success: $success)'; } 
 }
