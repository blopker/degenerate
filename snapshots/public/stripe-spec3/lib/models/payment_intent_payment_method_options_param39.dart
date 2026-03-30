// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param39_mandate_options.dart';final class PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage._('off_session');

static const List<PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam39 {const PaymentIntentPaymentMethodOptionsParam39({this.mandateOptions, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam39.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam39(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParam39MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam39MandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam39 copyWith({PaymentIntentPaymentMethodOptionsParam39MandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParam39SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam39(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam39 &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam39(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage)'; } 
 }
