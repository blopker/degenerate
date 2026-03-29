// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class NotReceivedExpectedAtVariant2 {const NotReceivedExpectedAtVariant2._(this.value);

factory NotReceivedExpectedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceivedExpectedAtVariant2._(json),
}; }

static const NotReceivedExpectedAtVariant2 $empty = NotReceivedExpectedAtVariant2._('');

static const List<NotReceivedExpectedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceivedExpectedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceivedExpectedAtVariant2($value)'; } 
 }
typedef NotReceivedExpectedAt = OneOf2<int,NotReceivedExpectedAtVariant2>;