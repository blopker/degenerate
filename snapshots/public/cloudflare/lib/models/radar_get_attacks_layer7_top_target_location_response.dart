// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_top_target_location_response_result.dart';@immutable final class RadarGetAttacksLayer7TopTargetLocationResponse {const RadarGetAttacksLayer7TopTargetLocationResponse({required this.result, required this.success, });

factory RadarGetAttacksLayer7TopTargetLocationResponse.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopTargetLocationResponse(
  result: RadarGetAttacksLayer7TopTargetLocationResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAttacksLayer7TopTargetLocationResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAttacksLayer7TopTargetLocationResponse copyWith({RadarGetAttacksLayer7TopTargetLocationResponseResult? result, bool? success, }) { return RadarGetAttacksLayer7TopTargetLocationResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopTargetLocationResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAttacksLayer7TopTargetLocationResponse(result: $result, success: $success)'; } 
 }
