// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
@immutable final class MandatePaytoAmountType {const MandatePaytoAmountType._(this.value);

factory MandatePaytoAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => MandatePaytoAmountType._(json),
}; }

static const MandatePaytoAmountType fixed = MandatePaytoAmountType._('fixed');

static const MandatePaytoAmountType maximum = MandatePaytoAmountType._('maximum');

static const List<MandatePaytoAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandatePaytoAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandatePaytoAmountType($value)'; } 
 }
/// The periodicity at which payments will be collected. Defaults to `adhoc`.
@immutable final class MandatePaytoPaymentSchedule {const MandatePaytoPaymentSchedule._(this.value);

factory MandatePaytoPaymentSchedule.fromJson(String json) { return switch (json) {
  'adhoc' => adhoc,
  'annual' => annual,
  'daily' => daily,
  'fortnightly' => fortnightly,
  'monthly' => monthly,
  'quarterly' => quarterly,
  'semi_annual' => semiAnnual,
  'weekly' => weekly,
  _ => MandatePaytoPaymentSchedule._(json),
}; }

static const MandatePaytoPaymentSchedule adhoc = MandatePaytoPaymentSchedule._('adhoc');

static const MandatePaytoPaymentSchedule annual = MandatePaytoPaymentSchedule._('annual');

static const MandatePaytoPaymentSchedule daily = MandatePaytoPaymentSchedule._('daily');

static const MandatePaytoPaymentSchedule fortnightly = MandatePaytoPaymentSchedule._('fortnightly');

static const MandatePaytoPaymentSchedule monthly = MandatePaytoPaymentSchedule._('monthly');

static const MandatePaytoPaymentSchedule quarterly = MandatePaytoPaymentSchedule._('quarterly');

static const MandatePaytoPaymentSchedule semiAnnual = MandatePaytoPaymentSchedule._('semi_annual');

static const MandatePaytoPaymentSchedule weekly = MandatePaytoPaymentSchedule._('weekly');

static const List<MandatePaytoPaymentSchedule> values = [adhoc, annual, daily, fortnightly, monthly, quarterly, semiAnnual, weekly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandatePaytoPaymentSchedule && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandatePaytoPaymentSchedule($value)'; } 
 }
/// The purpose for which payments are made. Has a default value based on your merchant category code.
@immutable final class MandatePaytoPurpose {const MandatePaytoPurpose._(this.value);

factory MandatePaytoPurpose.fromJson(String json) { return switch (json) {
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
  _ => MandatePaytoPurpose._(json),
}; }

static const MandatePaytoPurpose dependantSupport = MandatePaytoPurpose._('dependant_support');

static const MandatePaytoPurpose government = MandatePaytoPurpose._('government');

static const MandatePaytoPurpose loan = MandatePaytoPurpose._('loan');

static const MandatePaytoPurpose mortgage = MandatePaytoPurpose._('mortgage');

static const MandatePaytoPurpose $other = MandatePaytoPurpose._('other');

static const MandatePaytoPurpose pension = MandatePaytoPurpose._('pension');

static const MandatePaytoPurpose personal = MandatePaytoPurpose._('personal');

static const MandatePaytoPurpose retail = MandatePaytoPurpose._('retail');

static const MandatePaytoPurpose salary = MandatePaytoPurpose._('salary');

static const MandatePaytoPurpose tax = MandatePaytoPurpose._('tax');

static const MandatePaytoPurpose utility = MandatePaytoPurpose._('utility');

static const List<MandatePaytoPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandatePaytoPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandatePaytoPurpose($value)'; } 
 }
/// 
@immutable final class MandatePayto {const MandatePayto({required this.amountType, required this.paymentSchedule, this.amount = const Omittable.absent(), this.endDate = const Omittable.absent(), this.paymentsPerPeriod = const Omittable.absent(), this.purpose = const Omittable.absent(), this.startDate = const Omittable.absent(), });

factory MandatePayto.fromJson(Map<String, dynamic> json) { return MandatePayto(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  amountType: MandatePaytoAmountType.fromJson(json['amount_type'] as String),
  endDate: json.containsKey('end_date') ? Omittable(json['end_date'] as String?) : const Omittable.absent(),
  paymentSchedule: MandatePaytoPaymentSchedule.fromJson(json['payment_schedule'] as String),
  paymentsPerPeriod: json.containsKey('payments_per_period') ? Omittable(json['payments_per_period'] != null ? (json['payments_per_period'] as num).toInt() : null) : const Omittable.absent(),
  purpose: json.containsKey('purpose') ? Omittable(json['purpose'] != null ? MandatePaytoPurpose.fromJson(json['purpose'] as String) : null) : const Omittable.absent(),
  startDate: json.containsKey('start_date') ? Omittable(json['start_date'] as String?) : const Omittable.absent(),
); }

/// Amount that will be collected. It is required when `amount_type` is `fixed`.
final Omittable<int?> amount;

/// The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
final MandatePaytoAmountType amountType;

/// Date, in YYYY-MM-DD format, after which payments will not be collected. Defaults to no end date.
final Omittable<String?> endDate;

/// The periodicity at which payments will be collected. Defaults to `adhoc`.
final MandatePaytoPaymentSchedule paymentSchedule;

/// The number of payments that will be made during a payment period. Defaults to 1 except for when `payment_schedule` is `adhoc`. In that case, it defaults to no limit.
final Omittable<int?> paymentsPerPeriod;

/// The purpose for which payments are made. Has a default value based on your merchant category code.
final Omittable<MandatePaytoPurpose?> purpose;

/// Date, in YYYY-MM-DD format, from which payments will be collected. Defaults to confirmation time.
final Omittable<String?> startDate;

Map<String, dynamic> toJson() { return {
  if (amount.isPresent) 'amount': amount.value,
  'amount_type': amountType.toJson(),
  if (endDate.isPresent) 'end_date': endDate.value,
  'payment_schedule': paymentSchedule.toJson(),
  if (paymentsPerPeriod.isPresent) 'payments_per_period': paymentsPerPeriod.value,
  if (purpose.isPresent) 'purpose': purpose.value?.toJson(),
  if (startDate.isPresent) 'start_date': startDate.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_type') &&
      json.containsKey('payment_schedule'); } 
MandatePayto copyWith({Omittable<int?>? amount, MandatePaytoAmountType? amountType, Omittable<String?>? endDate, MandatePaytoPaymentSchedule? paymentSchedule, Omittable<int?>? paymentsPerPeriod, Omittable<MandatePaytoPurpose?>? purpose, Omittable<String?>? startDate, }) { return MandatePayto(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  endDate: endDate ?? this.endDate,
  paymentSchedule: paymentSchedule ?? this.paymentSchedule,
  paymentsPerPeriod: paymentsPerPeriod ?? this.paymentsPerPeriod,
  purpose: purpose ?? this.purpose,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MandatePayto &&
          amount == other.amount &&
          amountType == other.amountType &&
          endDate == other.endDate &&
          paymentSchedule == other.paymentSchedule &&
          paymentsPerPeriod == other.paymentsPerPeriod &&
          purpose == other.purpose &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(amount, amountType, endDate, paymentSchedule, paymentsPerPeriod, purpose, startDate); } 
@override String toString() { return 'MandatePayto(amount: $amount, amountType: $amountType, endDate: $endDate, paymentSchedule: $paymentSchedule, paymentsPerPeriod: $paymentsPerPeriod, purpose: $purpose, startDate: $startDate)'; } 
 }
