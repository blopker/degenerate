// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OtherExplanationVariant2 {const OtherExplanationVariant2._(this.value);

factory OtherExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => OtherExplanationVariant2._(json),
}; }

static const OtherExplanationVariant2 $empty = OtherExplanationVariant2._('');

static const List<OtherExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OtherExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OtherExplanationVariant2($value)'; } 
 }
typedef OtherExplanation = OneOf2<String,OtherExplanationVariant2>;
