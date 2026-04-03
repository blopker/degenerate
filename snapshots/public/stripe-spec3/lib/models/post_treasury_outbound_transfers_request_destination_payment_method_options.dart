// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param113.dart';import 'post_treasury_outbound_transfers_request_destination_payment_method_options_us_bank_account.dart';/// Hash describing payment method configuration details.
@immutable final class PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions {const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions({this.usBankAccount});

factory PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions(
  usBankAccount: json['us_bank_account'] != null ? OneOf2.parse(json['us_bank_account'], fromA: (v) => PaymentMethodOptionsParam113.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(v as String),) : null,
); }

final PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'us_bank_account'}.contains(key)); } 
PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions copyWith({PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount Function()? usBankAccount}) { return PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions(
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return usBankAccount.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptions(usBankAccount: $usBankAccount)'; } 
 }
