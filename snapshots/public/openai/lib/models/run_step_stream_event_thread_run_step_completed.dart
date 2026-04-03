// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_object.dart';@immutable final class RunStepStreamEventThreadRunStepCompletedEvent {const RunStepStreamEventThreadRunStepCompletedEvent._(this.value);

factory RunStepStreamEventThreadRunStepCompletedEvent.fromJson(String json) { return switch (json) {
  'thread.run.step.completed' => threadRunStepCompleted,
  _ => RunStepStreamEventThreadRunStepCompletedEvent._(json),
}; }

static const RunStepStreamEventThreadRunStepCompletedEvent threadRunStepCompleted = RunStepStreamEventThreadRunStepCompletedEvent._('thread.run.step.completed');

static const List<RunStepStreamEventThreadRunStepCompletedEvent> values = [threadRunStepCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepStreamEventThreadRunStepCompletedEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepStreamEventThreadRunStepCompletedEvent($value)'; } 
 }
/// Occurs when a [run step](/docs/api-reference/run-steps/step-object) is completed.
@immutable final class RunStepStreamEventThreadRunStepCompleted {const RunStepStreamEventThreadRunStepCompleted({required this.event, required this.data, });

factory RunStepStreamEventThreadRunStepCompleted.fromJson(Map<String, dynamic> json) { return RunStepStreamEventThreadRunStepCompleted(
  event: RunStepStreamEventThreadRunStepCompletedEvent.fromJson(json['event'] as String),
  data: RunStepObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStepStreamEventThreadRunStepCompletedEvent event;

final RunStepObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStepStreamEventThreadRunStepCompleted copyWith({RunStepStreamEventThreadRunStepCompletedEvent? event, RunStepObject? data, }) { return RunStepStreamEventThreadRunStepCompleted(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepStreamEventThreadRunStepCompleted &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStepStreamEventThreadRunStepCompleted(event: $event, data: $data)'; } 
 }
