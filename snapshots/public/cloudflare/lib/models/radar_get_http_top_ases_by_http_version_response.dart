// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_top_ases_by_http_version_response_result.dart';final class RadarGetHttpTopAsesByHttpVersionResponse {const RadarGetHttpTopAsesByHttpVersionResponse({required this.result, required this.success, });

factory RadarGetHttpTopAsesByHttpVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByHttpVersionResponse(
  result: RadarGetHttpTopAsesByHttpVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTopAsesByHttpVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTopAsesByHttpVersionResponse copyWith({RadarGetHttpTopAsesByHttpVersionResponseResult? result, bool? success, }) { return RadarGetHttpTopAsesByHttpVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByHttpVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpVersionResponse(result: $result, success: $success)'; } 
 }
