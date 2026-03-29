// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestInboundTransfersAch(requested: $requested)'; } 
 }
