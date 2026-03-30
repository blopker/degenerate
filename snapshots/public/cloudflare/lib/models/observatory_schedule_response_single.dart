// GENERATED CODE - DO NOT MODIFY BY HAND

import 'observatory_schedule.dart';final class ObservatoryScheduleResponseSingle {const ObservatoryScheduleResponseSingle({this.result});

factory ObservatoryScheduleResponseSingle.fromJson(Map<String, dynamic> json) { return ObservatoryScheduleResponseSingle(
  result: json['result'] != null ? ObservatorySchedule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ObservatorySchedule? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ObservatoryScheduleResponseSingle copyWith({ObservatorySchedule Function()? result}) { return ObservatoryScheduleResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryScheduleResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ObservatoryScheduleResponseSingle(result: $result)'; } 
 }
