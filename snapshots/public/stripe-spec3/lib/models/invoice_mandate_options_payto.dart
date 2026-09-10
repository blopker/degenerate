// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Only `maximum` is supported.
@immutable final class InvoiceMandateOptionsPaytoAmountType {const InvoiceMandateOptionsPaytoAmountType._(this.value);

factory InvoiceMandateOptionsPaytoAmountType.fromJson(String json) { return switch (json) {
  'fixed' => fixed,
  'maximum' => maximum,
  _ => InvoiceMandateOptionsPaytoAmountType._(json),
}; }

static const InvoiceMandateOptionsPaytoAmountType fixed = InvoiceMandateOptionsPaytoAmountType._('fixed');

static const InvoiceMandateOptionsPaytoAmountType maximum = InvoiceMandateOptionsPaytoAmountType._('maximum');

static const List<InvoiceMandateOptionsPaytoAmountType> values = [fixed, maximum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceMandateOptionsPaytoAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceMandateOptionsPaytoAmountType($value)'; } 
 }
/// The purpose for which payments are made. Has a default value based on your merchant category code.
@immutable final class InvoiceMandateOptionsPaytoPurpose {const InvoiceMandateOptionsPaytoPurpose._(this.value);

factory InvoiceMandateOptionsPaytoPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoiceMandateOptionsPaytoPurpose._(json),
}; }

static const InvoiceMandateOptionsPaytoPurpose dependantSupport = InvoiceMandateOptionsPaytoPurpose._('dependant_support');

static const InvoiceMandateOptionsPaytoPurpose government = InvoiceMandateOptionsPaytoPurpose._('government');

static const InvoiceMandateOptionsPaytoPurpose loan = InvoiceMandateOptionsPaytoPurpose._('loan');

static const InvoiceMandateOptionsPaytoPurpose mortgage = InvoiceMandateOptionsPaytoPurpose._('mortgage');

static const InvoiceMandateOptionsPaytoPurpose $other = InvoiceMandateOptionsPaytoPurpose._('other');

static const InvoiceMandateOptionsPaytoPurpose pension = InvoiceMandateOptionsPaytoPurpose._('pension');

static const InvoiceMandateOptionsPaytoPurpose personal = InvoiceMandateOptionsPaytoPurpose._('personal');

static const InvoiceMandateOptionsPaytoPurpose retail = InvoiceMandateOptionsPaytoPurpose._('retail');

static const InvoiceMandateOptionsPaytoPurpose salary = InvoiceMandateOptionsPaytoPurpose._('salary');

static const InvoiceMandateOptionsPaytoPurpose tax = InvoiceMandateOptionsPaytoPurpose._('tax');

static const InvoiceMandateOptionsPaytoPurpose utility = InvoiceMandateOptionsPaytoPurpose._('utility');

static const List<InvoiceMandateOptionsPaytoPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceMandateOptionsPaytoPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceMandateOptionsPaytoPurpose($value)'; } 
 }
/// 
@immutable final class InvoiceMandateOptionsPayto {const InvoiceMandateOptionsPayto({this.amount = const Omittable.absent(), this.amountType = const Omittable.absent(), this.purpose = const Omittable.absent(), });

factory InvoiceMandateOptionsPayto.fromJson(Map<String, dynamic> json) { return InvoiceMandateOptionsPayto(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  amountType: json.containsKey('amount_type') ? Omittable(json['amount_type'] != null ? InvoiceMandateOptionsPaytoAmountType.fromJson(json['amount_type'] as String) : null) : const Omittable.absent(),
  purpose: json.containsKey('purpose') ? Omittable(json['purpose'] != null ? InvoiceMandateOptionsPaytoPurpose.fromJson(json['purpose'] as String) : null) : const Omittable.absent(),
); }

/// The maximum amount that can be collected in a single invoice. If you don't specify a maximum, then there is no limit.
final Omittable<int?> amount;

/// Only `maximum` is supported.
final Omittable<InvoiceMandateOptionsPaytoAmountType?> amountType;

/// The purpose for which payments are made. Has a default value based on your merchant category code.
final Omittable<InvoiceMandateOptionsPaytoPurpose?> purpose;

Map<String, dynamic> toJson() { return {
  if (amount.isPresent) 'amount': amount.value,
  if (amountType.isPresent) 'amount_type': amountType.value?.toJson(),
  if (purpose.isPresent) 'purpose': purpose.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'amount_type', 'purpose'}.contains(key)); } 
InvoiceMandateOptionsPayto copyWith({Omittable<int?>? amount, Omittable<InvoiceMandateOptionsPaytoAmountType?>? amountType, Omittable<InvoiceMandateOptionsPaytoPurpose?>? purpose, }) { return InvoiceMandateOptionsPayto(
  amount: amount ?? this.amount,
  amountType: amountType ?? this.amountType,
  purpose: purpose ?? this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceMandateOptionsPayto &&
          amount == other.amount &&
          amountType == other.amountType &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, amountType, purpose); } 
@override String toString() { return 'InvoiceMandateOptionsPayto(amount: $amount, amountType: $amountType, purpose: $purpose)'; } 
 }
