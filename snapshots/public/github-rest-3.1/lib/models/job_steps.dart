// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The phase of the lifecycle that the job is currently in.
@immutable final class JobStepsStatus {const JobStepsStatus._(this.value);

factory JobStepsStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'in_progress' => inProgress,
  'completed' => completed,
  _ => JobStepsStatus._(json),
}; }

static const JobStepsStatus queued = JobStepsStatus._('queued');

static const JobStepsStatus inProgress = JobStepsStatus._('in_progress');

static const JobStepsStatus completed = JobStepsStatus._('completed');

static const List<JobStepsStatus> values = [queued, inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is JobStepsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'JobStepsStatus($value)'; } 
 }
@immutable final class JobSteps {const JobSteps({required this.status, required this.conclusion, required this.name, required this.number, this.startedAt = const Omittable.absent(), this.completedAt = const Omittable.absent(), });

factory JobSteps.fromJson(Map<String, dynamic> json) { return JobSteps(
  status: JobStepsStatus.fromJson(json['status'] as String),
  conclusion: json['conclusion'] as String?,
  name: json['name'] as String,
  number: (json['number'] as num).toInt(),
  startedAt: json.containsKey('started_at') ? Omittable(json['started_at'] != null ? DateTime.parse(json['started_at'] as String) : null) : const Omittable.absent(),
  completedAt: json.containsKey('completed_at') ? Omittable(json['completed_at'] != null ? DateTime.parse(json['completed_at'] as String) : null) : const Omittable.absent(),
); }

/// The phase of the lifecycle that the job is currently in.
final JobStepsStatus status;

/// The outcome of the job.
final String? conclusion;

/// The name of the job.
final String name;

final int number;

/// The time that the step started, in ISO 8601 format.
final Omittable<DateTime?> startedAt;

/// The time that the job finished, in ISO 8601 format.
final Omittable<DateTime?> completedAt;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
  'conclusion': conclusion,
  'name': name,
  'number': number,
  if (startedAt.isPresent) 'started_at': startedAt.value?.toIso8601String(),
  if (completedAt.isPresent) 'completed_at': completedAt.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') &&
      json.containsKey('conclusion') && json['conclusion'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('number') && json['number'] is num; } 
JobSteps copyWith({JobStepsStatus? status, String? Function()? conclusion, String? name, int? number, Omittable<DateTime?>? startedAt, Omittable<DateTime?>? completedAt, }) { return JobSteps(
  status: status ?? this.status,
  conclusion: conclusion != null ? conclusion() : this.conclusion,
  name: name ?? this.name,
  number: number ?? this.number,
  startedAt: startedAt ?? this.startedAt,
  completedAt: completedAt ?? this.completedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is JobSteps &&
          status == other.status &&
          conclusion == other.conclusion &&
          name == other.name &&
          number == other.number &&
          startedAt == other.startedAt &&
          completedAt == other.completedAt; } 
@override int get hashCode { return Object.hash(status, conclusion, name, number, startedAt, completedAt); } 
@override String toString() { return 'JobSteps(status: $status, conclusion: $conclusion, name: $name, number: $number, startedAt: $startedAt, completedAt: $completedAt)'; } 
 }
