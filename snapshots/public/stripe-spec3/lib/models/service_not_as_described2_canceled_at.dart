// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ServiceNotAsDescribed2CanceledAtVariant2 {const ServiceNotAsDescribed2CanceledAtVariant2._(this.value);

factory ServiceNotAsDescribed2CanceledAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribed2CanceledAtVariant2._(json),
}; }

static const ServiceNotAsDescribed2CanceledAtVariant2 $empty = ServiceNotAsDescribed2CanceledAtVariant2._('');

static const List<ServiceNotAsDescribed2CanceledAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribed2CanceledAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribed2CanceledAtVariant2($value)'; } 
 }
typedef ServiceNotAsDescribed2CanceledAt = OneOf2<int,ServiceNotAsDescribed2CanceledAtVariant2>;