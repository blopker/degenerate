// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response202_result_scan_task.dart';@immutable final class UrlscannerGetScanResponse202ResultScan {const UrlscannerGetScanResponse202ResultScan({required this.task});

factory UrlscannerGetScanResponse202ResultScan.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse202ResultScan(
  task: UrlscannerGetScanResponse202ResultScanTask.fromJson(json['task'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponse202ResultScanTask task;

Map<String, dynamic> toJson() { return {
  'task': task.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('task'); } 
UrlscannerGetScanResponse202ResultScan copyWith({UrlscannerGetScanResponse202ResultScanTask? task}) { return UrlscannerGetScanResponse202ResultScan(
  task: task ?? this.task,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse202ResultScan &&
          task == other.task; } 
@override int get hashCode { return task.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse202ResultScan(task: $task)'; } 
 }
