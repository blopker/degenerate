// GENERATED CODE - DO NOT MODIFY BY HAND

final class InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType {const InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType._(this.value);

factory InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType._(json),
}; }

static const InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType business = InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType._('business');

static const InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType personal = InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType._('personal');

static const List<InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType($value)'; } 
 }
final class InvoicePaymentMethodOptionsParam8MandateOptions {const InvoicePaymentMethodOptionsParam8MandateOptions({this.transactionType});

factory InvoicePaymentMethodOptionsParam8MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam8MandateOptions(
  transactionType: json['transaction_type'] != null ? InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam8MandateOptions copyWith({InvoicePaymentMethodOptionsParam8MandateOptionsTransactionType Function()? transactionType}) { return InvoicePaymentMethodOptionsParam8MandateOptions(
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam8MandateOptions &&
          transactionType == other.transactionType; } 
@override int get hashCode { return transactionType.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam8MandateOptions(transactionType: $transactionType)'; } 
 }
