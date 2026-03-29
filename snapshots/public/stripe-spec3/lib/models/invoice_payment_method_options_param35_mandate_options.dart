// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam35MandateOptionsPurpose {const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._(this.value);

factory InvoicePaymentMethodOptionsParam35MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._(json),
}; }

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose dependantSupport = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('dependant_support');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose government = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('government');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose loan = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('loan');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose mortgage = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('mortgage');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose $other = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('other');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose pension = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('pension');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose personal = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('personal');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose retail = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('retail');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose salary = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('salary');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose tax = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('tax');

static const InvoicePaymentMethodOptionsParam35MandateOptionsPurpose utility = InvoicePaymentMethodOptionsParam35MandateOptionsPurpose._('utility');

static const List<InvoicePaymentMethodOptionsParam35MandateOptionsPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam35MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam35MandateOptionsPurpose($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam35MandateOptions {const InvoicePaymentMethodOptionsParam35MandateOptions({this.amount, this.purpose, });

factory InvoicePaymentMethodOptionsParam35MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam35MandateOptions(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  purpose: json['purpose'] != null ? InvoicePaymentMethodOptionsParam35MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final int? amount;

final InvoicePaymentMethodOptionsParam35MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam35MandateOptions copyWith({int Function()? amount, InvoicePaymentMethodOptionsParam35MandateOptionsPurpose Function()? purpose, }) { return InvoicePaymentMethodOptionsParam35MandateOptions(
  amount: amount != null ? amount() : this.amount,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam35MandateOptions &&
          amount == other.amount &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, purpose); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam35MandateOptions(amount: $amount, purpose: $purpose)'; } 
 }
