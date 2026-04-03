// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_dnssec_e2e_version_response400_errors.dart';@immutable final class RadarGetDnsSummaryByDnssecE2eVersionResponse400 {const RadarGetDnsSummaryByDnssecE2eVersionResponse400({required this.errors, required this.result, required this.success, });

factory RadarGetDnsSummaryByDnssecE2eVersionResponse400.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecE2eVersionResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => RadarGetDnsSummaryByDnssecE2eVersionResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final List<RadarGetDnsSummaryByDnssecE2eVersionResponse400Errors> errors;

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetDnsSummaryByDnssecE2eVersionResponse400 copyWith({List<RadarGetDnsSummaryByDnssecE2eVersionResponse400Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return RadarGetDnsSummaryByDnssecE2eVersionResponse400(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecE2eVersionResponse400 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecE2eVersionResponse400(errors: $errors, result: $result, success: $success)'; } 
 }
