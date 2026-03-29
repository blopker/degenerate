// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam14NetworksRequested {const PaymentIntentPaymentMethodOptionsParam14NetworksRequested._(this.value);

factory PaymentIntentPaymentMethodOptionsParam14NetworksRequested.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => PaymentIntentPaymentMethodOptionsParam14NetworksRequested._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam14NetworksRequested ach = PaymentIntentPaymentMethodOptionsParam14NetworksRequested._('ach');

static const PaymentIntentPaymentMethodOptionsParam14NetworksRequested usDomesticWire = PaymentIntentPaymentMethodOptionsParam14NetworksRequested._('us_domestic_wire');

static const List<PaymentIntentPaymentMethodOptionsParam14NetworksRequested> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam14NetworksRequested && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam14NetworksRequested($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam14Networks {const PaymentIntentPaymentMethodOptionsParam14Networks({this.requested});

factory PaymentIntentPaymentMethodOptionsParam14Networks.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam14Networks(
  requested: (json['requested'] as List<dynamic>?)?.map((e) => PaymentIntentPaymentMethodOptionsParam14NetworksRequested.fromJson(e as String)).toList(),
); }

final List<PaymentIntentPaymentMethodOptionsParam14NetworksRequested>? requested;

Map<String, dynamic> toJson() { return {
  if (requested != null) 'requested': requested?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam14Networks copyWith({List<PaymentIntentPaymentMethodOptionsParam14NetworksRequested> Function()? requested}) { return PaymentIntentPaymentMethodOptionsParam14Networks(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam14Networks &&
          listEquals(requested, other.requested); } 
@override int get hashCode { return Object.hashAll(requested ?? const []).hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam14Networks(requested: $requested)'; } 
 }
