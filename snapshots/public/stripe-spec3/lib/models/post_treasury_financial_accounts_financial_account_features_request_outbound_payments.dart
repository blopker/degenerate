// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_treasury_financial_accounts_financial_account_features_request_outbound_payments_ach.dart';import 'post_treasury_financial_accounts_financial_account_features_request_outbound_payments_us_domestic_wire.dart';/// Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments({this.ach, this.usDomesticWire, });

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments(
  ach: json['ach'] != null ? PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch.fromJson(json['ach'] as Map<String, dynamic>) : null,
  usDomesticWire: json['us_domestic_wire'] != null ? PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsUsDomesticWire.fromJson(json['us_domestic_wire'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch? ach;

final PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsUsDomesticWire? usDomesticWire;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
  if (usDomesticWire != null) 'us_domestic_wire': usDomesticWire?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments copyWith({PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch Function()? ach, PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsUsDomesticWire Function()? usDomesticWire, }) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments(
  ach: ach != null ? ach() : this.ach,
  usDomesticWire: usDomesticWire != null ? usDomesticWire() : this.usDomesticWire,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments &&
          ach == other.ach &&
          usDomesticWire == other.usDomesticWire; } 
@override int get hashCode { return Object.hash(ach, usDomesticWire); } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPayments(ach: $ach, usDomesticWire: $usDomesticWire)'; } 
 }
