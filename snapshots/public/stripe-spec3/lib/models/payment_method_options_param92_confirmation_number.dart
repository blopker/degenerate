// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam92ConfirmationNumberVariant2 {const PaymentMethodOptionsParam92ConfirmationNumberVariant2._(this.value);

factory PaymentMethodOptionsParam92ConfirmationNumberVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam92ConfirmationNumberVariant2._(json),
}; }

static const PaymentMethodOptionsParam92ConfirmationNumberVariant2 $empty = PaymentMethodOptionsParam92ConfirmationNumberVariant2._('');

static const List<PaymentMethodOptionsParam92ConfirmationNumberVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam92ConfirmationNumberVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam92ConfirmationNumberVariant2($value)'; } 
 }
typedef PaymentMethodOptionsParam92ConfirmationNumber = OneOf2<String,PaymentMethodOptionsParam92ConfirmationNumberVariant2>;
