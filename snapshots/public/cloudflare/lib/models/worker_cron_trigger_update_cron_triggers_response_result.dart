// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_schedule.dart';final class WorkerCronTriggerUpdateCronTriggersResponseResult {const WorkerCronTriggerUpdateCronTriggersResponseResult({required this.schedules});

factory WorkerCronTriggerUpdateCronTriggersResponseResult.fromJson(Map<String, dynamic> json) { return WorkerCronTriggerUpdateCronTriggersResponseResult(
  schedules: (json['schedules'] as List<dynamic>).map((e) => WorkersSchedule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersSchedule> schedules;

Map<String, dynamic> toJson() { return {
  'schedules': schedules.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('schedules'); } 
WorkerCronTriggerUpdateCronTriggersResponseResult copyWith({List<WorkersSchedule>? schedules}) { return WorkerCronTriggerUpdateCronTriggersResponseResult(
  schedules: schedules ?? this.schedules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerCronTriggerUpdateCronTriggersResponseResult &&
          listEquals(schedules, other.schedules); } 
@override int get hashCode { return Object.hashAll(schedules).hashCode; } 
@override String toString() { return 'WorkerCronTriggerUpdateCronTriggersResponseResult(schedules: $schedules)'; } 
 }
