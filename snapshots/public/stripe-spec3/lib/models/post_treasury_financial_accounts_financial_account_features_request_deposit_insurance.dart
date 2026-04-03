// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
@immutable final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestDepositInsurance(requested: $requested)'; } 
 }
