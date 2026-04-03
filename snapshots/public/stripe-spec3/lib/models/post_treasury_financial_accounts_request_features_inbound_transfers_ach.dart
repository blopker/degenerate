// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch {const PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesInboundTransfersAch(requested: $requested)'; } 
 }
