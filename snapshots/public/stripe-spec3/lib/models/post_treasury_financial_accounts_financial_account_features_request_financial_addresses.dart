// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_treasury_financial_accounts_financial_account_features_request_financial_addresses_aba.dart';/// Contains Features that add FinancialAddresses to the FinancialAccount.
final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses({this.aba});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses(
  aba: json['aba'] != null ? PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba.fromJson(json['aba'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba? aba;

Map<String, dynamic> toJson() { return {
  if (aba != null) 'aba': aba?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'aba'}.contains(key)); } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses copyWith({PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba Function()? aba}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses(
  aba: aba != null ? aba() : this.aba,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses &&
          aba == other.aba; } 
@override int get hashCode { return aba.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddresses(aba: $aba)'; } 
 }
