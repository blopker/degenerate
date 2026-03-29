// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_object.dart';final class RunStreamEventThreadRunQueuedEvent {const RunStreamEventThreadRunQueuedEvent._(this.value);

factory RunStreamEventThreadRunQueuedEvent.fromJson(String json) { return switch (json) {
  'thread.run.queued' => threadRunQueued,
  _ => RunStreamEventThreadRunQueuedEvent._(json),
}; }

static const RunStreamEventThreadRunQueuedEvent threadRunQueued = RunStreamEventThreadRunQueuedEvent._('thread.run.queued');

static const List<RunStreamEventThreadRunQueuedEvent> values = [threadRunQueued];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStreamEventThreadRunQueuedEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStreamEventThreadRunQueuedEvent($value)'; } 
 }
/// Occurs when a [run](/docs/api-reference/runs/object) moves to a `queued` status.
final class RunStreamEventThreadRunQueued {const RunStreamEventThreadRunQueued({required this.event, required this.data, });

factory RunStreamEventThreadRunQueued.fromJson(Map<String, dynamic> json) { return RunStreamEventThreadRunQueued(
  event: RunStreamEventThreadRunQueuedEvent.fromJson(json['event'] as String),
  data: RunObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStreamEventThreadRunQueuedEvent event;

final RunObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStreamEventThreadRunQueued copyWith({RunStreamEventThreadRunQueuedEvent? event, RunObject? data, }) { return RunStreamEventThreadRunQueued(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStreamEventThreadRunQueued &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStreamEventThreadRunQueued(event: $event, data: $data)'; } 
 }
