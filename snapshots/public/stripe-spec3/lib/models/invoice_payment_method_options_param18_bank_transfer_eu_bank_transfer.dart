// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer {const InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer({required this.country});

factory InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer(
  country: json['country'] as String,
); }

final String country;

Map<String, dynamic> toJson() { return {
  'country': country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String; } 
InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer copyWith({String? country}) { return InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam18BankTransferEuBankTransfer(country: $country)'; } 
 }
