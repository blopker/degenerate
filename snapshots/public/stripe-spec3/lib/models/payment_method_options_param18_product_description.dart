// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam18ProductDescriptionVariant2 {const PaymentMethodOptionsParam18ProductDescriptionVariant2._(this.value);

factory PaymentMethodOptionsParam18ProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam18ProductDescriptionVariant2._(json),
}; }

static const PaymentMethodOptionsParam18ProductDescriptionVariant2 $empty = PaymentMethodOptionsParam18ProductDescriptionVariant2._('');

static const List<PaymentMethodOptionsParam18ProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam18ProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam18ProductDescriptionVariant2($value)'; } 
 }
typedef PaymentMethodOptionsParam18ProductDescription = OneOf2<String,PaymentMethodOptionsParam18ProductDescriptionVariant2>;
