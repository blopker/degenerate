// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesDepositInsurance(requested: $requested)'; } 
 }
