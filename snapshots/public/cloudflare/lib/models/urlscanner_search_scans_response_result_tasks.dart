// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Submitted visibility status.
@immutable final class UrlscannerSearchScansResponseResultTasksVisibility {const UrlscannerSearchScansResponseResultTasksVisibility._(this.value);

factory UrlscannerSearchScansResponseResultTasksVisibility.fromJson(String json) { return switch (json) {
  'public' => public,
  'unlisted' => unlisted,
  _ => UrlscannerSearchScansResponseResultTasksVisibility._(json),
}; }

static const UrlscannerSearchScansResponseResultTasksVisibility public = UrlscannerSearchScansResponseResultTasksVisibility._('public');

static const UrlscannerSearchScansResponseResultTasksVisibility unlisted = UrlscannerSearchScansResponseResultTasksVisibility._('unlisted');

static const List<UrlscannerSearchScansResponseResultTasksVisibility> values = [public, unlisted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerSearchScansResponseResultTasksVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerSearchScansResponseResultTasksVisibility($value)'; } 
 }
@immutable final class UrlscannerSearchScansResponseResultTasks {const UrlscannerSearchScansResponseResultTasks({required this.country, required this.success, required this.time, required this.url, required this.uuid, required this.visibility, });

factory UrlscannerSearchScansResponseResultTasks.fromJson(Map<String, dynamic> json) { return UrlscannerSearchScansResponseResultTasks(
  country: json['country'] as String,
  success: json['success'] as bool,
  time: DateTime.parse(json['time'] as String),
  url: json['url'] as String,
  uuid: json['uuid'] as String,
  visibility: UrlscannerSearchScansResponseResultTasksVisibility.fromJson(json['visibility'] as String),
); }

/// Alpha-2 country code
final String country;

/// Whether scan was successful or not
final bool success;

/// When scan was submitted (UTC)
final DateTime time;

/// Scan url (after redirects)
final String url;

/// Scan id
final String uuid;

/// Submitted visibility status.
final UrlscannerSearchScansResponseResultTasksVisibility visibility;

Map<String, dynamic> toJson() { return {
  'country': country,
  'success': success,
  'time': time.toIso8601String(),
  'url': url,
  'uuid': uuid,
  'visibility': visibility.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('time') && json['time'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('uuid') && json['uuid'] is String &&
      json.containsKey('visibility'); } 
UrlscannerSearchScansResponseResultTasks copyWith({String? country, bool? success, DateTime? time, String? url, String? uuid, UrlscannerSearchScansResponseResultTasksVisibility? visibility, }) { return UrlscannerSearchScansResponseResultTasks(
  country: country ?? this.country,
  success: success ?? this.success,
  time: time ?? this.time,
  url: url ?? this.url,
  uuid: uuid ?? this.uuid,
  visibility: visibility ?? this.visibility,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerSearchScansResponseResultTasks &&
          country == other.country &&
          success == other.success &&
          time == other.time &&
          url == other.url &&
          uuid == other.uuid &&
          visibility == other.visibility; } 
@override int get hashCode { return Object.hash(country, success, time, url, uuid, visibility); } 
@override String toString() { return 'UrlscannerSearchScansResponseResultTasks(country: $country, success: $success, time: $time, url: $url, uuid: $uuid, visibility: $visibility)'; } 
 }
