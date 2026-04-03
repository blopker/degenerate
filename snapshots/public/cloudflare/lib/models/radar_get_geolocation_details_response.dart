// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_geolocation_details_response_result.dart';@immutable final class RadarGetGeolocationDetailsResponse {const RadarGetGeolocationDetailsResponse({required this.result, required this.success, });

factory RadarGetGeolocationDetailsResponse.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationDetailsResponse(
  result: RadarGetGeolocationDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetGeolocationDetailsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetGeolocationDetailsResponse copyWith({RadarGetGeolocationDetailsResponseResult? result, bool? success, }) { return RadarGetGeolocationDetailsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationDetailsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetGeolocationDetailsResponse(result: $result, success: $success)'; } 
 }
