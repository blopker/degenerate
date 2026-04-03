// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_by_dmarc_response_result.dart';@immutable final class RadarGetEmailRoutingSummaryByDmarcResponse {const RadarGetEmailRoutingSummaryByDmarcResponse({required this.result, required this.success, });

factory RadarGetEmailRoutingSummaryByDmarcResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByDmarcResponse(
  result: RadarGetEmailRoutingSummaryByDmarcResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailRoutingSummaryByDmarcResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailRoutingSummaryByDmarcResponse copyWith({RadarGetEmailRoutingSummaryByDmarcResponseResult? result, bool? success, }) { return RadarGetEmailRoutingSummaryByDmarcResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByDmarcResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDmarcResponse(result: $result, success: $success)'; } 
 }
