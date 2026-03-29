// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsRequestFeaturesCardIssuing {const PostTreasuryFinancialAccountsRequestFeaturesCardIssuing({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesCardIssuing.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesCardIssuing(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesCardIssuing copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesCardIssuing(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesCardIssuing &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesCardIssuing(requested: $requested)'; } 
 }
