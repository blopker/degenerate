// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_credit_grants_resource_balance_credits_applied.dart';/// Details of how the billing credits were applied to an invoice. Only present if `type` is `credits_applied`.
final class BillingCreditGrantsResourceBalanceDebitCreditsApplied {const BillingCreditGrantsResourceBalanceDebitCreditsApplied({this.billingCreditGrantsResourceBalanceCreditsApplied});

factory BillingCreditGrantsResourceBalanceDebitCreditsApplied.fromJson(Map<String, dynamic> json) { return BillingCreditGrantsResourceBalanceDebitCreditsApplied(
  billingCreditGrantsResourceBalanceCreditsApplied: BillingCreditGrantsResourceBalanceCreditsApplied.canParse(json) ? BillingCreditGrantsResourceBalanceCreditsApplied.fromJson(json) : null,
); }

final BillingCreditGrantsResourceBalanceCreditsApplied? billingCreditGrantsResourceBalanceCreditsApplied;

/// At least one variant must be present.
bool get isValid { return billingCreditGrantsResourceBalanceCreditsApplied != null; } 
Map<String, dynamic> toJson() { return {
  ...?billingCreditGrantsResourceBalanceCreditsApplied?.toJson(),
}; } 
 }
