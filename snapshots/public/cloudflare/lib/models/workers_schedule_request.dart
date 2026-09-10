// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersScheduleRequest {const WorkersScheduleRequest({required this.cron});

factory WorkersScheduleRequest.fromJson(Map<String, dynamic> json) { return WorkersScheduleRequest(
  cron: json['cron'] as String,
); }

final String cron;

Map<String, dynamic> toJson() { return {
  'cron': cron,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cron') && json['cron'] is String; } 
WorkersScheduleRequest copyWith({String? cron}) { return WorkersScheduleRequest(
  cron: cron ?? this.cron,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScheduleRequest &&
          cron == other.cron; } 
@override int get hashCode { return cron.hashCode; } 
@override String toString() { return 'WorkersScheduleRequest(cron: $cron)'; } 
 }
