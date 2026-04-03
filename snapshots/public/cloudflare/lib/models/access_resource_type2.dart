// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessResourceType2 {const AccessResourceType2._(this.value);

factory AccessResourceType2.fromJson(String json) { return switch (json) {
  'USER' => user,
  'GROUP' => group,
  _ => AccessResourceType2._(json),
}; }

static const AccessResourceType2 user = AccessResourceType2._('USER');

static const AccessResourceType2 group = AccessResourceType2._('GROUP');

static const List<AccessResourceType2> values = [user, group];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessResourceType2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessResourceType2($value)'; } 
 }
