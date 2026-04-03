// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_delta_object.dart';@immutable final class RunStepStreamEventThreadRunStepDeltaEvent {const RunStepStreamEventThreadRunStepDeltaEvent._(this.value);

factory RunStepStreamEventThreadRunStepDeltaEvent.fromJson(String json) { return switch (json) {
  'thread.run.step.delta' => threadRunStepDelta,
  _ => RunStepStreamEventThreadRunStepDeltaEvent._(json),
}; }

static const RunStepStreamEventThreadRunStepDeltaEvent threadRunStepDelta = RunStepStreamEventThreadRunStepDeltaEvent._('thread.run.step.delta');

static const List<RunStepStreamEventThreadRunStepDeltaEvent> values = [threadRunStepDelta];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepStreamEventThreadRunStepDeltaEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepStreamEventThreadRunStepDeltaEvent($value)'; } 
 }
/// Occurs when parts of a [run step](/docs/api-reference/run-steps/step-object) are being streamed.
@immutable final class RunStepStreamEventThreadRunStepDelta {const RunStepStreamEventThreadRunStepDelta({required this.event, required this.data, });

factory RunStepStreamEventThreadRunStepDelta.fromJson(Map<String, dynamic> json) { return RunStepStreamEventThreadRunStepDelta(
  event: RunStepStreamEventThreadRunStepDeltaEvent.fromJson(json['event'] as String),
  data: RunStepDeltaObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStepStreamEventThreadRunStepDeltaEvent event;

final RunStepDeltaObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStepStreamEventThreadRunStepDelta copyWith({RunStepStreamEventThreadRunStepDeltaEvent? event, RunStepDeltaObject? data, }) { return RunStepStreamEventThreadRunStepDelta(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepStreamEventThreadRunStepDelta &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStepStreamEventThreadRunStepDelta(event: $event, data: $data)'; } 
 }
