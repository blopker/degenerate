// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_geolocations_response_result.dart';@immutable final class RadarGetGeolocationsResponse {const RadarGetGeolocationsResponse({required this.result, required this.success, });

factory RadarGetGeolocationsResponse.fromJson(Map<String, dynamic> json) { return RadarGetGeolocationsResponse(
  result: RadarGetGeolocationsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetGeolocationsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetGeolocationsResponse copyWith({RadarGetGeolocationsResponseResult? result, bool? success, }) { return RadarGetGeolocationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetGeolocationsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetGeolocationsResponse(result: $result, success: $success)'; } 
 }
