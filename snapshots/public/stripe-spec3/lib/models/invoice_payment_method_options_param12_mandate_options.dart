// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam12MandateOptionsPurpose {const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._(this.value);

factory InvoicePaymentMethodOptionsParam12MandateOptionsPurpose.fromJson(String json) { return switch (json) {
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
  _ => InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._(json),
}; }

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose dependantSupport = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('dependant_support');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose government = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('government');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose loan = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('loan');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose mortgage = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('mortgage');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose $other = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('other');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose pension = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('pension');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose personal = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('personal');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose retail = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('retail');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose salary = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('salary');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose tax = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('tax');

static const InvoicePaymentMethodOptionsParam12MandateOptionsPurpose utility = InvoicePaymentMethodOptionsParam12MandateOptionsPurpose._('utility');

static const List<InvoicePaymentMethodOptionsParam12MandateOptionsPurpose> values = [dependantSupport, government, loan, mortgage, $other, pension, personal, retail, salary, tax, utility];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam12MandateOptionsPurpose && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam12MandateOptionsPurpose($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam12MandateOptions {const InvoicePaymentMethodOptionsParam12MandateOptions({this.amount, this.purpose, });

factory InvoicePaymentMethodOptionsParam12MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam12MandateOptions(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  purpose: json['purpose'] != null ? InvoicePaymentMethodOptionsParam12MandateOptionsPurpose.fromJson(json['purpose'] as String) : null,
); }

final int? amount;

final InvoicePaymentMethodOptionsParam12MandateOptionsPurpose? purpose;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  if (purpose != null) 'purpose': purpose?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'purpose'}.contains(key)); } 
InvoicePaymentMethodOptionsParam12MandateOptions copyWith({int Function()? amount, InvoicePaymentMethodOptionsParam12MandateOptionsPurpose Function()? purpose, }) { return InvoicePaymentMethodOptionsParam12MandateOptions(
  amount: amount != null ? amount() : this.amount,
  purpose: purpose != null ? purpose() : this.purpose,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam12MandateOptions &&
          amount == other.amount &&
          purpose == other.purpose; } 
@override int get hashCode { return Object.hash(amount, purpose); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam12MandateOptions(amount: $amount, purpose: $purpose)'; } 
 }
