// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Transaction type of the mandate.
@immutable final class InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType {const InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType._(this.value);

factory InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType.fromJson(String json) { return switch (json) {
  'business' => business,
  'personal' => personal,
  _ => InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType._(json),
}; }

static const InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType business = InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType._('business');

static const InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType personal = InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType._('personal');

static const List<InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType> values = [business, personal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType($value)'; } 
 }
/// 
@immutable final class InvoicePaymentMethodOptionsAcssDebitMandateOptions {const InvoicePaymentMethodOptionsAcssDebitMandateOptions({this.transactionType = const Omittable.absent()});

factory InvoicePaymentMethodOptionsAcssDebitMandateOptions.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsAcssDebitMandateOptions(
  transactionType: json.containsKey('transaction_type') ? Omittable(json['transaction_type'] != null ? InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType.fromJson(json['transaction_type'] as String) : null) : const Omittable.absent(),
); }

/// Transaction type of the mandate.
final Omittable<InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType?> transactionType;

Map<String, dynamic> toJson() { return {
  if (transactionType.isPresent) 'transaction_type': transactionType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'transaction_type'}.contains(key)); } 
InvoicePaymentMethodOptionsAcssDebitMandateOptions copyWith({Omittable<InvoicePaymentMethodOptionsAcssDebitMandateOptionsTransactionType?>? transactionType}) { return InvoicePaymentMethodOptionsAcssDebitMandateOptions(
  transactionType: transactionType ?? this.transactionType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsAcssDebitMandateOptions &&
          transactionType == other.transactionType; } 
@override int get hashCode { return transactionType.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsAcssDebitMandateOptions(transactionType: $transactionType)'; } 
 }
