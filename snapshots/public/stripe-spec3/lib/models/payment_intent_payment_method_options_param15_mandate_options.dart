// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param15_mandate_options_custom_mandate_url.dart';final class PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule {const PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule._(this.value);

factory PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  'combined' => combined,
  'interval' => interval,
  'sporadic' => sporadic,
  _ => PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule combined = PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule._('combined');

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule interval = PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule._('interval');

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule sporadic = PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule._('sporadic');

static const List<PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule> values = [combined, interval, sporadic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType {const PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType._(this.value);

factory PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType business = PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType._('business');

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType personal = PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType._('personal');

static const List<PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam15MandateOptions {const PaymentIntentPaymentMethodOptionsParam15MandateOptions({this.customMandateUrl, this.intervalDescription, this.paymentSchedule, this.transactionType, });

factory PaymentIntentPaymentMethodOptionsParam15MandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam15MandateOptions(
  customMandateUrl: json['custom_mandate_url'] != null ? OneOf2.parse(json['custom_mandate_url'], fromA: (v) => v as String, fromB: (v) => PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.fromJson(v as String),) : null,
  intervalDescription: json['interval_description'] as String?,
  paymentSchedule: json['payment_schedule'] != null ? PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  transactionType: json['transaction_type'] != null ? PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl? customMandateUrl;

final String? intervalDescription;

final PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule? paymentSchedule;

final PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  if (customMandateUrl != null) 'custom_mandate_url': customMandateUrl?.toJson(),
  'interval_description': ?intervalDescription,
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_mandate_url', 'interval_description', 'payment_schedule', 'transaction_type'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam15MandateOptions copyWith({PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl Function()? customMandateUrl, String Function()? intervalDescription, PaymentIntentPaymentMethodOptionsParam15MandateOptionsPaymentSchedule Function()? paymentSchedule, PaymentIntentPaymentMethodOptionsParam15MandateOptionsTransactionType Function()? transactionType, }) { return PaymentIntentPaymentMethodOptionsParam15MandateOptions(
  customMandateUrl: customMandateUrl != null ? customMandateUrl() : this.customMandateUrl,
  intervalDescription: intervalDescription != null ? intervalDescription() : this.intervalDescription,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam15MandateOptions &&
          customMandateUrl == other.customMandateUrl &&
          intervalDescription == other.intervalDescription &&
          paymentSchedule == other.paymentSchedule &&
          transactionType == other.transactionType; } 
@override int get hashCode { return Object.hash(customMandateUrl, intervalDescription, paymentSchedule, transactionType); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam15MandateOptions(customMandateUrl: $customMandateUrl, intervalDescription: $intervalDescription, paymentSchedule: $paymentSchedule, transactionType: $transactionType)'; } 
 }
