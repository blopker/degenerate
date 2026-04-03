// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_reports_datasets_response_result.dart';@immutable final class RadarGetReportsDatasetsResponse {const RadarGetReportsDatasetsResponse({required this.result, required this.success, });

factory RadarGetReportsDatasetsResponse.fromJson(Map<String, dynamic> json) { return RadarGetReportsDatasetsResponse(
  result: RadarGetReportsDatasetsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetReportsDatasetsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetReportsDatasetsResponse copyWith({RadarGetReportsDatasetsResponseResult? result, bool? success, }) { return RadarGetReportsDatasetsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetReportsDatasetsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetReportsDatasetsResponse(result: $result, success: $success)'; } 
 }
