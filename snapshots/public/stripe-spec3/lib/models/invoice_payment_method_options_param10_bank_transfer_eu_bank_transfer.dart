// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer {const InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer({required this.country});

factory InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer(
  country: json['country'] as String,
); }

final String country;

Map<String, dynamic> toJson() { return {
  'country': country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String; } 
InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer copyWith({String? country}) { return InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam10BankTransferEuBankTransfer(country: $country)'; } 
 }
