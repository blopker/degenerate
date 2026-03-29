// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentMethodOptionsParam18ExpiresAtVariant2 {const PaymentMethodOptionsParam18ExpiresAtVariant2._(this.value);

factory PaymentMethodOptionsParam18ExpiresAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam18ExpiresAtVariant2._(json),
}; }

static const PaymentMethodOptionsParam18ExpiresAtVariant2 $empty = PaymentMethodOptionsParam18ExpiresAtVariant2._('');

static const List<PaymentMethodOptionsParam18ExpiresAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam18ExpiresAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam18ExpiresAtVariant2($value)'; } 
 }
typedef PaymentMethodOptionsParam18ExpiresAt = OneOf2<int,PaymentMethodOptionsParam18ExpiresAtVariant2>;