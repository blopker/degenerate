// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorChangeStatusWorkflowInstanceResponseResultStatus {const WorChangeStatusWorkflowInstanceResponseResultStatus._(this.value);

factory WorChangeStatusWorkflowInstanceResponseResultStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'running' => running,
  'paused' => paused,
  'errored' => errored,
  'terminated' => terminated,
  'complete' => complete,
  'waitingForPause' => waitingForPause,
  'waiting' => waiting,
  _ => WorChangeStatusWorkflowInstanceResponseResultStatus._(json),
}; }

static const WorChangeStatusWorkflowInstanceResponseResultStatus queued = WorChangeStatusWorkflowInstanceResponseResultStatus._('queued');

static const WorChangeStatusWorkflowInstanceResponseResultStatus running = WorChangeStatusWorkflowInstanceResponseResultStatus._('running');

static const WorChangeStatusWorkflowInstanceResponseResultStatus paused = WorChangeStatusWorkflowInstanceResponseResultStatus._('paused');

static const WorChangeStatusWorkflowInstanceResponseResultStatus errored = WorChangeStatusWorkflowInstanceResponseResultStatus._('errored');

static const WorChangeStatusWorkflowInstanceResponseResultStatus terminated = WorChangeStatusWorkflowInstanceResponseResultStatus._('terminated');

static const WorChangeStatusWorkflowInstanceResponseResultStatus complete = WorChangeStatusWorkflowInstanceResponseResultStatus._('complete');

static const WorChangeStatusWorkflowInstanceResponseResultStatus waitingForPause = WorChangeStatusWorkflowInstanceResponseResultStatus._('waitingForPause');

static const WorChangeStatusWorkflowInstanceResponseResultStatus waiting = WorChangeStatusWorkflowInstanceResponseResultStatus._('waiting');

static const List<WorChangeStatusWorkflowInstanceResponseResultStatus> values = [queued, running, paused, errored, terminated, complete, waitingForPause, waiting];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorChangeStatusWorkflowInstanceResponseResultStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceResponseResultStatus($value)'; } 
 }
final class WorChangeStatusWorkflowInstanceResponseResult {const WorChangeStatusWorkflowInstanceResponseResult({required this.status, required this.timestamp, });

factory WorChangeStatusWorkflowInstanceResponseResult.fromJson(Map<String, dynamic> json) { return WorChangeStatusWorkflowInstanceResponseResult(
  status: WorChangeStatusWorkflowInstanceResponseResultStatus.fromJson(json['status'] as String),
  timestamp: DateTime.parse(json['timestamp'] as String),
); }

final WorChangeStatusWorkflowInstanceResponseResultStatus status;

/// Accepts ISO 8601 with no timezone offsets and in UTC.
final DateTime timestamp;

Map<String, dynamic> toJson() { return {
  'status': status.toJson(),
  'timestamp': timestamp.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') &&
      json.containsKey('timestamp') && json['timestamp'] is String; } 
WorChangeStatusWorkflowInstanceResponseResult copyWith({WorChangeStatusWorkflowInstanceResponseResultStatus? status, DateTime? timestamp, }) { return WorChangeStatusWorkflowInstanceResponseResult(
  status: status ?? this.status,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorChangeStatusWorkflowInstanceResponseResult &&
          status == other.status &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(status, timestamp); } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceResponseResult(status: $status, timestamp: $timestamp)'; } 
 }
