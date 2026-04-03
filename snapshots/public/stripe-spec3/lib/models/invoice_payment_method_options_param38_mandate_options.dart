// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType {const InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType._(this.value);

factory InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType._(json),
}; }

static const InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType business = InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType._('business');

static const InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType personal = InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType._('personal');

static const List<InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType($value)'; } 
 }
@immutable final class InvoicePaymentMethodOptionsParam38MandateOptions {const InvoicePaymentMethodOptionsParam38MandateOptions({this.transactionType});

factory InvoicePaymentMethodOptionsParam38MandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam38MandateOptions(
  transactionType: json['transaction_type'] != null ? InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null,
); }

final InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType? transactionType;

Map<String, dynamic> toJson() { return {
  if (transactionType != null) 'transaction_type': transactionType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'transaction_type'}.contains(key)); } 
InvoicePaymentMethodOptionsParam38MandateOptions copyWith({InvoicePaymentMethodOptionsParam38MandateOptionsTransactionType Function()? transactionType}) { return InvoicePaymentMethodOptionsParam38MandateOptions(
  transactionType: transactionType != null ? transactionType() : this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam38MandateOptions &&
          transactionType == other.transactionType; } 
@override int get hashCode { return transactionType.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam38MandateOptions(transactionType: $transactionType)'; } 
 }
