// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2ExpectedAtVariant2 {const NotReceived2ExpectedAtVariant2._(this.value);

factory NotReceived2ExpectedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceived2ExpectedAtVariant2._(json),
}; }

static const NotReceived2ExpectedAtVariant2 $empty = NotReceived2ExpectedAtVariant2._('');

static const List<NotReceived2ExpectedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceived2ExpectedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceived2ExpectedAtVariant2($value)'; } 
 }
typedef NotReceived2ExpectedAt = OneOf2<int,NotReceived2ExpectedAtVariant2>;
