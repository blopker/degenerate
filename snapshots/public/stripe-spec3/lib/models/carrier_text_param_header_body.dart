// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CarrierTextParamHeaderBodyVariant2 {const CarrierTextParamHeaderBodyVariant2._(this.value);

factory CarrierTextParamHeaderBodyVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CarrierTextParamHeaderBodyVariant2._(json),
}; }

static const CarrierTextParamHeaderBodyVariant2 $empty = CarrierTextParamHeaderBodyVariant2._('');

static const List<CarrierTextParamHeaderBodyVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CarrierTextParamHeaderBodyVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CarrierTextParamHeaderBodyVariant2($value)'; } 
 }
typedef CarrierTextParamHeaderBody = OneOf2<String,CarrierTextParamHeaderBodyVariant2>;
