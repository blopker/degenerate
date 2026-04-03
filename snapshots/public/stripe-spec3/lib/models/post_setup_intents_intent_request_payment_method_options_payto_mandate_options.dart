// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_request_payment_method_options_payto_mandate_options_amount.dart';import 'post_setup_intents_intent_request_payment_method_options_payto_mandate_options_end_date.dart';import 'post_setup_intents_intent_request_payment_method_options_payto_mandate_options_payments_per_period.dart';import 'post_setup_intents_intent_request_payment_method_options_payto_mandate_options_start_date.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(String json) { return switch (json) {
  '' => $empty,
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType fixed = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('fixed');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType maximum = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('maximum');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType> values = [$empty, fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  '' => $empty,
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule adhoc = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('adhoc');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule annual = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('annual');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule daily = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('daily');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule fortnightly = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('fortnightly');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule monthly = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('monthly');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule quarterly = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('quarterly');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule semiAnnual = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('semi_annual');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule weekly = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('weekly');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule> values = [$empty, adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose dependantSupport = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('dependant_support');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose government = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('government');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose loan = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('loan');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose mortgage = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('mortgage');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $other = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('other');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose pension = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('pension');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose personal = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('personal');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose retail = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('retail');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose salary = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('salary');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose tax = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('tax');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose utility = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('utility');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose> values = [$empty, dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose($value)'; } 
 }
@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions({this.amount, this.amountType, this.endDate, this.paymentSchedule, this.paymentsPerPeriod, this.purpose, this.startDate, });

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(v as String),) : null,
  amountType: json['amount_type'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(json['amount_type'] as String) : null,
  endDate: json['end_date'] != null ? OneOf2.parse(json['end_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(v as String),) : null,
  paymentSchedule: json['payment_schedule'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  paymentsPerPeriod: json['payments_per_period'] != null ? OneOf2.parse(json['payments_per_period'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(v as String),) : null,
  purpose: json['purpose'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
  startDate: json['start_date'] != null ? OneOf2.parse(json['start_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount? amount;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType? amountType;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate? endDate;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule? paymentSchedule;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod? paymentsPerPeriod;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose? purpose;

final PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsStartDate? startDate;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (amountType != null) 'amount_type': amountType?.toJson(),
  if (endDate != null) 'end_date': endDate?.toJson(),
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (paymentsPerPeriod != null) 'payments_per_period': paymentsPerPeriod?.toJson(),
  if (purpose != null) 'purpose': purpose?.toJson(),
  if (startDate != null) 'start_date': startDate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'amount_type', 'end_date', 'payment_schedule', 'payments_per_period', 'purpose', 'start_date'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions copyWith({PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount Function()? amount, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountType Function()? amountType, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsEndDate Function()? endDate, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule Function()? paymentSchedule, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod Function()? paymentsPerPeriod, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPurpose Function()? purpose, PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsStartDate Function()? startDate, }) { return PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: amount != null ? amount() : this.amount,
  amountType: amountType != null ? amountType() : this.amountType,
  endDate: endDate != null ? endDate() : this.endDate,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod != null ? paymentsPerPeriod() : this.paymentsPerPeriod,
  purpose: purpose != null ? purpose() : this.purpose,
  startDate: startDate != null ? startDate() : this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptions(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
