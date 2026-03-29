// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_search_scans_response_result_tasks.dart';final class UrlscannerSearchScansResponseResult {const UrlscannerSearchScansResponseResult({required this.tasks});

factory UrlscannerSearchScansResponseResult.fromJson(Map<String, dynamic> json) { return UrlscannerSearchScansResponseResult(
  tasks: (json['tasks'] as List<dynamic>).map((e) => UrlscannerSearchScansResponseResultTasks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerSearchScansResponseResultTasks> tasks;

Map<String, dynamic> toJson() { return {
  'tasks': tasks.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tasks'); } 
UrlscannerSearchScansResponseResult copyWith({List<UrlscannerSearchScansResponseResultTasks>? tasks}) { return UrlscannerSearchScansResponseResult(
  tasks: tasks ?? this.tasks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerSearchScansResponseResult &&
          listEquals(tasks, other.tasks); } 
@override int get hashCode { return Object.hashAll(tasks).hashCode; } 
@override String toString() { return 'UrlscannerSearchScansResponseResult(tasks: $tasks)'; } 
 }
