// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetSessionParticipantsSortOrder {const GetSessionParticipantsSortOrder._(this.value);

factory GetSessionParticipantsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => GetSessionParticipantsSortOrder._(json),
}; }

static const GetSessionParticipantsSortOrder asc = GetSessionParticipantsSortOrder._('ASC');

static const GetSessionParticipantsSortOrder desc = GetSessionParticipantsSortOrder._('DESC');

static const List<GetSessionParticipantsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetSessionParticipantsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetSessionParticipantsSortOrder($value)'; } 
 }
