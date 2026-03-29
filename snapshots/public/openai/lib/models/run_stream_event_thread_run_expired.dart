// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_object.dart';final class RunStreamEventThreadRunExpiredEvent {const RunStreamEventThreadRunExpiredEvent._(this.value);

factory RunStreamEventThreadRunExpiredEvent.fromJson(String json) { return switch (json) {
  'thread.run.expired' => threadRunExpired,
  _ => RunStreamEventThreadRunExpiredEvent._(json),
}; }

static const RunStreamEventThreadRunExpiredEvent threadRunExpired = RunStreamEventThreadRunExpiredEvent._('thread.run.expired');

static const List<RunStreamEventThreadRunExpiredEvent> values = [threadRunExpired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStreamEventThreadRunExpiredEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStreamEventThreadRunExpiredEvent($value)'; } 
 }
/// Occurs when a [run](/docs/api-reference/runs/object) expires.
final class RunStreamEventThreadRunExpired {const RunStreamEventThreadRunExpired({required this.event, required this.data, });

factory RunStreamEventThreadRunExpired.fromJson(Map<String, dynamic> json) { return RunStreamEventThreadRunExpired(
  event: RunStreamEventThreadRunExpiredEvent.fromJson(json['event'] as String),
  data: RunObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final RunStreamEventThreadRunExpiredEvent event;

final RunObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
RunStreamEventThreadRunExpired copyWith({RunStreamEventThreadRunExpiredEvent? event, RunObject? data, }) { return RunStreamEventThreadRunExpired(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStreamEventThreadRunExpired &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'RunStreamEventThreadRunExpired(event: $event, data: $data)'; } 
 }
