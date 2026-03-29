// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_credit_grants_resource_balance_credit.dart';/// Credit details for this credit balance transaction. Only present if type is `credit`.
final class BillingCreditBalanceTransactionCredit {const BillingCreditBalanceTransactionCredit({this.billingCreditGrantsResourceBalanceCredit});

factory BillingCreditBalanceTransactionCredit.fromJson(Map<String, dynamic> json) { return BillingCreditBalanceTransactionCredit(
  billingCreditGrantsResourceBalanceCredit: BillingCreditGrantsResourceBalanceCredit.canParse(json) ? BillingCreditGrantsResourceBalanceCredit.fromJson(json) : null,
); }

final BillingCreditGrantsResourceBalanceCredit? billingCreditGrantsResourceBalanceCredit;

/// At least one variant must be present.
bool get isValid { return billingCreditGrantsResourceBalanceCredit != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingCreditGrantsResourceBalanceCredit?.toJson(),
}; } 
 }
