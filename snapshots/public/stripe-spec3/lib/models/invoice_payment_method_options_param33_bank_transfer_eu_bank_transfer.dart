// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer {const InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer({required this.country});

factory InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer(
  country: json['country'] as String,
); }

final String country;

Map<String, dynamic> toJson() { return {
  'country': country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String; } 
InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer copyWith({String? country}) { return InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam33BankTransferEuBankTransfer(country: $country)'; } 
 }
