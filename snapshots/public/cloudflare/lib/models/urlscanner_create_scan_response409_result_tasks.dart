// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_response409_result_tasks_errors.dart';import 'urlscanner_create_scan_response409_result_tasks_scanned_from.dart';final class UrlscannerCreateScanResponse409ResultTasksClientType {const UrlscannerCreateScanResponse409ResultTasksClientType._(this.value);

factory UrlscannerCreateScanResponse409ResultTasksClientType.fromJson(String json) { return switch (json) {
  'Site' => site,
  'Automatic' => automatic,
  'Api' => api,
  _ => UrlscannerCreateScanResponse409ResultTasksClientType._(json),
}; }

static const UrlscannerCreateScanResponse409ResultTasksClientType site = UrlscannerCreateScanResponse409ResultTasksClientType._('Site');

static const UrlscannerCreateScanResponse409ResultTasksClientType automatic = UrlscannerCreateScanResponse409ResultTasksClientType._('Automatic');

static const UrlscannerCreateScanResponse409ResultTasksClientType api = UrlscannerCreateScanResponse409ResultTasksClientType._('Api');

static const List<UrlscannerCreateScanResponse409ResultTasksClientType> values = [site, automatic, api];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanResponse409ResultTasksClientType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse409ResultTasksClientType($value)'; } 
 }
final class UrlscannerCreateScanResponse409ResultTasksStatus {const UrlscannerCreateScanResponse409ResultTasksStatus._(this.value);

factory UrlscannerCreateScanResponse409ResultTasksStatus.fromJson(String json) { return switch (json) {
  'Queued' => queued,
  'InProgress' => inProgress,
  'InPostProcessing' => inPostProcessing,
  'Finished' => finished,
  _ => UrlscannerCreateScanResponse409ResultTasksStatus._(json),
}; }

static const UrlscannerCreateScanResponse409ResultTasksStatus queued = UrlscannerCreateScanResponse409ResultTasksStatus._('Queued');

static const UrlscannerCreateScanResponse409ResultTasksStatus inProgress = UrlscannerCreateScanResponse409ResultTasksStatus._('InProgress');

static const UrlscannerCreateScanResponse409ResultTasksStatus inPostProcessing = UrlscannerCreateScanResponse409ResultTasksStatus._('InPostProcessing');

static const UrlscannerCreateScanResponse409ResultTasksStatus finished = UrlscannerCreateScanResponse409ResultTasksStatus._('Finished');

static const List<UrlscannerCreateScanResponse409ResultTasksStatus> values = [queued, inProgress, inPostProcessing, finished];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanResponse409ResultTasksStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse409ResultTasksStatus($value)'; } 
 }
final class UrlscannerCreateScanResponse409ResultTasksVisibility {const UrlscannerCreateScanResponse409ResultTasksVisibility._(this.value);

factory UrlscannerCreateScanResponse409ResultTasksVisibility.fromJson(String json) { return switch (json) {
  'Public' => public,
  'Unlisted' => unlisted,
  _ => UrlscannerCreateScanResponse409ResultTasksVisibility._(json),
}; }

static const UrlscannerCreateScanResponse409ResultTasksVisibility public = UrlscannerCreateScanResponse409ResultTasksVisibility._('Public');

static const UrlscannerCreateScanResponse409ResultTasksVisibility unlisted = UrlscannerCreateScanResponse409ResultTasksVisibility._('Unlisted');

static const List<UrlscannerCreateScanResponse409ResultTasksVisibility> values = [public, unlisted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanResponse409ResultTasksVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse409ResultTasksVisibility($value)'; } 
 }
final class UrlscannerCreateScanResponse409ResultTasks {const UrlscannerCreateScanResponse409ResultTasks({required this.clientLocation, required this.clientType, required this.effectiveUrl, required this.errors, required this.scannedFrom, required this.status, required this.success, required this.time, required this.timeEnd, required this.url, required this.uuid, required this.visibility, });

factory UrlscannerCreateScanResponse409ResultTasks.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponse409ResultTasks(
  clientLocation: json['clientLocation'] as String,
  clientType: UrlscannerCreateScanResponse409ResultTasksClientType.fromJson(json['clientType'] as String),
  effectiveUrl: json['effectiveUrl'] as String,
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerCreateScanResponse409ResultTasksErrors.fromJson(e as Map<String, dynamic>)).toList(),
  scannedFrom: UrlscannerCreateScanResponse409ResultTasksScannedFrom.fromJson(json['scannedFrom'] as Map<String, dynamic>),
  status: UrlscannerCreateScanResponse409ResultTasksStatus.fromJson(json['status'] as String),
  success: json['success'] as bool,
  time: json['time'] as String,
  timeEnd: json['timeEnd'] as String,
  url: json['url'] as String,
  uuid: json['uuid'] as String,
  visibility: UrlscannerCreateScanResponse409ResultTasksVisibility.fromJson(json['visibility'] as String),
); }

/// Submitter location
final String clientLocation;

final UrlscannerCreateScanResponse409ResultTasksClientType clientType;

/// URL of the primary request, after all HTTP redirects
final String effectiveUrl;

final List<UrlscannerCreateScanResponse409ResultTasksErrors> errors;

final UrlscannerCreateScanResponse409ResultTasksScannedFrom scannedFrom;

final UrlscannerCreateScanResponse409ResultTasksStatus status;

final bool success;

final String time;

final String timeEnd;

/// Submitted URL
final String url;

/// Scan ID
final String uuid;

final UrlscannerCreateScanResponse409ResultTasksVisibility visibility;

Map<String, dynamic> toJson() { return {
  'clientLocation': clientLocation,
  'clientType': clientType.toJson(),
  'effectiveUrl': effectiveUrl,
  'errors': errors.map((e) => e.toJson()).toList(),
  'scannedFrom': scannedFrom.toJson(),
  'status': status.toJson(),
  'success': success,
  'time': time,
  'timeEnd': timeEnd,
  'url': url,
  'uuid': uuid,
  'visibility': visibility.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('clientLocation') && json['clientLocation'] is String &&
      json.containsKey('clientType') &&
      json.containsKey('effectiveUrl') && json['effectiveUrl'] is String &&
      json.containsKey('errors') &&
      json.containsKey('scannedFrom') &&
      json.containsKey('status') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('time') && json['time'] is String &&
      json.containsKey('timeEnd') && json['timeEnd'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('uuid') && json['uuid'] is String &&
      json.containsKey('visibility'); } 
UrlscannerCreateScanResponse409ResultTasks copyWith({String? clientLocation, UrlscannerCreateScanResponse409ResultTasksClientType? clientType, String? effectiveUrl, List<UrlscannerCreateScanResponse409ResultTasksErrors>? errors, UrlscannerCreateScanResponse409ResultTasksScannedFrom? scannedFrom, UrlscannerCreateScanResponse409ResultTasksStatus? status, bool? success, String? time, String? timeEnd, String? url, String? uuid, UrlscannerCreateScanResponse409ResultTasksVisibility? visibility, }) { return UrlscannerCreateScanResponse409ResultTasks(
  clientLocation: clientLocation ?? this.clientLocation,
  clientType: clientType ?? this.clientType,
  effectiveUrl: effectiveUrl ?? this.effectiveUrl,
  errors: errors ?? this.errors,
  scannedFrom: scannedFrom ?? this.scannedFrom,
  status: status ?? this.status,
  success: success ?? this.success,
  time: time ?? this.time,
  timeEnd: timeEnd ?? this.timeEnd,
  url: url ?? this.url,
  uuid: uuid ?? this.uuid,
  visibility: visibility ?? this.visibility,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponse409ResultTasks &&
          clientLocation == other.clientLocation &&
          clientType == other.clientType &&
          effectiveUrl == other.effectiveUrl &&
          listEquals(errors, other.errors) &&
          scannedFrom == other.scannedFrom &&
          status == other.status &&
          success == other.success &&
          time == other.time &&
          timeEnd == other.timeEnd &&
          url == other.url &&
          uuid == other.uuid &&
          visibility == other.visibility; } 
@override int get hashCode { return Object.hash(clientLocation, clientType, effectiveUrl, Object.hashAll(errors), scannedFrom, status, success, time, timeEnd, url, uuid, visibility); } 
@override String toString() { return 'UrlscannerCreateScanResponse409ResultTasks(clientLocation: $clientLocation, clientType: $clientType, effectiveUrl: $effectiveUrl, errors: $errors, scannedFrom: $scannedFrom, status: $status, success: $success, time: $time, timeEnd: $timeEnd, url: $url, uuid: $uuid, visibility: $visibility)'; } 
 }
