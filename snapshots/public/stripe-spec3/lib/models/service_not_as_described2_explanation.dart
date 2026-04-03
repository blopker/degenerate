// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribed2ExplanationVariant2 {const ServiceNotAsDescribed2ExplanationVariant2._(this.value);

factory ServiceNotAsDescribed2ExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribed2ExplanationVariant2._(json),
}; }

static const ServiceNotAsDescribed2ExplanationVariant2 $empty = ServiceNotAsDescribed2ExplanationVariant2._('');

static const List<ServiceNotAsDescribed2ExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribed2ExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribed2ExplanationVariant2($value)'; } 
 }
typedef ServiceNotAsDescribed2Explanation = OneOf2<String,ServiceNotAsDescribed2ExplanationVariant2>;
