// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_request_groups_payments_pricing.dart';/// A hash of account group type to tokens. These are account groups this account should be added to.
final class PostAccountsRequestGroups {const PostAccountsRequestGroups({this.paymentsPricing});

factory PostAccountsRequestGroups.fromJson(Map<String, dynamic> json) { return PostAccountsRequestGroups(
  paymentsPricing: json['payments_pricing'] != null ? OneOf2.parse(json['payments_pricing'], fromA: (v) => v as String, fromB: (v) => PostAccountsRequestGroupsPaymentsPricingVariant2.fromJson(v as String),) : null,
); }

final PostAccountsRequestGroupsPaymentsPricing? paymentsPricing;

Map<String, dynamic> toJson() { return {
  if (paymentsPricing != null) 'payments_pricing': paymentsPricing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestGroups copyWith({PostAccountsRequestGroupsPaymentsPricing Function()? paymentsPricing}) { return PostAccountsRequestGroups(
  paymentsPricing: paymentsPricing != null ? paymentsPricing() : this.paymentsPricing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestGroups &&
          paymentsPricing == other.paymentsPricing; } 
@override int get hashCode { return paymentsPricing.hashCode; } 
@override String toString() { return 'PostAccountsRequestGroups(paymentsPricing: $paymentsPricing)'; } 
 }
