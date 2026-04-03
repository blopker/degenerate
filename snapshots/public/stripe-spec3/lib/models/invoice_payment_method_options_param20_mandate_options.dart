// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam20MandateOptionsPurpose {const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._(this.value);

factory InvoicePaymentMethodOptionsParam20MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._(json),
}; }

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose dependantSupport = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('dependant_support');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose government = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('government');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose loan = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('loan');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose mortgage = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('mortgage');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose $other = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('other');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose pension = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('pension');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose personal = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('personal');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose retail = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('retail');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose salary = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('salary');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose tax = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('tax');

static const InvoicePaymentMethodOptionsParam20MandateOptionsPurpose utility = InvoicePaymentMethodOptionsParam20MandateOptionsPurpose._('utility');

static const List<InvoicePaymentMethodOptionsParam20MandateOptionsPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam20MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam20MandateOptionsPurpose($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam20MandateOptions {const InvoicePaymentMethodOptionsParam20MandateOptions({this.amount, this.purpose, });

factory InvoicePaymentMethodOptionsParam20MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam20MandateOptions(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  purpose: json['purpose'] != null ? InvoicePaymentMethodOptionsParam20MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final int? amount;

final InvoicePaymentMethodOptionsParam20MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'purpose'}.contains(key)); } 
InvoicePaymentMethodOptionsParam20MandateOptions copyWith({int Function()? amount, InvoicePaymentMethodOptionsParam20MandateOptionsPurpose Function()? purpose, }) { return InvoicePaymentMethodOptionsParam20MandateOptions(
  amount: amount != null ? amount() : this.amount,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam20MandateOptions &&
          amount == other.amount &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, purpose); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam20MandateOptions(amount: $amount, purpose: $purpose)'; } 
 }
