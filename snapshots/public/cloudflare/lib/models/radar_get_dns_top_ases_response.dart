// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_top_ases_response_result.dart';@immutable final class RadarGetDnsTopAsesResponse {const RadarGetDnsTopAsesResponse({required this.result, required this.success, });

factory RadarGetDnsTopAsesResponse.fromJson(Map<String, dynamic> json) { return RadarGetDnsTopAsesResponse(
  result: RadarGetDnsTopAsesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetDnsTopAsesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsTopAsesResponse copyWith({RadarGetDnsTopAsesResponseResult? result, bool? success, }) { return RadarGetDnsTopAsesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTopAsesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetDnsTopAsesResponse(result: $result, success: $success)'; } 
 }
