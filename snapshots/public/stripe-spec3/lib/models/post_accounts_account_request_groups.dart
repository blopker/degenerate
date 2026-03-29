// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_groups_payments_pricing.dart';/// A hash of account group type to tokens. These are account groups this account should be added to.
final class PostAccountsAccountRequestGroups {const PostAccountsAccountRequestGroups({this.paymentsPricing});

factory PostAccountsAccountRequestGroups.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestGroups(
  paymentsPricing: json['payments_pricing'] != null ? OneOf2.parse(json['payments_pricing'], fromA: (v) => v as String, fromB: (v) => PostAccountsAccountRequestGroupsPaymentsPricingVariant2.fromJson(v as String),) : null,
); }

final PostAccountsAccountRequestGroupsPaymentsPricing? paymentsPricing;

Map<String, dynamic> toJson() { return {
  if (paymentsPricing != null) 'payments_pricing': paymentsPricing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestGroups copyWith({PostAccountsAccountRequestGroupsPaymentsPricing Function()? paymentsPricing}) { return PostAccountsAccountRequestGroups(
  paymentsPricing: paymentsPricing != null ? paymentsPricing() : this.paymentsPricing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestGroups &&
          paymentsPricing == other.paymentsPricing; } 
@override int get hashCode { return paymentsPricing.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestGroups(paymentsPricing: $paymentsPricing)'; } 
 }
