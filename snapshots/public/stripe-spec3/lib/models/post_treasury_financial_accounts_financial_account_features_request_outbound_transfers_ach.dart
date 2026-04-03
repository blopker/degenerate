// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundTransfersAch(requested: $requested)'; } 
 }
