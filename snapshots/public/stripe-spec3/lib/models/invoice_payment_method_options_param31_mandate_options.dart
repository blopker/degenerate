// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType {const InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType._(this.value);

factory InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType._(json),
}; }

static const InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType business = InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType._('business');

static const InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType personal = InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType._('personal');

static const List<InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam31MandateOptions {const InvoicePaymentMethodOptionsParam31MandateOptions({this.transactionType});

factory InvoicePaymentMethodOptionsParam31MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam31MandateOptions(
  transactionType: json['transaction_type'] != null ? InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam31MandateOptions copyWith({InvoicePaymentMethodOptionsParam31MandateOptionsTransactionType Function()? transactionType}) { return InvoicePaymentMethodOptionsParam31MandateOptions(
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam31MandateOptions &&
          transactionType == other.transactionType; } 
@override int get hashCode { return transactionType.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam31MandateOptions(transactionType: $transactionType)'; } 
 }
