// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ServiceNotAsDescribedCancellationReasonVariant2 {const ServiceNotAsDescribedCancellationReasonVariant2._(this.value);

factory ServiceNotAsDescribedCancellationReasonVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedCancellationReasonVariant2._(json),
}; }

static const ServiceNotAsDescribedCancellationReasonVariant2 $empty = ServiceNotAsDescribedCancellationReasonVariant2._('');

static const List<ServiceNotAsDescribedCancellationReasonVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribedCancellationReasonVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribedCancellationReasonVariant2($value)'; } 
 }
typedef ServiceNotAsDescribedCancellationReason = OneOf2<String,ServiceNotAsDescribedCancellationReasonVariant2>;