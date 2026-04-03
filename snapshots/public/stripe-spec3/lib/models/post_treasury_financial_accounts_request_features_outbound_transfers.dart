// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_treasury_financial_accounts_request_features_outbound_transfers_ach.dart';import 'post_treasury_financial_accounts_request_features_outbound_transfers_us_domestic_wire.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers {const PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers({this.ach, this.usDomesticWire, });

factory PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers(
  ach: json['ach'] != null ? PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch.fromJson(json['ach'] as Map<String, dynamic>) : null,
  usDomesticWire: json['us_domestic_wire'] != null ? PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire.fromJson(json['us_domestic_wire'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch? ach;

final PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire? usDomesticWire;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
  if (usDomesticWire != null) 'us_domestic_wire': usDomesticWire?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ach', 'us_domestic_wire'}.contains(key)); } 
PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers copyWith({PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch Function()? ach, PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersUsDomesticWire Function()? usDomesticWire, }) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers(
  ach: ach != null ? ach() : this.ach,
  usDomesticWire: usDomesticWire != null ? usDomesticWire() : this.usDomesticWire,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers &&
          ach == other.ach &&
          usDomesticWire == other.usDomesticWire; } 
@override int get hashCode { return Object.hash(ach, usDomesticWire); } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfers(ach: $ach, usDomesticWire: $usDomesticWire)'; } 
 }
