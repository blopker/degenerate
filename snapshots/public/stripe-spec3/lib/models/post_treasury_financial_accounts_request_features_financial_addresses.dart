// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_treasury_financial_accounts_request_features_financial_addresses_aba.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses {const PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses({this.aba});

factory PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses(
  aba: json['aba'] != null ? PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba.fromJson(json['aba'] as Map<String, dynamic>) : null,
); }

final PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba? aba;

Map<String, dynamic> toJson() { return {
  if (aba != null) 'aba': aba?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'aba'}.contains(key)); } 
PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses copyWith({PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba Function()? aba}) { return PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses(
  aba: aba != null ? aba() : this.aba,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses &&
          aba == other.aba; } 
@override int get hashCode { return aba.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesFinancialAddresses(aba: $aba)'; } 
 }
