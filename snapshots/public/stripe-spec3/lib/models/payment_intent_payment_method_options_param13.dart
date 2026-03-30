// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param13_reference.dart';final class PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam13 {const PaymentIntentPaymentMethodOptionsParam13({this.reference, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam13.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam13(
  reference: json['reference'] != null ? OneOf2.parse(json['reference'], fromA: (v) => v as String, fromB: (v) => PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2.fromJson(v as String),) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam13Reference? reference;

final PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (reference != null) 'reference': reference?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam13 copyWith({PaymentIntentPaymentMethodOptionsParam13Reference Function()? reference, PaymentIntentPaymentMethodOptionsParam13SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam13(
  reference: reference != null ? reference() : this.reference,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam13 &&
          reference == other.reference &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(reference, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam13(reference: $reference, setupFutureUsage: $setupFutureUsage)'; } 
 }
