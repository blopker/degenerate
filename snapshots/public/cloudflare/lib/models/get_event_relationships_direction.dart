// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The direction to traverse the graph. Defaults to 'both' to search all.
@immutable final class GetEventRelationshipsDirection {const GetEventRelationshipsDirection._(this.value);

factory GetEventRelationshipsDirection.fromJson(String json) { return switch (json) {
  'ancestors' => ancestors,
  'descendants' => descendants,
  'both' => both,
  _ => GetEventRelationshipsDirection._(json),
}; }

static const GetEventRelationshipsDirection ancestors = GetEventRelationshipsDirection._('ancestors');

static const GetEventRelationshipsDirection descendants = GetEventRelationshipsDirection._('descendants');

static const GetEventRelationshipsDirection both = GetEventRelationshipsDirection._('both');

static const List<GetEventRelationshipsDirection> values = [ancestors, descendants, both];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEventRelationshipsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetEventRelationshipsDirection($value)'; } 
 }
