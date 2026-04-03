// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_object.dart';@immutable final class RunStreamEventThreadRunCompletedEvent {const RunStreamEventThreadRunCompletedEvent._(this.value);

factory RunStreamEventThreadRunCompletedEvent.fromJson(String json) { return switch (json) {
  'thread.run.completed' => threadRunCompleted,
  _ => RunStreamEventThreadRunCompletedEvent._(json),
}; }

static const RunStreamEventThreadRunCompletedEvent threadRunCompleted = RunStreamEventThreadRunCompletedEvent._('thread.run.completed');

static const List<RunStreamEventThreadRunCompletedEvent> values = [threadRunCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStreamEventThreadRunCompletedEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStreamEventThreadRunCompletedEvent($value)'; } 
 }
/// Occurs when a [run](/docs/api-reference/runs/object) is completed.
@immutable final class RunStreamEventThreadRunCompleted {const RunStreamEventThreadRunCompleted({required this.event, required this.data, });

factory RunStreamEventThreadRunCompleted.fromJson(Map<String, dynamic> json) { return RunStreamEventThreadRunCompleted(
  event: RunStreamEventThreadRunCompletedEvent.fromJson(json['event'] as String),
  data: RunObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStreamEventThreadRunCompletedEvent event;

final RunObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStreamEventThreadRunCompleted copyWith({RunStreamEventThreadRunCompletedEvent? event, RunObject? data, }) { return RunStreamEventThreadRunCompleted(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStreamEventThreadRunCompleted &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStreamEventThreadRunCompleted(event: $event, data: $data)'; } 
 }
