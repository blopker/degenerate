// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response4042_errors.dart';import 'urlscanner_get_scan_response4042_task.dart';final class UrlscannerGetScanResponse4042 {const UrlscannerGetScanResponse4042({required this.errors, required this.message, required this.status, required this.task, });

factory UrlscannerGetScanResponse4042.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse4042(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetScanResponse4042Errors.fromJson(e as Map<String, dynamic>)).toList(),
  message: json['message'] as String,
  status: (json['status'] as num).toInt(),
  task: UrlscannerGetScanResponse4042Task.fromJson(json['task'] as Map<String, dynamic>),
); }

final List<UrlscannerGetScanResponse4042Errors> errors;

/// Scan not found or in progress.
final String message;

/// Status code.
final int status;

final UrlscannerGetScanResponse4042Task task;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'message': message,
  'status': status,
  'task': task.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('status') && json['status'] is num &&
      json.containsKey('task'); } 
UrlscannerGetScanResponse4042 copyWith({List<UrlscannerGetScanResponse4042Errors>? errors, String? message, int? status, UrlscannerGetScanResponse4042Task? task, }) { return UrlscannerGetScanResponse4042(
  errors: errors ?? this.errors,
  message: message ?? this.message,
  status: status ?? this.status,
  task: task ?? this.task,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse4042 &&
          listEquals(errors, other.errors) &&
          message == other.message &&
          status == other.status &&
          task == other.task; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), message, status, task); } 
@override String toString() { return 'UrlscannerGetScanResponse4042(errors: $errors, message: $message, status: $status, task: $task)'; } 
 }
