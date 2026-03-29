// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class Other2ProductDescriptionVariant2 {const Other2ProductDescriptionVariant2._(this.value);

factory Other2ProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Other2ProductDescriptionVariant2._(json),
}; }

static const Other2ProductDescriptionVariant2 $empty = Other2ProductDescriptionVariant2._('');

static const List<Other2ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Other2ProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Other2ProductDescriptionVariant2($value)'; } 
 }
typedef Other2ProductDescription = OneOf2<String,Other2ProductDescriptionVariant2>;