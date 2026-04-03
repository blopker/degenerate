// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_schedule.dart';@immutable final class WorkerCronTriggerGetCronTriggersResponseResult {const WorkerCronTriggerGetCronTriggersResponseResult({required this.schedules});

factory WorkerCronTriggerGetCronTriggersResponseResult.fromJson(Map<String, dynamic> json) { return WorkerCronTriggerGetCronTriggersResponseResult(
  schedules: (json['schedules'] as List<dynamic>).map((e) => WorkersSchedule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersSchedule> schedules;

Map<String, dynamic> toJson() { return {
  'schedules': schedules.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('schedules'); } 
WorkerCronTriggerGetCronTriggersResponseResult copyWith({List<WorkersSchedule>? schedules}) { return WorkerCronTriggerGetCronTriggersResponseResult(
  schedules: schedules ?? this.schedules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerCronTriggerGetCronTriggersResponseResult &&
          listEquals(schedules, other.schedules); } 
@override int get hashCode { return Object.hashAll(schedules).hashCode; } 
@override String toString() { return 'WorkerCronTriggerGetCronTriggersResponseResult(schedules: $schedules)'; } 
 }
