// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_tls_version_response_result.dart';@immutable final class RadarGetHttpSummaryByTlsVersionResponse {const RadarGetHttpSummaryByTlsVersionResponse({required this.result, required this.success, });

factory RadarGetHttpSummaryByTlsVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByTlsVersionResponse(
  result: RadarGetHttpSummaryByTlsVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpSummaryByTlsVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpSummaryByTlsVersionResponse copyWith({RadarGetHttpSummaryByTlsVersionResponseResult? result, bool? success, }) { return RadarGetHttpSummaryByTlsVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByTlsVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpSummaryByTlsVersionResponse(result: $result, success: $success)'; } 
 }
