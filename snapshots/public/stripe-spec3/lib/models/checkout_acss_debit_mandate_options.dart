// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CheckoutAcssDebitMandateOptionsDefaultFor {const CheckoutAcssDebitMandateOptionsDefaultFor._(this.value);

factory CheckoutAcssDebitMandateOptionsDefaultFor.fromJson(String json) { return switch (json) {
  'invoice' => invoice,
  'subscription' => subscription,
  _ => CheckoutAcssDebitMandateOptionsDefaultFor._(json),
}; }

static const CheckoutAcssDebitMandateOptionsDefaultFor invoice = CheckoutAcssDebitMandateOptionsDefaultFor._('invoice');

static const CheckoutAcssDebitMandateOptionsDefaultFor subscription = CheckoutAcssDebitMandateOptionsDefaultFor._('subscription');

static const List<CheckoutAcssDebitMandateOptionsDefaultFor> values = [invoice, subscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitMandateOptionsDefaultFor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitMandateOptionsDefaultFor($value)'; } 
 }
/// Payment schedule for the mandate.
@immutable final class CheckoutAcssDebitMandateOptionsPaymentSchedule {const CheckoutAcssDebitMandateOptionsPaymentSchedule._(this.value);

factory CheckoutAcssDebitMandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  'combined' => combined,
  'interval' => interval,
  'sporadic' => sporadic,
  _ => CheckoutAcssDebitMandateOptionsPaymentSchedule._(json),
}; }

static const CheckoutAcssDebitMandateOptionsPaymentSchedule combined = CheckoutAcssDebitMandateOptionsPaymentSchedule._('combined');

static const CheckoutAcssDebitMandateOptionsPaymentSchedule interval = CheckoutAcssDebitMandateOptionsPaymentSchedule._('interval');

static const CheckoutAcssDebitMandateOptionsPaymentSchedule sporadic = CheckoutAcssDebitMandateOptionsPaymentSchedule._('sporadic');

static const List<CheckoutAcssDebitMandateOptionsPaymentSchedule> values = [combined, interval, sporadic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitMandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitMandateOptionsPaymentSchedule($value)'; } 
 }
/// Transaction type of the mandate.
@immutable final class CheckoutAcssDebitMandateOptionsTransactionType {const CheckoutAcssDebitMandateOptionsTransactionType._(this.value);

factory CheckoutAcssDebitMandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => CheckoutAcssDebitMandateOptionsTransactionType._(json),
}; }

static const CheckoutAcssDebitMandateOptionsTransactionType business = CheckoutAcssDebitMandateOptionsTransactionType._('business');

static const CheckoutAcssDebitMandateOptionsTransactionType personal = CheckoutAcssDebitMandateOptionsTransactionType._('personal');

static const List<CheckoutAcssDebitMandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAcssDebitMandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAcssDebitMandateOptionsTransactionType($value)'; } 
 }
/// 
@immutable final class CheckoutAcssDebitMandateOptions {const CheckoutAcssDebitMandateOptions({this.customMandateUrl, this.defaultFor, this.intervalDescription = const Omittable.absent(), this.paymentSchedule = const Omittable.absent(), this.transactionType = const Omittable.absent(), });

factory CheckoutAcssDebitMandateOptions.fromJson(Map<String, dynamic> json) { return CheckoutAcssDebitMandateOptions(
  customMandateUrl: json['custom_mandate_url'] as String?,
  defaultFor: (json['default_for'] as List<dynamic>?)?.map((e) => CheckoutAcssDebitMandateOptionsDefaultFor.fromJson(e as String)).toList(),
  intervalDescription: json.containsKey('interval_description') ? Omittable(json['interval_description'] as String?) : const Omittable.absent(),
  paymentSchedule: json.containsKey('payment_schedule') ? Omittable(json['payment_schedule'] != null ? CheckoutAcssDebitMandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null) : const Omittable.absent(),
  transactionType: json.containsKey('transaction_type') ? Omittable(json['transaction_type'] != null ? CheckoutAcssDebitMandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null) : const Omittable.absent(),
); }

/// A URL for custom mandate text
final String? customMandateUrl;

/// List of Stripe products where this mandate can be selected automatically. Returned when the Session is in `setup` mode.
final List<CheckoutAcssDebitMandateOptionsDefaultFor>? defaultFor;

/// Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
final Omittable<String?> intervalDescription;

/// Payment schedule for the mandate.
final Omittable<CheckoutAcssDebitMandateOptionsPaymentSchedule?> paymentSchedule;

/// Transaction type of the mandate.
final Omittable<CheckoutAcssDebitMandateOptionsTransactionType?> transactionType;

Map<String, dynamic> toJson() { return {
  'custom_mandate_url': ?customMandateUrl,
  if (defaultFor != null) 'default_for': defaultFor?.map((e) => e.toJson()).toList(),
  if (intervalDescription.isPresent) 'interval_description': intervalDescription.value,
  if (paymentSchedule.isPresent) 'payment_schedule': paymentSchedule.value?.toJson(),
  if (transactionType.isPresent) 'transaction_type': transactionType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_mandate_url', 'default_for', 'interval_description', 'payment_schedule', 'transaction_type'}.contains(key)); } 
CheckoutAcssDebitMandateOptions copyWith({String? Function()? customMandateUrl, List<CheckoutAcssDebitMandateOptionsDefaultFor>? Function()? defaultFor, Omittable<String?>? intervalDescription, Omittable<CheckoutAcssDebitMandateOptionsPaymentSchedule?>? paymentSchedule, Omittable<CheckoutAcssDebitMandateOptionsTransactionType?>? transactionType, }) { return CheckoutAcssDebitMandateOptions(
  customMandateUrl: customMandateUrl != null ? customMandateUrl() : this.customMandateUrl,
  defaultFor: defaultFor != null ? defaultFor() : this.defaultFor,
  intervalDescription: intervalDescription ?? this.intervalDescription,
  paymentSchedule: paymentSchedule ?? this.paymentSchedule,
  transactionType: transactionType ?? this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAcssDebitMandateOptions &&
          customMandateUrl == other.customMandateUrl &&
          listEquals(defaultFor, other.defaultFor) &&
          intervalDescription == other.intervalDescription &&
          paymentSchedule == other.paymentSchedule &&
          transactionType == other.transactionType; } 
@override int get hashCode { return Object.hash(customMandateUrl, Object.hashAll(defaultFor ?? const []), intervalDescription, paymentSchedule, transactionType); } 
@override String toString() { return 'CheckoutAcssDebitMandateOptions(customMandateUrl: $customMandateUrl, defaultFor: $defaultFor, intervalDescription: $intervalDescription, paymentSchedule: $paymentSchedule, transactionType: $transactionType)'; } 
 }
