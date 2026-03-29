// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param10_bank_transfer.dart';final class InvoicePaymentMethodOptionsParam10 {const InvoicePaymentMethodOptionsParam10({this.bankTransfer, this.fundingType, });

factory InvoicePaymentMethodOptionsParam10.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam10(
  bankTransfer: json['bank_transfer'] != null ? InvoicePaymentMethodOptionsParam10BankTransfer.fromJson(json['bank_transfer'] as Map<String, dynamic>) : null,
  fundingType: json['funding_type'] as String?,
); }

final InvoicePaymentMethodOptionsParam10BankTransfer? bankTransfer;

final String? fundingType;

Map<String, dynamic> toJson() { return {
  if (bankTransfer != null) 'bank_transfer': bankTransfer?.toJson(),
  'funding_type': ?fundingType,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
InvoicePaymentMethodOptionsParam10 copyWith({InvoicePaymentMethodOptionsParam10BankTransfer Function()? bankTransfer, String Function()? fundingType, }) { return InvoicePaymentMethodOptionsParam10(
  bankTransfer: bankTransfer != null ? bankTransfer() : this.bankTransfer,
  fundingType: fundingType != null ? fundingType() : this.fundingType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam10 &&
          bankTransfer == other.bankTransfer &&
          fundingType == other.fundingType; } 
@override int get hashCode { return Object.hash(bankTransfer, fundingType); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam10(bankTransfer: $bankTransfer, fundingType: $fundingType)'; } 
 }
