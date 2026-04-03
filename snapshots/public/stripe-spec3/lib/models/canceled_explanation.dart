// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledExplanationVariant2 {const CanceledExplanationVariant2._(this.value);

factory CanceledExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledExplanationVariant2._(json),
}; }

static const CanceledExplanationVariant2 $empty = CanceledExplanationVariant2._('');

static const List<CanceledExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledExplanationVariant2($value)'; } 
 }
typedef CanceledExplanation = OneOf2<String,CanceledExplanationVariant2>;
