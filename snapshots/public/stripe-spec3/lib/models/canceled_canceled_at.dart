// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledCanceledAtVariant2 {const CanceledCanceledAtVariant2._(this.value);

factory CanceledCanceledAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledCanceledAtVariant2._(json),
}; }

static const CanceledCanceledAtVariant2 $empty = CanceledCanceledAtVariant2._('');

static const List<CanceledCanceledAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledCanceledAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledCanceledAtVariant2($value)'; } 
 }
typedef CanceledCanceledAt = OneOf2<int,CanceledCanceledAtVariant2>;
