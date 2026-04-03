// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param25_mandate_options_amount.dart';import 'payment_intent_payment_method_options_param25_mandate_options_end_date.dart';import 'payment_intent_payment_method_options_param25_mandate_options_payments_per_period.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType.fromJson(String json) { return switch (json) {
  '' => $empty,
  'fixed' => fixed,
  'maximum' => maximum,
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType._('');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType fixed = PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType._('fixed');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType maximum = PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType._('maximum');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType> values = [$empty, fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule.fromJson(String json) { return switch (json) {
  '' => $empty,
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule adhoc = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('adhoc');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule annual = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('annual');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule daily = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('daily');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule fortnightly = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('fortnightly');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule monthly = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('monthly');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule quarterly = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('quarterly');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule semiAnnual = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('semi_annual');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule weekly = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule._('weekly');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule> values = [$empty, adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose dependantSupport = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('dependant_support');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose government = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('government');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose loan = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('loan');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose mortgage = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('mortgage');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose $other = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('other');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose pension = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('pension');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose personal = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('personal');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose retail = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('retail');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose salary = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('salary');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose tax = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('tax');

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose utility = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose._('utility');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose> values = [$empty, dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptions {const PaymentIntentPaymentMethodOptionsParam25MandateOptions({this.amount, this.amountType, this.endDate, this.paymentSchedule, this.paymentsPerPeriod, this.purpose, });

factory PaymentIntentPaymentMethodOptionsParam25MandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam25MandateOptions(
  amount: json['amount'] != null ? OneOf2.parse(json['amount'], fromA: (v) => (v as num).toInt(), fromB: (v) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountVariant2.fromJson(v as String),) : null,
  amountType: json['amount_type'] != null ? PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType.fromJson(json['amount_type'] as String) : null,
  endDate: json['end_date'] != null ? OneOf2.parse(json['end_date'], fromA: (v) => v as String, fromB: (v) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.fromJson(v as String),) : null,
  paymentSchedule: json['payment_schedule'] != null ? PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule.fromJson(json['payment_schedule'] as String) : null,
  paymentsPerPeriod: json['payments_per_period'] != null ? OneOf2.parse(json['payments_per_period'], fromA: (v) => (v as num).toInt(), fromB: (v) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.fromJson(v as String),) : null,
  purpose: json['purpose'] != null ? PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmount? amount;

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType? amountType;

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate? endDate;

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule? paymentSchedule;

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod? paymentsPerPeriod;

final PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  if (amount != null) 'amount': amount?.toJson(),
  if (amountType != null) 'amount_type': amountType?.toJson(),
  if (endDate != null) 'end_date': endDate?.toJson(),
  if (paymentSchedule != null) 'payment_schedule': paymentSchedule?.toJson(),
  if (paymentsPerPeriod != null) 'payments_per_period': paymentsPerPeriod?.toJson(),
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'amount_type', 'end_date', 'payment_schedule', 'payments_per_period', 'purpose'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam25MandateOptions copyWith({PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmount Function()? amount, PaymentIntentPaymentMethodOptionsParam25MandateOptionsAmountType Function()? amountType, PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate Function()? endDate, PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentSchedule Function()? paymentSchedule, PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod Function()? paymentsPerPeriod, PaymentIntentPaymentMethodOptionsParam25MandateOptionsPurpose Function()? purpose, }) { return PaymentIntentPaymentMethodOptionsParam25MandateOptions(
  amount: amount != null ? amount() : this.amount,
  amountType: amountType != null ? amountType() : this.amountType,
  endDate: endDate != null ? endDate() : this.endDate,
  paymentSchedule: paymentSchedule != null ? paymentSchedule() : this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod != null ? paymentsPerPeriod() : this.paymentsPerPeriod,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam25MandateOptions &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptions(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose)'; } 
 }
