// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor {const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor.fromJson(String json) { return switch (json) {
  'invoice' => invoice,
  'subscription' => subscription,
  _ => SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor invoice = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor._('invoice');

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor subscription = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor._('subscription');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor> values = [invoice, subscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor($value)'; } 
 }
/// Payment schedule for the mandate.
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule {const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule.fromJson(String json) { return switch (json) {
  'combined' => combined,
  'interval' => interval,
  'sporadic' => sporadic,
  _ => SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule combined = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule._('combined');

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule interval = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule._('interval');

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule sporadic = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule._('sporadic');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule> values = [combined, interval, sporadic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule($value)'; } 
 }
/// Transaction type of the mandate.
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType {const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType business = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType._('business');

static const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType personal = SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType._('personal');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType($value)'; } 
 }
/// 
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit {const SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit({this.customMandateUrl, this.defaultFor, this.intervalDescription, this.paymentSchedule, this.transactionType, });

factory SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit(
  customMandateUrl: json['custom_mandate_url'] as String?,
  defaultFor: (json['default_for'] as List<dynamic>?)?.map((e) => SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor.fromJson(e as String)).toList(),
  intervalDescription: json['interval_description'] as String?,
  paymentSchedule: json['payment_schedule'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  transactionType: json['transaction_type'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

/// A URL for custom mandate text
final String? customMandateUrl;

/// List of Stripe products where this mandate can be selected automatically.
final List<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor>? defaultFor;

/// Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
final String? intervalDescription;

/// Payment schedule for the mandate.
final SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule? paymentSchedule;

/// Transaction type of the mandate.
final SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  'custom_mandate_url': ?customMandateUrl,
  if (defaultFor != null) 'default_for': defaultFor?.map((e) => e.toJson()).toList(),
  'interval_description': ?intervalDescription,
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_mandate_url', 'default_for', 'interval_description', 'payment_schedule', 'transaction_type'}.contains(key)); } 
SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit copyWith({String Function()? customMandateUrl, List<SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitDefaultFor> Function()? defaultFor, String? Function()? intervalDescription, SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitPaymentSchedule? Function()? paymentSchedule, SetupIntentPaymentMethodOptionsMandateOptionsAcssDebitTransactionType? Function()? transactionType, }) { return SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit(
  customMandateUrl: customMandateUrl != null ? customMandateUrl() : this.customMandateUrl,
  defaultFor: defaultFor != null ? defaultFor() : this.defaultFor,
  intervalDescription: intervalDescription != null ? intervalDescription() : this.intervalDescription,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit &&
          customMandateUrl == other.customMandateUrl &&
          listEquals(defaultFor, other.defaultFor) &&
          intervalDescription == other.intervalDescription &&
          paymentSchedule == other.paymentSchedule &&
          transactionType == other.transactionType; } 
@override int get hashCode { return Object.hash(customMandateUrl, Object.hashAll(defaultFor ?? const []), intervalDescription, paymentSchedule, transactionType); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit(customMandateUrl: $customMandateUrl, defaultFor: $defaultFor, intervalDescription: $intervalDescription, paymentSchedule: $paymentSchedule, transactionType: $transactionType)'; } 
 }
