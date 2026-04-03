// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundTransfersAch(requested: $requested)'; } 
 }
