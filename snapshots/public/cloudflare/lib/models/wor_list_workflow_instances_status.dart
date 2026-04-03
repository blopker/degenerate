// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorListWorkflowInstancesStatus {const WorListWorkflowInstancesStatus._(this.value);

factory WorListWorkflowInstancesStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'running' => running,
  'paused' => paused,
  'errored' => errored,
  'terminated' => terminated,
  'complete' => complete,
  'waitingForPause' => waitingForPause,
  'waiting' => waiting,
  _ => WorListWorkflowInstancesStatus._(json),
}; }

static const WorListWorkflowInstancesStatus queued = WorListWorkflowInstancesStatus._('queued');

static const WorListWorkflowInstancesStatus running = WorListWorkflowInstancesStatus._('running');

static const WorListWorkflowInstancesStatus paused = WorListWorkflowInstancesStatus._('paused');

static const WorListWorkflowInstancesStatus errored = WorListWorkflowInstancesStatus._('errored');

static const WorListWorkflowInstancesStatus terminated = WorListWorkflowInstancesStatus._('terminated');

static const WorListWorkflowInstancesStatus complete = WorListWorkflowInstancesStatus._('complete');

static const WorListWorkflowInstancesStatus waitingForPause = WorListWorkflowInstancesStatus._('waitingForPause');

static const WorListWorkflowInstancesStatus waiting = WorListWorkflowInstancesStatus._('waiting');

static const List<WorListWorkflowInstancesStatus> values = [queued, running, paused, errored, terminated, complete, waitingForPause, waiting];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorListWorkflowInstancesStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorListWorkflowInstancesStatus($value)'; } 
 }
