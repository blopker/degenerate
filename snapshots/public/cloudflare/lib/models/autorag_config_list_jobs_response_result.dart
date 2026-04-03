// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AutoragConfigListJobsResponseResultSource {const AutoragConfigListJobsResponseResultSource._(this.value);

factory AutoragConfigListJobsResponseResultSource.fromJson(String json) { return switch (json) {
  'user' => user,
  'schedule' => schedule,
  _ => AutoragConfigListJobsResponseResultSource._(json),
}; }

static const AutoragConfigListJobsResponseResultSource user = AutoragConfigListJobsResponseResultSource._('user');

static const AutoragConfigListJobsResponseResultSource schedule = AutoragConfigListJobsResponseResultSource._('schedule');

static const List<AutoragConfigListJobsResponseResultSource> values = [user, schedule];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobsResponseResultSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoragConfigListJobsResponseResultSource($value)'; } 
 }
@immutable final class AutoragConfigListJobsResponseResult {const AutoragConfigListJobsResponseResult({required this.id, required this.source, this.endReason, this.endedAt, this.lastSeenAt, this.startedAt, });

factory AutoragConfigListJobsResponseResult.fromJson(Map<String, dynamic> json) { return AutoragConfigListJobsResponseResult(
  endReason: json['end_reason'] as String?,
  endedAt: json['ended_at'] as String?,
  id: json['id'] as String,
  lastSeenAt: json['last_seen_at'] as String?,
  source: AutoragConfigListJobsResponseResultSource.fromJson(json['source'] as String),
  startedAt: json['started_at'] as String?,
); }

final String? endReason;

final String? endedAt;

final String id;

final String? lastSeenAt;

final AutoragConfigListJobsResponseResultSource source;

final String? startedAt;

Map<String, dynamic> toJson() { return {
  'end_reason': ?endReason,
  'ended_at': ?endedAt,
  'id': id,
  'last_seen_at': ?lastSeenAt,
  'source': source.toJson(),
  'started_at': ?startedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('source'); } 
AutoragConfigListJobsResponseResult copyWith({String Function()? endReason, String Function()? endedAt, String? id, String Function()? lastSeenAt, AutoragConfigListJobsResponseResultSource? source, String Function()? startedAt, }) { return AutoragConfigListJobsResponseResult(
  endReason: endReason != null ? endReason() : this.endReason,
  endedAt: endedAt != null ? endedAt() : this.endedAt,
  id: id ?? this.id,
  lastSeenAt: lastSeenAt != null ? lastSeenAt() : this.lastSeenAt,
  source: source ?? this.source,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigListJobsResponseResult &&
          endReason == other.endReason &&
          endedAt == other.endedAt &&
          id == other.id &&
          lastSeenAt == other.lastSeenAt &&
          source == other.source &&
          startedAt == other.startedAt; } 
@override int get hashCode { return Object.hash(endReason, endedAt, id, lastSeenAt, source, startedAt); } 
@override String toString() { return 'AutoragConfigListJobsResponseResult(endReason: $endReason, endedAt: $endedAt, id: $id, lastSeenAt: $lastSeenAt, source: $source, startedAt: $startedAt)'; } 
 }
