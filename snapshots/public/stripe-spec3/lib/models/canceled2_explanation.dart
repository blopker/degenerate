// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class Canceled2ExplanationVariant2 {const Canceled2ExplanationVariant2._(this.value);

factory Canceled2ExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Canceled2ExplanationVariant2._(json),
}; }

static const Canceled2ExplanationVariant2 $empty = Canceled2ExplanationVariant2._('');

static const List<Canceled2ExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Canceled2ExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Canceled2ExplanationVariant2($value)'; } 
 }
typedef Canceled2Explanation = OneOf2<String,Canceled2ExplanationVariant2>;