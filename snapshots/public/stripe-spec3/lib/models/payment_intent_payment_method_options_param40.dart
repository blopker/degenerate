// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param40_mandate_options.dart';final class PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam40 {const PaymentIntentPaymentMethodOptionsParam40({this.mandateOptions, this.setupFutureUsage, this.targetDate, });

factory PaymentIntentPaymentMethodOptionsParam40.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam40(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParam40MandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

final PaymentIntentPaymentMethodOptionsParam40MandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage? setupFutureUsage;

final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mandate_options', 'setup_future_usage', 'target_date'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam40 copyWith({PaymentIntentPaymentMethodOptionsParam40MandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParam40SetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return PaymentIntentPaymentMethodOptionsParam40(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam40 &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage, targetDate); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam40(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
