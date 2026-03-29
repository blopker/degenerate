// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows {const PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesIntraStripeFlows(requested: $requested)'; } 
 }
