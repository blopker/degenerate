// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_response_result.dart';@immutable final class RadarGetDnsSummaryResponse {const RadarGetDnsSummaryResponse({required this.result, required this.success, });

factory RadarGetDnsSummaryResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryResponse(
  result: RadarGetDnsSummaryResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsSummaryResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryResponse copyWith({RadarGetDnsSummaryResponseResult? result, bool? success, }) { return RadarGetDnsSummaryResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsSummaryResponse(result: $result, success: $success)'; } 
 }
