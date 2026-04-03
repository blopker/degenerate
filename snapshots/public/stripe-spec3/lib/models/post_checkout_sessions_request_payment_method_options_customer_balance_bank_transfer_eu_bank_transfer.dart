// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer {const PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer({required this.country});

factory PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(
  country: json['country'] as String,
); }

final String country;

Map<String, dynamic> toJson() { return {
  'country': country,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String; } 
PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer copyWith({String? country}) { return PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(
  country: country ?? this.country,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer &&
          country == other.country; } 
@override int get hashCode { return country.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer(country: $country)'; } 
 }
