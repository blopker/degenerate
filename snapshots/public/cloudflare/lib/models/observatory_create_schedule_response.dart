// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_create_schedule_response_result.dart';final class ObservatoryCreateScheduleResponse {const ObservatoryCreateScheduleResponse({this.result});

factory ObservatoryCreateScheduleResponse.fromJson(Map<String, dynamic> json) { return ObservatoryCreateScheduleResponse(
  result: json['result'] != null ? ObservatoryCreateScheduleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatoryCreateScheduleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryCreateScheduleResponse copyWith({ObservatoryCreateScheduleResponseResult Function()? result}) { return ObservatoryCreateScheduleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryCreateScheduleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryCreateScheduleResponse(result: $result)'; } 
 }
