// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_top_locations_by_tls_version_response_result.dart';final class RadarGetHttpTopLocationsByTlsVersionResponse {const RadarGetHttpTopLocationsByTlsVersionResponse({required this.result, required this.success, });

factory RadarGetHttpTopLocationsByTlsVersionResponse.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByTlsVersionResponse(
  result: RadarGetHttpTopLocationsByTlsVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetHttpTopLocationsByTlsVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetHttpTopLocationsByTlsVersionResponse copyWith({RadarGetHttpTopLocationsByTlsVersionResponseResult? result, bool? success, }) { return RadarGetHttpTopLocationsByTlsVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByTlsVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetHttpTopLocationsByTlsVersionResponse(result: $result, success: $success)'; } 
 }
