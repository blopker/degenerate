// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba {const PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesFinancialAddressesAba(requested: $requested)'; } 
 }
