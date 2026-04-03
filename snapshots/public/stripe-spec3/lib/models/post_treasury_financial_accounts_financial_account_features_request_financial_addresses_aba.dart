// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestFinancialAddressesAba(requested: $requested)'; } 
 }
