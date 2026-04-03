// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_treasury_financial_accounts_financial_account_request_features_inbound_transfers_ach.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers({this.ach});

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers(
  ach: json['ach'] != null ? PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfersAch.fromJson(json['ach'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfersAch? ach;

Map<String, dynamic> toJson() { return {
  if (ach != null) 'ach': ach?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ach'}.contains(key)); } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers copyWith({PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfersAch Function()? ach}) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers(
  ach: ach != null ? ach() : this.ach,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers &&
          ach == other.ach; } 
@override int get hashCode { return ach.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesInboundTransfers(ach: $ach)'; } 
 }
