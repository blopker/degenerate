// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam5MandateOptionsPurpose {const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._(this.value);

factory InvoicePaymentMethodOptionsParam5MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._(json),
}; }

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose dependantSupport = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('dependant_support');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose government = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('government');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose loan = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('loan');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose mortgage = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('mortgage');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose $other = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('other');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose pension = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('pension');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose personal = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('personal');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose retail = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('retail');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose salary = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('salary');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose tax = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('tax');

static const InvoicePaymentMethodOptionsParam5MandateOptionsPurpose utility = InvoicePaymentMethodOptionsParam5MandateOptionsPurpose._('utility');

static const List<InvoicePaymentMethodOptionsParam5MandateOptionsPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam5MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam5MandateOptionsPurpose($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam5MandateOptions {const InvoicePaymentMethodOptionsParam5MandateOptions({this.amount, this.purpose, });

factory InvoicePaymentMethodOptionsParam5MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam5MandateOptions(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  purpose: json['purpose'] != null ? InvoicePaymentMethodOptionsParam5MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final int? amount;

final InvoicePaymentMethodOptionsParam5MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'purpose'}.contains(key)); } 
InvoicePaymentMethodOptionsParam5MandateOptions copyWith({int Function()? amount, InvoicePaymentMethodOptionsParam5MandateOptionsPurpose Function()? purpose, }) { return InvoicePaymentMethodOptionsParam5MandateOptions(
  amount: amount != null ? amount() : this.amount,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam5MandateOptions &&
          amount == other.amount &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, purpose); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam5MandateOptions(amount: $amount, purpose: $purpose)'; } 
 }
