// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_customer_balance_bank_transfer.dart';/// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
@immutable final class InvoicePaymentMethodOptionsCustomerBalanceFundingType {const InvoicePaymentMethodOptionsCustomerBalanceFundingType._(this.value);

factory InvoicePaymentMethodOptionsCustomerBalanceFundingType.fromJson(String json) { return switch (json) {
  'bank_transfer' => bankTransfer,
  _ => InvoicePaymentMethodOptionsCustomerBalanceFundingType._(json),
}; }

static const InvoicePaymentMethodOptionsCustomerBalanceFundingType bankTransfer = InvoicePaymentMethodOptionsCustomerBalanceFundingType._('bank_transfer');

static const List<InvoicePaymentMethodOptionsCustomerBalanceFundingType> values = [bankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsCustomerBalanceFundingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsCustomerBalanceFundingType($value)'; } 
 }
/// 
@immutable final class InvoicePaymentMethodOptionsCustomerBalance {const InvoicePaymentMethodOptionsCustomerBalance({this.bankTransfer, this.fundingType, });

factory InvoicePaymentMethodOptionsCustomerBalance.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsCustomerBalance(
  bankTransfer: json['bank_transfer'] != null ? InvoicePaymentMethodOptionsCustomerBalanceBankTransfer.fromJson(json['bank_transfer'] as Map<String, dynamic>) : null,
  fundingType: json['funding_type'] != null ? InvoicePaymentMethodOptionsCustomerBalanceFundingType.fromJson(json['funding_type'] as String) : null,
); }

final InvoicePaymentMethodOptionsCustomerBalanceBankTransfer? bankTransfer;

/// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
final InvoicePaymentMethodOptionsCustomerBalanceFundingType? fundingType;

Map<String, dynamic> toJson() { return {
  if (bankTransfer != null) 'bank_transfer': bankTransfer?.toJson(),
  if (fundingType != null) 'funding_type': fundingType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_transfer', 'funding_type'}.contains(key)); } 
InvoicePaymentMethodOptionsCustomerBalance copyWith({InvoicePaymentMethodOptionsCustomerBalanceBankTransfer Function()? bankTransfer, InvoicePaymentMethodOptionsCustomerBalanceFundingType? Function()? fundingType, }) { return InvoicePaymentMethodOptionsCustomerBalance(
  bankTransfer: bankTransfer != null ? bankTransfer() : this.bankTransfer,
  fundingType: fundingType != null ? fundingType() : this.fundingType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsCustomerBalance &&
          bankTransfer == other.bankTransfer &&
          fundingType == other.fundingType; } 
@override int get hashCode { return Object.hash(bankTransfer, fundingType); } 
@override String toString() { return 'InvoicePaymentMethodOptionsCustomerBalance(bankTransfer: $bankTransfer, fundingType: $fundingType)'; } 
 }
