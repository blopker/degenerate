// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch {const PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesOutboundTransfersAch(requested: $requested)'; } 
 }
