// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer3_top_target_locations_response_result.dart';final class RadarGetAttacksLayer3TopTargetLocationsResponse {const RadarGetAttacksLayer3TopTargetLocationsResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer3TopTargetLocationsResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopTargetLocationsResponse(
  result: RadarGetAttacksLayer3TopTargetLocationsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer3TopTargetLocationsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer3TopTargetLocationsResponse copyWith({RadarGetAttacksLayer3TopTargetLocationsResponseResult? result, bool? success, }) { return RadarGetAttacksLayer3TopTargetLocationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopTargetLocationsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer3TopTargetLocationsResponse(result: $result, success: $success)'; } 
 }
