// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentDetails2OrderReferenceVariant2 {const PaymentDetails2OrderReferenceVariant2._(this.value);

factory PaymentDetails2OrderReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentDetails2OrderReferenceVariant2._(json),
}; }

static const PaymentDetails2OrderReferenceVariant2 $empty = PaymentDetails2OrderReferenceVariant2._('');

static const List<PaymentDetails2OrderReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentDetails2OrderReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentDetails2OrderReferenceVariant2($value)'; } 
 }
typedef PaymentDetails2OrderReference = OneOf2<String,PaymentDetails2OrderReferenceVariant2>;