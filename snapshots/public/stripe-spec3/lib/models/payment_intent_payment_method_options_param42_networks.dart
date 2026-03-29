// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam42NetworksRequested {const PaymentIntentPaymentMethodOptionsParam42NetworksRequested._(this.value);

factory PaymentIntentPaymentMethodOptionsParam42NetworksRequested.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => PaymentIntentPaymentMethodOptionsParam42NetworksRequested._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam42NetworksRequested ach = PaymentIntentPaymentMethodOptionsParam42NetworksRequested._('ach');

static const PaymentIntentPaymentMethodOptionsParam42NetworksRequested usDomesticWire = PaymentIntentPaymentMethodOptionsParam42NetworksRequested._('us_domestic_wire');

static const List<PaymentIntentPaymentMethodOptionsParam42NetworksRequested> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam42NetworksRequested && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42NetworksRequested($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam42Networks {const PaymentIntentPaymentMethodOptionsParam42Networks({this.requested});

factory PaymentIntentPaymentMethodOptionsParam42Networks.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam42Networks(
  requested: (json['requested'] as List<dynamic>?)?.map((e) => PaymentIntentPaymentMethodOptionsParam42NetworksRequested.fromJson(e as String)).toList(),
); }

final List<PaymentIntentPaymentMethodOptionsParam42NetworksRequested>? requested;

Map<String, dynamic> toJson() { return {
  if (requested != null) 'requested': requested?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam42Networks copyWith({List<PaymentIntentPaymentMethodOptionsParam42NetworksRequested> Function()? requested}) { return PaymentIntentPaymentMethodOptionsParam42Networks(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam42Networks &&
          listEquals(requested, other.requested); } 
@override int get hashCode { return Object.hashAll(requested ?? const []).hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam42Networks(requested: $requested)'; } 
 }
