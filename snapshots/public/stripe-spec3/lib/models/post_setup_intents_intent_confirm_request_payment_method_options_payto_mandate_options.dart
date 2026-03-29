// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_payto_mandate_options_amount.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_payto_mandate_options_end_date.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_payto_mandate_options_payments_per_period.dart';import 'post_setup_intents_intent_confirm_request_payment_method_options_payto_mandate_options_start_date.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(String json) { return switch (json) {
  '' => $empty,
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType fixed = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('fixed');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType maximum = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('maximum');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType> values = [$empty, fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  '' => $empty,
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule adhoc = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('adhoc');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule annual = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('annual');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule daily = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('daily');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule fortnightly = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('fortnightly');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule monthly = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('monthly');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule quarterly = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('quarterly');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule semiAnnual = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('semi_annual');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule weekly = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('weekly');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule> values = [$empty, adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(String json) { return switch (json) {
  '' => $empty,
  'dependant_support' => dependantSupport,
  'government' => government,
  'loan' => loan,
  'mortgage' => mortgage,
  'other' => $other,
  'pension' => pension,
  'personal' => personal,
  'retail' => retail,
  'salary' => salary,
  'tax' => tax,
  'utility' => utility,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose dependantSupport = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('dependant_support');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose government = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('government');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose loan = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('loan');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose mortgage = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('mortgage');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $other = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('other');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose pension = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('pension');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose personal = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('personal');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose retail = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('retail');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose salary = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('salary');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose tax = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('tax');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose utility = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('utility');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose> values = [$empty, dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions({this.amount, this.amountType, this.endDate, this.paymentSchedule, this.paymentsPerPeriod, this.purpose, this.startDate, });

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(v as String),) : null,
  amountType: json['amount_type'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(json['amount_type'] as String) : null,
  endDate: json['end_date'] != null ? OneOf2.parse(json['end_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(v as String),) : null,
  paymentSchedule: json['payment_schedule'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  paymentsPerPeriod: json['payments_per_period'] != null ? OneOf2.parse(json['payments_per_period'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(v as String),) : null,
  purpose: json['purpose'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
  startDate: json['start_date'] != null ? OneOf2.parse(json['start_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount? amount;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType? amountType;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsEndDate? endDate;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule? paymentSchedule;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod? paymentsPerPeriod;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose? purpose;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate? startDate;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (amountType != null) 'amount_type': amountType?.toJson(),
  if (endDate != null) 'end_date': endDate?.toJson(),
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (paymentsPerPeriod != null) 'payments_per_period': paymentsPerPeriod?.toJson(),
  if (purpose != null) 'purpose': purpose?.toJson(),
  if (startDate != null) 'start_date': startDate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount Function()? amount, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountType Function()? amountType, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsEndDate Function()? endDate, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule Function()? paymentSchedule, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod Function()? paymentsPerPeriod, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPurpose Function()? purpose, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsStartDate Function()? startDate, }) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: amount != null ? amount() : this.amount,
  amountType: amountType != null ? amountType() : this.amountType,
  endDate: endDate != null ? endDate() : this.endDate,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod != null ? paymentsPerPeriod() : this.paymentsPerPeriod,
  purpose: purpose != null ? purpose() : this.purpose,
  startDate: startDate != null ? startDate() : this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptions(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
