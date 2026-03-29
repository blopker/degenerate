// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CanceledReturnedAtVariant2 {const CanceledReturnedAtVariant2._(this.value);

factory CanceledReturnedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledReturnedAtVariant2._(json),
}; }

static const CanceledReturnedAtVariant2 $empty = CanceledReturnedAtVariant2._('');

static const List<CanceledReturnedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledReturnedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledReturnedAtVariant2($value)'; } 
 }
typedef CanceledReturnedAt = OneOf2<int,CanceledReturnedAtVariant2>;