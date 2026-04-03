// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_screenshot_response202_result_scan_task.dart';@immutable final class UrlscannerGetScanScreenshotResponse202ResultScan {const UrlscannerGetScanScreenshotResponse202ResultScan({required this.task});

factory UrlscannerGetScanScreenshotResponse202ResultScan.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanScreenshotResponse202ResultScan(
  task: UrlscannerGetScanScreenshotResponse202ResultScanTask.fromJson(json['task'] as Map<String, dynamic>),
); }

final UrlscannerGetScanScreenshotResponse202ResultScanTask task;

Map<String, dynamic> toJson() { return {
  'task': task.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('task'); } 
UrlscannerGetScanScreenshotResponse202ResultScan copyWith({UrlscannerGetScanScreenshotResponse202ResultScanTask? task}) { return UrlscannerGetScanScreenshotResponse202ResultScan(
  task: task ?? this.task,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanScreenshotResponse202ResultScan &&
          task == other.task; } 
@override int get hashCode { return task.hashCode; } 
@override String toString() { return 'UrlscannerGetScanScreenshotResponse202ResultScan(task: $task)'; } 
 }
