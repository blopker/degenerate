// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param112.dart';import 'post_treasury_outbound_payments_request_destination_payment_method_options_us_bank_account.dart';/// Payment method-specific configuration for this OutboundPayment.
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions({this.usBankAccount});

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions(
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => PaymentMethodOptionsParam112.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(v as String),) : null,
); }

final PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'us_bank_account'}.contains(key)); } 
PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions copyWith({PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptionsUsBankAccount Function()? usBankAccount}) { return PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions(
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return usBankAccount.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodOptions(usBankAccount: $usBankAccount)'; } 
 }
