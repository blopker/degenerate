// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_page_test_.dart';import 'observatory_schedule.dart';@immutable final class ObservatoryCreateScheduleResponseResult {const ObservatoryCreateScheduleResponseResult({this.schedule, this.test, });

factory ObservatoryCreateScheduleResponseResult.fromJson(Map<String, dynamic> json) { return ObservatoryCreateScheduleResponseResult(
  schedule: json['schedule'] != null ? ObservatorySchedule.fromJson(json['schedule'] as Map<String, dynamic>) : null,
  test: json['test'] != null ? ObservatoryPageTest.fromJson(json['test'] as Map<String, dynamic>) : null,
); }

final ObservatorySchedule? schedule;

final ObservatoryPageTest? test;

Map<String, dynamic> toJson() { return {
  if (schedule != null) 'schedule': schedule?.toJson(),
  if (test != null) 'test': test?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'schedule', 'test'}.contains(key)); } 
ObservatoryCreateScheduleResponseResult copyWith({ObservatorySchedule Function()? schedule, ObservatoryPageTest Function()? test, }) { return ObservatoryCreateScheduleResponseResult(
  schedule: schedule != null ? schedule() : this.schedule,
  test: test != null ? test() : this.test,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryCreateScheduleResponseResult &&
          schedule == other.schedule &&
          test == other.test; } 
@override int get hashCode { return Object.hash(schedule, test); } 
@override String toString() { return 'ObservatoryCreateScheduleResponseResult(schedule: $schedule, test: $test)'; } 
 }
