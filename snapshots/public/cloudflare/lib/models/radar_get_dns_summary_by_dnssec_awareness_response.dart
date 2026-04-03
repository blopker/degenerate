// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_dnssec_awareness_response_result.dart';@immutable final class RadarGetDnsSummaryByDnssecAwarenessResponse {const RadarGetDnsSummaryByDnssecAwarenessResponse({required this.result, required this.success, });

factory RadarGetDnsSummaryByDnssecAwarenessResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecAwarenessResponse(
  result: RadarGetDnsSummaryByDnssecAwarenessResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsSummaryByDnssecAwarenessResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryByDnssecAwarenessResponse copyWith({RadarGetDnsSummaryByDnssecAwarenessResponseResult? result, bool? success, }) { return RadarGetDnsSummaryByDnssecAwarenessResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecAwarenessResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecAwarenessResponse(result: $result, success: $success)'; } 
 }
