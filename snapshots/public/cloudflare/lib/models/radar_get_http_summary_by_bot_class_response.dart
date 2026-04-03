// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_bot_class_response_result.dart';@immutable final class RadarGetHttpSummaryByBotClassResponse {const RadarGetHttpSummaryByBotClassResponse({required this.result, required this.success, });

factory RadarGetHttpSummaryByBotClassResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByBotClassResponse(
  result: RadarGetHttpSummaryByBotClassResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpSummaryByBotClassResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpSummaryByBotClassResponse copyWith({RadarGetHttpSummaryByBotClassResponseResult? result, bool? success, }) { return RadarGetHttpSummaryByBotClassResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByBotClassResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassResponse(result: $result, success: $success)'; } 
 }
