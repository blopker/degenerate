// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetSessionParticipantsSortBy {const GetSessionParticipantsSortBy._(this.value);

factory GetSessionParticipantsSortBy.fromJson(String json) { return switch (json) {
  'joinedAt' => joinedAt,
  'duration' => duration,
  _ => GetSessionParticipantsSortBy._(json),
}; }

static const GetSessionParticipantsSortBy joinedAt = GetSessionParticipantsSortBy._('joinedAt');

static const GetSessionParticipantsSortBy duration = GetSessionParticipantsSortBy._('duration');

static const List<GetSessionParticipantsSortBy> values = [joinedAt, duration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetSessionParticipantsSortBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetSessionParticipantsSortBy($value)'; } 
 }
