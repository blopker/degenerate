// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_tlds_response_result.dart';@immutable final class RadarGetTldsResponse {const RadarGetTldsResponse({required this.result, required this.success, });

factory RadarGetTldsResponse.fromJson(Map<String, dynamic> json) { return RadarGetTldsResponse(
  result: RadarGetTldsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetTldsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetTldsResponse copyWith({RadarGetTldsResponseResult? result, bool? success, }) { return RadarGetTldsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTldsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetTldsResponse(result: $result, success: $success)'; } 
 }
