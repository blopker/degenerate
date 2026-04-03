// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance {const PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance({required this.requested});

factory PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance copyWith({bool? requested}) { return PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestFeaturesDepositInsurance(requested: $requested)'; } 
 }
