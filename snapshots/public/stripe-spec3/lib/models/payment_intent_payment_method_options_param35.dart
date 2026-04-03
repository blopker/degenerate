// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam35 {const PaymentIntentPaymentMethodOptionsParam35({this.setupFutureUsage});

factory PaymentIntentPaymentMethodOptionsParam35.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam35(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam35 copyWith({PaymentIntentPaymentMethodOptionsParam35SetupFutureUsage Function()? setupFutureUsage}) { return PaymentIntentPaymentMethodOptionsParam35(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam35 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam35(setupFutureUsage: $setupFutureUsage)'; } 
 }
