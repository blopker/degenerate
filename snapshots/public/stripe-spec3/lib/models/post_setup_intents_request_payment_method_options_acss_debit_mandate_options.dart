// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_acss_debit_mandate_options_custom_mandate_url.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor {const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor.fromJson(String json) { return switch (json) {
  'invoice' => invoice,
  'subscription' => subscription,
  _ => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor invoice = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor._('invoice');

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor subscription = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor._('subscription');

static const List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor> values = [invoice, subscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule {const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  'combined' => combined,
  'interval' => interval,
  'sporadic' => sporadic,
  _ => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule combined = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule._('combined');

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule interval = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule._('interval');

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule sporadic = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule._('sporadic');

static const List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule> values = [combined, interval, sporadic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType {const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType business = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType._('business');

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType personal = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType._('personal');

static const List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions {const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions({this.customMandateUrl, this.defaultFor, this.intervalDescription, this.paymentSchedule, this.transactionType, });

factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions(
  customMandateUrl: json['custom_mandate_url'] != null ? OneOf2.parse(json['custom_mandate_url'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(v as String),) : null,
  defaultFor: (json['default_for'] as List<dynamic>?)?.map((e) => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor.fromJson(e as String)).toList(),
  intervalDescription: json['interval_description'] as String?,
  paymentSchedule: json['payment_schedule'] != null ? PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  transactionType: json['transaction_type'] != null ? PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl? customMandateUrl;

final List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor>? defaultFor;

final String? intervalDescription;

final PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule? paymentSchedule;

final PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  if (customMandateUrl != null) 'custom_mandate_url': customMandateUrl?.toJson(),
  if (defaultFor != null) 'default_for': defaultFor?.map((e) => e.toJson()).toList(),
  'interval_description': ?intervalDescription,
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'custom_mandate_url', 'default_for', 'interval_description', 'payment_schedule', 'transaction_type'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl Function()? customMandateUrl, List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsDefaultFor> Function()? defaultFor, String Function()? intervalDescription, PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsPaymentSchedule Function()? paymentSchedule, PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsTransactionType Function()? transactionType, }) { return PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions(
  customMandateUrl: customMandateUrl != null ? customMandateUrl() : this.customMandateUrl,
  defaultFor: defaultFor != null ? defaultFor() : this.defaultFor,
  intervalDescription: intervalDescription != null ? intervalDescription() : this.intervalDescription,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions &&
          customMandateUrl == other.customMandateUrl &&
          listEquals(defaultFor, other.defaultFor) &&
          intervalDescription == other.intervalDescription &&
          paymentSchedule == other.paymentSchedule &&
          transactionType == other.transactionType; } 
@override int get hashCode { return Object.hash(customMandateUrl, Object.hashAll(defaultFor ?? const []), intervalDescription, paymentSchedule, transactionType); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptions(customMandateUrl: $customMandateUrl, defaultFor: $defaultFor, intervalDescription: $intervalDescription, paymentSchedule: $paymentSchedule, transactionType: $transactionType)'; } 
 }
