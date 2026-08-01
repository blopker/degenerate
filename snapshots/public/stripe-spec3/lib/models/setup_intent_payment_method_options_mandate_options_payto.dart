// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType {const SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType fixed = SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType._('fixed');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType maximum = SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType._('maximum');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType($value)'; } 
 }
/// The periodicity at which payments will be collected. Defaults to `adhoc`.
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule {const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule.fromJson(String json) { return switch (json) {
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule adhoc = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('adhoc');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule annual = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('annual');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule daily = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('daily');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule fortnightly = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('fortnightly');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule monthly = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('monthly');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule quarterly = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('quarterly');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule semiAnnual = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('semi_annual');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule weekly = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule._('weekly');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule> values = [adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule($value)'; } 
 }
/// The purpose for which payments are made. Has a default value based on your merchant category code.
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose {const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._(this.value);

factory SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose.fromJson(String json) { return switch (json) {
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
  _ => SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._(json),
}; }

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose dependantSupport = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('dependant_support');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose government = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('government');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose loan = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('loan');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose mortgage = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('mortgage');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose $other = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('other');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose pension = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('pension');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose personal = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('personal');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose retail = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('retail');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose salary = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('salary');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose tax = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('tax');

static const SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose utility = SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose._('utility');

static const List<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose($value)'; } 
 }
/// 
@immutable final class SetupIntentPaymentMethodOptionsMandateOptionsPayto {const SetupIntentPaymentMethodOptionsMandateOptionsPayto({this.amount = const Omittable.absent(), this.amountType = const Omittable.absent(), this.endDate = const Omittable.absent(), this.paymentSchedule = const Omittable.absent(), this.paymentsPerPeriod = const Omittable.absent(), this.purpose = const Omittable.absent(), this.startDate = const Omittable.absent(), });

factory SetupIntentPaymentMethodOptionsMandateOptionsPayto.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsMandateOptionsPayto(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  amountType: json.containsKey('amount_type') ? Omittable(json['amount_type'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType.fromJson(json['amount_type'] as String) : null) : const Omittable.absent(),
  endDate: json.containsKey('end_date') ? Omittable(json['end_date'] as String?) : const Omittable.absent(),
  paymentSchedule: json.containsKey('payment_schedule') ? Omittable(json['payment_schedule'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule.fromJson(json['payment_schedule'] as String) : null) : const Omittable.absent(),
  paymentsPerPeriod: json.containsKey('payments_per_period') ? Omittable(json['payments_per_period'] != null ? (json['payments_per_period'] as num).toInt() : null) : const Omittable.absent(),
  purpose: json.containsKey('purpose') ? Omittable(json['purpose'] != null ? SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose.fromJson(json['purpose'] as String) : null) : const Omittable.absent(),
  startDate: json.containsKey('start_date') ? Omittable(json['start_date'] as String?) : const Omittable.absent(),
); }

/// Amount that will be collected. It is required when `amount_type` is `fixed`.
final Omittable<int?> amount;

/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
final Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType?> amountType;

/// Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
final Omittable<String?> endDate;

/// The periodicity at which payments will be collected. Defaults to `adhoc`.
final Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule?> paymentSchedule;

/// The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
final Omittable<int?> paymentsPerPeriod;

/// The purpose for which payments are made. Has a default value based on your merchant category code.
final Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose?> purpose;

/// Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
final Omittable<String?> startDate;

Map<String, dynamic> toJson() { return {
  if (amount.isPresent) 'amount': amount.value,
  if (amountType.isPresent) 'amount_type': amountType.value?.toJson(),
  if (endDate.isPresent) 'end_date': endDate.value,
  if (paymentSchedule.isPresent) 'payment_schedule': paymentSchedule.value?.toJson(),
  if (paymentsPerPeriod.isPresent) 'payments_per_period': paymentsPerPeriod.value,
  if (purpose.isPresent) 'purpose': purpose.value?.toJson(),
  if (startDate.isPresent) 'start_date': startDate.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'amount_type', 'end_date', 'payment_schedule', 'payments_per_period', 'purpose', 'start_date'}.contains(key)); } 
SetupIntentPaymentMethodOptionsMandateOptionsPayto copyWith({Omittable<int?>? amount, Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoAmountType?>? amountType, Omittable<String?>? endDate, Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule?>? paymentSchedule, Omittable<int?>? paymentsPerPeriod, Omittable<SetupIntentPaymentMethodOptionsMandateOptionsPaytoPurpose?>? purpose, Omittable<String?>? startDate, }) { return SetupIntentPaymentMethodOptionsMandateOptionsPayto(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  endDate: endDate ?? this.endDate,
  paymentSchedule: paymentSchedule ?? this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod ?? this.paymentsPerPeriod,
  purpose: purpose ?? this.purpose,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsMandateOptionsPayto &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsPayto(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
