// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_traffic_anomalies_top_response_result.dart';final class RadarGetTrafficAnomaliesTopResponse {const RadarGetTrafficAnomaliesTopResponse({required this.result, required this.success, });

factory RadarGetTrafficAnomaliesTopResponse.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesTopResponse(
  result: RadarGetTrafficAnomaliesTopResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetTrafficAnomaliesTopResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetTrafficAnomaliesTopResponse copyWith({RadarGetTrafficAnomaliesTopResponseResult? result, bool? success, }) { return RadarGetTrafficAnomaliesTopResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesTopResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetTrafficAnomaliesTopResponse(result: $result, success: $success)'; } 
 }
