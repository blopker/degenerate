// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch {const PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountFeaturesRequestOutboundPaymentsAch(requested: $requested)'; } 
 }
