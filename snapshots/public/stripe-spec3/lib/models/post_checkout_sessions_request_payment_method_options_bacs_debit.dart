// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_checkout_sessions_request_payment_method_options_bacs_debit_mandate_options.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage {const PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage none = PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage._('none');

static const PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage offSession = PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage._('off_session');

static const PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage onSession = PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage._('on_session');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage> values = [none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage($value)'; } 
 }
final class PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit {const PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit({this.mandateOptions, this.setupFutureUsage, this.targetDate, });

factory PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: json['mandate_options'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

final PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitMandateOptions? mandateOptions;

final PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage? setupFutureUsage;

final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit copyWith({PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitMandateOptions Function()? mandateOptions, PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebitSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage, targetDate); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsBacsDebit(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
