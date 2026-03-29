// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_treasury_financial_accounts_financial_account_request_features_outbound_transfers_ach.dart';import 'post_treasury_financial_accounts_financial_account_request_features_outbound_transfers_us_domestic_wire.dart';final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers({this.ach, this.usDomesticWire, });

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers(
  ach: json['ach'] != null ? PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch.fromJson(json['ach'] as Map<String, dynamic>) : null,
  usDomesticWire: json['us_domestic_wire'] != null ? PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersUsDomesticWire.fromJson(json['us_domestic_wire'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch? ach;

final PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersUsDomesticWire? usDomesticWire;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
  if (usDomesticWire != null) 'us_domestic_wire': usDomesticWire?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers copyWith({PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch Function()? ach, PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersUsDomesticWire Function()? usDomesticWire, }) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers(
  ach: ach != null ? ach() : this.ach,
  usDomesticWire: usDomesticWire != null ? usDomesticWire() : this.usDomesticWire,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers &&
          ach == other.ach &&
          usDomesticWire == other.usDomesticWire; } 
@override int get hashCode { return Object.hash(ach, usDomesticWire); } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfers(ach: $ach, usDomesticWire: $usDomesticWire)'; } 
 }
