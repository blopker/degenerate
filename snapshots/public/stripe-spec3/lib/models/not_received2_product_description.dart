// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2ProductDescriptionVariant2 {const NotReceived2ProductDescriptionVariant2._(this.value);

factory NotReceived2ProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceived2ProductDescriptionVariant2._(json),
}; }

static const NotReceived2ProductDescriptionVariant2 $empty = NotReceived2ProductDescriptionVariant2._('');

static const List<NotReceived2ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceived2ProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceived2ProductDescriptionVariant2($value)'; } 
 }
typedef NotReceived2ProductDescription = OneOf2<String,NotReceived2ProductDescriptionVariant2>;
