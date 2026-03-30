// GENERATED CODE - DO NOT MODIFY BY HAND

import 'file.dart';import 'sigma_scheduled_query_run_error.dart';/// String representing the object's type. Objects of the same type share the same value.
final class ScheduledQueryRunObject {const ScheduledQueryRunObject._(this.value);

factory ScheduledQueryRunObject.fromJson(String json) { return switch (json) {
  'scheduled_query_run' => scheduledQueryRun,
  _ => ScheduledQueryRunObject._(json),
}; }

static const ScheduledQueryRunObject scheduledQueryRun = ScheduledQueryRunObject._('scheduled_query_run');

static const List<ScheduledQueryRunObject> values = [scheduledQueryRun];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ScheduledQueryRunObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ScheduledQueryRunObject($value)'; } 
 }
/// If you have [scheduled a Sigma query](https://docs.stripe.com/sigma/scheduled-queries), you'll
/// receive a `sigma.scheduled_query_run.created` webhook each time the query
/// runs. The webhook contains a `ScheduledQueryRun` object, which you can use to
/// retrieve the query results.
final class ScheduledQueryRun {const ScheduledQueryRun({required this.created, required this.dataLoadTime, this.error, this.file, required this.id, required this.livemode, required this.object, required this.resultAvailableUntil, required this.sql, required this.status, required this.title, });

factory ScheduledQueryRun.fromJson(Map<String, dynamic> json) { return ScheduledQueryRun(
  created: (json['created'] as num).toInt(),
  dataLoadTime: (json['data_load_time'] as num).toInt(),
  error: json['error'] != null ? SigmaScheduledQueryRunError.fromJson(json['error'] as Map<String, dynamic>) : null,
  file: json['file'] != null ? File.fromJson(json['file'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: ScheduledQueryRunObject.fromJson(json['object'] as String),
  resultAvailableUntil: (json['result_available_until'] as num).toInt(),
  sql: json['sql'] as String,
  status: json['status'] as String,
  title: json['title'] as String,
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// When the query was run, Sigma contained a snapshot of your Stripe data at this time.
final int dataLoadTime;

final SigmaScheduledQueryRunError? error;

/// The file object representing the results of the query.
final File? file;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final ScheduledQueryRunObject object;

/// Time at which the result expires and is no longer available for download.
final int resultAvailableUntil;

/// SQL for the query.
final String sql;

/// The query's execution status, which will be `completed` for successful runs, and `canceled`, `failed`, or `timed_out` otherwise.
final String status;

/// Title of the query.
final String title;

Map<String, dynamic> toJson() { return {
  'created': created,
  'data_load_time': dataLoadTime,
  if (error != null) 'error': error?.toJson(),
  if (file != null) 'file': file?.toJson(),
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  'result_available_until': resultAvailableUntil,
  'sql': sql,
  'status': status,
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('data_load_time') && json['data_load_time'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('result_available_until') && json['result_available_until'] is num &&
      json.containsKey('sql') && json['sql'] is String &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('title') && json['title'] is String; } 
ScheduledQueryRun copyWith({int? created, int? dataLoadTime, SigmaScheduledQueryRunError Function()? error, File? Function()? file, String? id, bool? livemode, ScheduledQueryRunObject? object, int? resultAvailableUntil, String? sql, String? status, String? title, }) { return ScheduledQueryRun(
  created: created ?? this.created,
  dataLoadTime: dataLoadTime ?? this.dataLoadTime,
  error: error != null ? error() : this.error,
  file: file != null ? file() : this.file,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  resultAvailableUntil: resultAvailableUntil ?? this.resultAvailableUntil,
  sql: sql ?? this.sql,
  status: status ?? this.status,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScheduledQueryRun &&
          created == other.created &&
          dataLoadTime == other.dataLoadTime &&
          error == other.error &&
          file == other.file &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          resultAvailableUntil == other.resultAvailableUntil &&
          sql == other.sql &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(created, dataLoadTime, error, file, id, livemode, object, resultAvailableUntil, sql, status, title); } 
@override String toString() { return 'ScheduledQueryRun(created: $created, dataLoadTime: $dataLoadTime, error: $error, file: $file, id: $id, livemode: $livemode, object: $object, resultAvailableUntil: $resultAvailableUntil, sql: $sql, status: $status, title: $title)'; } 
 }
