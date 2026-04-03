// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_dnssec_response_result.dart';@immutable final class RadarGetDnsSummaryByDnssecResponse {const RadarGetDnsSummaryByDnssecResponse({required this.result, required this.success, });

factory RadarGetDnsSummaryByDnssecResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecResponse(
  result: RadarGetDnsSummaryByDnssecResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsSummaryByDnssecResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryByDnssecResponse copyWith({RadarGetDnsSummaryByDnssecResponseResult? result, bool? success, }) { return RadarGetDnsSummaryByDnssecResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecResponse(result: $result, success: $success)'; } 
 }
