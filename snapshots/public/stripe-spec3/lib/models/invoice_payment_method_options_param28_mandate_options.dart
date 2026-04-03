// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam28MandateOptionsPurpose {const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._(this.value);

factory InvoicePaymentMethodOptionsParam28MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._(json),
}; }

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose dependantSupport = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('dependant_support');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose government = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('government');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose loan = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('loan');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose mortgage = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('mortgage');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose $other = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('other');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose pension = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('pension');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose personal = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('personal');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose retail = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('retail');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose salary = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('salary');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose tax = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('tax');

static const InvoicePaymentMethodOptionsParam28MandateOptionsPurpose utility = InvoicePaymentMethodOptionsParam28MandateOptionsPurpose._('utility');

static const List<InvoicePaymentMethodOptionsParam28MandateOptionsPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam28MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam28MandateOptionsPurpose($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam28MandateOptions {const InvoicePaymentMethodOptionsParam28MandateOptions({this.amount, this.purpose, });

factory InvoicePaymentMethodOptionsParam28MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam28MandateOptions(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  purpose: json['purpose'] != null ? InvoicePaymentMethodOptionsParam28MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final int? amount;

final InvoicePaymentMethodOptionsParam28MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'purpose'}.contains(key)); } 
InvoicePaymentMethodOptionsParam28MandateOptions copyWith({int Function()? amount, InvoicePaymentMethodOptionsParam28MandateOptionsPurpose Function()? purpose, }) { return InvoicePaymentMethodOptionsParam28MandateOptions(
  amount: amount != null ? amount() : this.amount,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam28MandateOptions &&
          amount == other.amount &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, purpose); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam28MandateOptions(amount: $amount, purpose: $purpose)'; } 
 }
