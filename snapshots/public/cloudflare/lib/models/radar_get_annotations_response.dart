// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_annotations_response_result.dart';@immutable final class RadarGetAnnotationsResponse {const RadarGetAnnotationsResponse({required this.result, required this.success, });

factory RadarGetAnnotationsResponse.fromJson(Map<String, dynamic> json) { return RadarGetAnnotationsResponse(
  result: RadarGetAnnotationsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetAnnotationsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetAnnotationsResponse copyWith({RadarGetAnnotationsResponseResult? result, bool? success, }) { return RadarGetAnnotationsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAnnotationsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetAnnotationsResponse(result: $result, success: $success)'; } 
 }
