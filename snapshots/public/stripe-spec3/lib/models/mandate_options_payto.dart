// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
@immutable final class MandateOptionsPaytoAmountType {const MandateOptionsPaytoAmountType._(this.value);

factory MandateOptionsPaytoAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => MandateOptionsPaytoAmountType._(json),
}; }

static const MandateOptionsPaytoAmountType fixed = MandateOptionsPaytoAmountType._('fixed');

static const MandateOptionsPaytoAmountType maximum = MandateOptionsPaytoAmountType._('maximum');

static const List<MandateOptionsPaytoAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateOptionsPaytoAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateOptionsPaytoAmountType($value)'; } 
 }
/// The periodicity at which payments will be collected. Defaults to `adhoc`.
@immutable final class MandateOptionsPaytoPaymentSchedule {const MandateOptionsPaytoPaymentSchedule._(this.value);

factory MandateOptionsPaytoPaymentSchedule.fromJson(String json) { return switch (json) {
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => MandateOptionsPaytoPaymentSchedule._(json),
}; }

static const MandateOptionsPaytoPaymentSchedule adhoc = MandateOptionsPaytoPaymentSchedule._('adhoc');

static const MandateOptionsPaytoPaymentSchedule annual = MandateOptionsPaytoPaymentSchedule._('annual');

static const MandateOptionsPaytoPaymentSchedule daily = MandateOptionsPaytoPaymentSchedule._('daily');

static const MandateOptionsPaytoPaymentSchedule fortnightly = MandateOptionsPaytoPaymentSchedule._('fortnightly');

static const MandateOptionsPaytoPaymentSchedule monthly = MandateOptionsPaytoPaymentSchedule._('monthly');

static const MandateOptionsPaytoPaymentSchedule quarterly = MandateOptionsPaytoPaymentSchedule._('quarterly');

static const MandateOptionsPaytoPaymentSchedule semiAnnual = MandateOptionsPaytoPaymentSchedule._('semi_annual');

static const MandateOptionsPaytoPaymentSchedule weekly = MandateOptionsPaytoPaymentSchedule._('weekly');

static const List<MandateOptionsPaytoPaymentSchedule> values = [adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateOptionsPaytoPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateOptionsPaytoPaymentSchedule($value)'; } 
 }
/// The purpose for which payments are made. Has a default value based on your merchant category code.
@immutable final class MandateOptionsPaytoPurpose {const MandateOptionsPaytoPurpose._(this.value);

factory MandateOptionsPaytoPurpose.fromJson(String json) { return switch (json) {
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
  _ => MandateOptionsPaytoPurpose._(json),
}; }

static const MandateOptionsPaytoPurpose dependantSupport = MandateOptionsPaytoPurpose._('dependant_support');

static const MandateOptionsPaytoPurpose government = MandateOptionsPaytoPurpose._('government');

static const MandateOptionsPaytoPurpose loan = MandateOptionsPaytoPurpose._('loan');

static const MandateOptionsPaytoPurpose mortgage = MandateOptionsPaytoPurpose._('mortgage');

static const MandateOptionsPaytoPurpose $other = MandateOptionsPaytoPurpose._('other');

static const MandateOptionsPaytoPurpose pension = MandateOptionsPaytoPurpose._('pension');

static const MandateOptionsPaytoPurpose personal = MandateOptionsPaytoPurpose._('personal');

static const MandateOptionsPaytoPurpose retail = MandateOptionsPaytoPurpose._('retail');

static const MandateOptionsPaytoPurpose salary = MandateOptionsPaytoPurpose._('salary');

static const MandateOptionsPaytoPurpose tax = MandateOptionsPaytoPurpose._('tax');

static const MandateOptionsPaytoPurpose utility = MandateOptionsPaytoPurpose._('utility');

static const List<MandateOptionsPaytoPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateOptionsPaytoPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateOptionsPaytoPurpose($value)'; } 
 }
/// 
@immutable final class MandateOptionsPayto {const MandateOptionsPayto({this.amount = const Omittable.absent(), this.amountType = const Omittable.absent(), this.endDate = const Omittable.absent(), this.paymentSchedule = const Omittable.absent(), this.paymentsPerPeriod = const Omittable.absent(), this.purpose = const Omittable.absent(), this.startDate = const Omittable.absent(), });

factory MandateOptionsPayto.fromJson(Map<String, dynamic> json) { return MandateOptionsPayto(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  amountType: json.containsKey('amount_type') ? Omittable(json['amount_type'] != null ? MandateOptionsPaytoAmountType.fromJson(json['amount_type'] as String) : null) : const Omittable.absent(),
  endDate: json.containsKey('end_date') ? Omittable(json['end_date'] as String?) : const Omittable.absent(),
  paymentSchedule: json.containsKey('payment_schedule') ? Omittable(json['payment_schedule'] != null ? MandateOptionsPaytoPaymentSchedule.fromJson(json['payment_schedule'] as String) : null) : const Omittable.absent(),
  paymentsPerPeriod: json.containsKey('payments_per_period') ? Omittable(json['payments_per_period'] != null ? (json['payments_per_period'] as num).toInt() : null) : const Omittable.absent(),
  purpose: json.containsKey('purpose') ? Omittable(json['purpose'] != null ? MandateOptionsPaytoPurpose.fromJson(json['purpose'] as String) : null) : const Omittable.absent(),
  startDate: json.containsKey('start_date') ? Omittable(json['start_date'] as String?) : const Omittable.absent(),
); }

/// Amount that will be collected. It is required when `amount_type` is `fixed`.
final Omittable<int?> amount;

/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
final Omittable<MandateOptionsPaytoAmountType?> amountType;

/// Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
final Omittable<String?> endDate;

/// The periodicity at which payments will be collected. Defaults to `adhoc`.
final Omittable<MandateOptionsPaytoPaymentSchedule?> paymentSchedule;

/// The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
final Omittable<int?> paymentsPerPeriod;

/// The purpose for which payments are made. Has a default value based on your merchant category code.
final Omittable<MandateOptionsPaytoPurpose?> purpose;

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
MandateOptionsPayto copyWith({Omittable<int?>? amount, Omittable<MandateOptionsPaytoAmountType?>? amountType, Omittable<String?>? endDate, Omittable<MandateOptionsPaytoPaymentSchedule?>? paymentSchedule, Omittable<int?>? paymentsPerPeriod, Omittable<MandateOptionsPaytoPurpose?>? purpose, Omittable<String?>? startDate, }) { return MandateOptionsPayto(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  endDate: endDate ?? this.endDate,
  paymentSchedule: paymentSchedule ?? this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod ?? this.paymentsPerPeriod,
  purpose: purpose ?? this.purpose,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MandateOptionsPayto &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'MandateOptionsPayto(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
