// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_object.dart';@immutable final class RunStepStreamEventThreadRunStepCancelledEvent {const RunStepStreamEventThreadRunStepCancelledEvent._(this.value);

factory RunStepStreamEventThreadRunStepCancelledEvent.fromJson(String json) { return switch (json) {
  'thread.run.step.cancelled' => threadRunStepCancelled,
  _ => RunStepStreamEventThreadRunStepCancelledEvent._(json),
}; }

static const RunStepStreamEventThreadRunStepCancelledEvent threadRunStepCancelled = RunStepStreamEventThreadRunStepCancelledEvent._('thread.run.step.cancelled');

static const List<RunStepStreamEventThreadRunStepCancelledEvent> values = [threadRunStepCancelled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepStreamEventThreadRunStepCancelledEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepStreamEventThreadRunStepCancelledEvent($value)'; } 
 }
/// Occurs when a [run step](/docs/api-reference/run-steps/step-object) is cancelled.
@immutable final class RunStepStreamEventThreadRunStepCancelled {const RunStepStreamEventThreadRunStepCancelled({required this.event, required this.data, });

factory RunStepStreamEventThreadRunStepCancelled.fromJson(Map<String, dynamic> json) { return RunStepStreamEventThreadRunStepCancelled(
  event: RunStepStreamEventThreadRunStepCancelledEvent.fromJson(json['event'] as String),
  data: RunStepObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStepStreamEventThreadRunStepCancelledEvent event;

final RunStepObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStepStreamEventThreadRunStepCancelled copyWith({RunStepStreamEventThreadRunStepCancelledEvent? event, RunStepObject? data, }) { return RunStepStreamEventThreadRunStepCancelled(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepStreamEventThreadRunStepCancelled &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStepStreamEventThreadRunStepCancelled(event: $event, data: $data)'; } 
 }
