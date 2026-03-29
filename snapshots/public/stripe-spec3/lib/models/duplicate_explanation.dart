// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class DuplicateExplanationVariant2 {const DuplicateExplanationVariant2._(this.value);

factory DuplicateExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => DuplicateExplanationVariant2._(json),
}; }

static const DuplicateExplanationVariant2 $empty = DuplicateExplanationVariant2._('');

static const List<DuplicateExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DuplicateExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DuplicateExplanationVariant2($value)'; } 
 }
typedef DuplicateExplanation = OneOf2<String,DuplicateExplanationVariant2>;