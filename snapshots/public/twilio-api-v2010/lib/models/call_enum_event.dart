// GENERATED CODE - DO NOT MODIFY BY HAND

final class CallEnumEvent {const CallEnumEvent._(this.value);

factory CallEnumEvent.fromJson(String json) { return switch (json) {
  'initiated' => initiated,
  'ringing' => ringing,
  'answered' => answered,
  'completed' => completed,
  _ => CallEnumEvent._(json),
}; }

static const CallEnumEvent initiated = CallEnumEvent._('initiated');

static const CallEnumEvent ringing = CallEnumEvent._('ringing');

static const CallEnumEvent answered = CallEnumEvent._('answered');

static const CallEnumEvent completed = CallEnumEvent._('completed');

static const List<CallEnumEvent> values = [initiated, ringing, answered, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CallEnumEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CallEnumEvent($value)'; } 
 }
