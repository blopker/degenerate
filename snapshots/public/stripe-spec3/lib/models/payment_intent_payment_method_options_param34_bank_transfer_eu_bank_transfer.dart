// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer {const PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer({required this.country});

factory PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer(
  country: json['country'] as String,
); }

final String country;

Map<String, dynamic> toJson() { return {
  'country': country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String; } 
PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer copyWith({String? country}) { return PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam34BankTransferEuBankTransfer(country: $country)'; } 
 }
