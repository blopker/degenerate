// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribedCanceledAtVariant2 {const ServiceNotAsDescribedCanceledAtVariant2._(this.value);

factory ServiceNotAsDescribedCanceledAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedCanceledAtVariant2._(json),
}; }

static const ServiceNotAsDescribedCanceledAtVariant2 $empty = ServiceNotAsDescribedCanceledAtVariant2._('');

static const List<ServiceNotAsDescribedCanceledAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribedCanceledAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribedCanceledAtVariant2($value)'; } 
 }
typedef ServiceNotAsDescribedCanceledAt = OneOf2<int,ServiceNotAsDescribedCanceledAtVariant2>;
