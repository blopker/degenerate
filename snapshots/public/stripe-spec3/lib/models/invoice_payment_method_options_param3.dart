// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_payment_method_options_param3_bank_transfer.dart';final class InvoicePaymentMethodOptionsParam3 {const InvoicePaymentMethodOptionsParam3({this.bankTransfer, this.fundingType, });

factory InvoicePaymentMethodOptionsParam3.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam3(
  bankTransfer: json['bank_transfer'] != null ? InvoicePaymentMethodOptionsParam3BankTransfer.fromJson(json['bank_transfer'] as Map<String, dynamic>) : null,
  fundingType: json['funding_type'] as String?,
); }

final InvoicePaymentMethodOptionsParam3BankTransfer? bankTransfer;

final String? fundingType;

Map<String, dynamic> toJson() { return {
  if (bankTransfer != null) 'bank_transfer': bankTransfer?.toJson(),
  'funding_type': ?fundingType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_transfer', 'funding_type'}.contains(key)); } 
InvoicePaymentMethodOptionsParam3 copyWith({InvoicePaymentMethodOptionsParam3BankTransfer Function()? bankTransfer, String Function()? fundingType, }) { return InvoicePaymentMethodOptionsParam3(
  bankTransfer: bankTransfer != null ? bankTransfer() : this.bankTransfer,
  fundingType: fundingType != null ? fundingType() : this.fundingType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam3 &&
          bankTransfer == other.bankTransfer &&
          fundingType == other.fundingType; } 
@override int get hashCode { return Object.hash(bankTransfer, fundingType); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam3(bankTransfer: $bankTransfer, fundingType: $fundingType)'; } 
 }
