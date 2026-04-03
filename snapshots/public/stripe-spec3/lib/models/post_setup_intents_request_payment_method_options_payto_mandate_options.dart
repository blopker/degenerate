// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_request_payment_method_options_payto_mandate_options_amount.dart';import 'post_setup_intents_request_payment_method_options_payto_mandate_options_end_date.dart';import 'post_setup_intents_request_payment_method_options_payto_mandate_options_payments_per_period.dart';import 'post_setup_intents_request_payment_method_options_payto_mandate_options_start_date.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(String json) { return switch (json) {
  '' => $empty,
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType fixed = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('fixed');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType maximum = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType._('maximum');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType> values = [$empty, fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  '' => $empty,
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule adhoc = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('adhoc');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule annual = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('annual');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule daily = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('daily');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule fortnightly = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('fortnightly');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule monthly = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('monthly');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule quarterly = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('quarterly');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule semiAnnual = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('semi_annual');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule weekly = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule._('weekly');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule> values = [$empty, adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose dependantSupport = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('dependant_support');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose government = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('government');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose loan = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('loan');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose mortgage = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('mortgage');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose $other = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('other');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose pension = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('pension');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose personal = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('personal');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose retail = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('retail');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose salary = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('salary');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose tax = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('tax');

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose utility = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose._('utility');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose> values = [$empty, dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose($value)'; } 
 }
@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions({this.amount, this.amountType, this.endDate, this.paymentSchedule, this.paymentsPerPeriod, this.purpose, this.startDate, });

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(v as String),) : null,
  amountType: json['amount_type'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType.fromJson(json['amount_type'] as String) : null,
  endDate: json['end_date'] != null ? OneOf2.parse(json['end_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(v as String),) : null,
  paymentSchedule: json['payment_schedule'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  paymentsPerPeriod: json['payments_per_period'] != null ? OneOf2.parse(json['payments_per_period'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(v as String),) : null,
  purpose: json['purpose'] != null ? PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
  startDate: json['start_date'] != null ? OneOf2.parse(json['start_date'], fromA: (v) => v as String, fromB: (v) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(v as String),) : null,
); }

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmount? amount;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType? amountType;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate? endDate;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule? paymentSchedule;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod? paymentsPerPeriod;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose? purpose;

final PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate? startDate;

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
PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions copyWith({PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmount Function()? amount, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsAmountType Function()? amountType, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate Function()? endDate, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentSchedule Function()? paymentSchedule, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod Function()? paymentsPerPeriod, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPurpose Function()? purpose, PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate Function()? startDate, }) { return PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions(
  amount: amount != null ? amount() : this.amount,
  amountType: amountType != null ? amountType() : this.amountType,
  endDate: endDate != null ? endDate() : this.endDate,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod != null ? paymentsPerPeriod() : this.paymentsPerPeriod,
  purpose: purpose != null ? purpose() : this.purpose,
  startDate: startDate != null ? startDate() : this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptions(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
