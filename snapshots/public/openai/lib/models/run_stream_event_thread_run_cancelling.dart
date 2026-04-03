// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_object.dart';@immutable final class RunStreamEventThreadRunCancellingEvent {const RunStreamEventThreadRunCancellingEvent._(this.value);

factory RunStreamEventThreadRunCancellingEvent.fromJson(String json) { return switch (json) {
  'thread.run.cancelling' => threadRunCancelling,
  _ => RunStreamEventThreadRunCancellingEvent._(json),
}; }

static const RunStreamEventThreadRunCancellingEvent threadRunCancelling = RunStreamEventThreadRunCancellingEvent._('thread.run.cancelling');

static const List<RunStreamEventThreadRunCancellingEvent> values = [threadRunCancelling];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStreamEventThreadRunCancellingEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStreamEventThreadRunCancellingEvent($value)'; } 
 }
/// Occurs when a [run](/docs/api-reference/runs/object) moves to a `cancelling` status.
@immutable final class RunStreamEventThreadRunCancelling {const RunStreamEventThreadRunCancelling({required this.event, required this.data, });

factory RunStreamEventThreadRunCancelling.fromJson(Map<String, dynamic> json) { return RunStreamEventThreadRunCancelling(
  event: RunStreamEventThreadRunCancellingEvent.fromJson(json['event'] as String),
  data: RunObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStreamEventThreadRunCancellingEvent event;

final RunObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStreamEventThreadRunCancelling copyWith({RunStreamEventThreadRunCancellingEvent? event, RunObject? data, }) { return RunStreamEventThreadRunCancelling(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStreamEventThreadRunCancelling &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStreamEventThreadRunCancelling(event: $event, data: $data)'; } 
 }
