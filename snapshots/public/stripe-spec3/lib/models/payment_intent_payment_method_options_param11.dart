// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param11_mandate_options.dart';final class PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage._('off_session');

static const List<PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam11 {const PaymentIntentPaymentMethodOptionsParam11({this.mandateOptions, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam11.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam11(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParam11MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam11MandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam11 copyWith({PaymentIntentPaymentMethodOptionsParam11MandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParam11SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam11(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam11 &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam11(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage)'; } 
 }
