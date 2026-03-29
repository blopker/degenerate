// GENERATED CODE - DO NOT MODIFY BY HAND

/// The status of this conference. Can be: `init`, `in-progress`, or `completed`.
final class ConferenceEnumStatus {const ConferenceEnumStatus._(this.value);

factory ConferenceEnumStatus.fromJson(String json) { return switch (json) {
  'init' => init,
  'in-progress' => inProgress,
  'completed' => completed,
  _ => ConferenceEnumStatus._(json),
}; }

static const ConferenceEnumStatus init = ConferenceEnumStatus._('init');

static const ConferenceEnumStatus inProgress = ConferenceEnumStatus._('in-progress');

static const ConferenceEnumStatus completed = ConferenceEnumStatus._('completed');

static const List<ConferenceEnumStatus> values = [init, inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConferenceEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConferenceEnumStatus($value)'; } 
 }
