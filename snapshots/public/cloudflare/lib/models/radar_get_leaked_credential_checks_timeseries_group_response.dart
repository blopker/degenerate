// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_leaked_credential_checks_timeseries_group_response_result.dart';final class RadarGetLeakedCredentialChecksTimeseriesGroupResponse {const RadarGetLeakedCredentialChecksTimeseriesGroupResponse({required this.result, required this.success, });

factory RadarGetLeakedCredentialChecksTimeseriesGroupResponse.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksTimeseriesGroupResponse(
  result: RadarGetLeakedCredentialChecksTimeseriesGroupResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetLeakedCredentialChecksTimeseriesGroupResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetLeakedCredentialChecksTimeseriesGroupResponse copyWith({RadarGetLeakedCredentialChecksTimeseriesGroupResponseResult? result, bool? success, }) { return RadarGetLeakedCredentialChecksTimeseriesGroupResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksTimeseriesGroupResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupResponse(result: $result, success: $success)'; } 
 }
