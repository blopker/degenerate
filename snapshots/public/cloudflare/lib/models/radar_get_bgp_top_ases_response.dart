// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_top_ases_response_result.dart';@immutable final class RadarGetBgpTopAsesResponse {const RadarGetBgpTopAsesResponse({required this.result, required this.success, });

factory RadarGetBgpTopAsesResponse.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopAsesResponse(
  result: RadarGetBgpTopAsesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetBgpTopAsesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetBgpTopAsesResponse copyWith({RadarGetBgpTopAsesResponseResult? result, bool? success, }) { return RadarGetBgpTopAsesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopAsesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetBgpTopAsesResponse(result: $result, success: $success)'; } 
 }
