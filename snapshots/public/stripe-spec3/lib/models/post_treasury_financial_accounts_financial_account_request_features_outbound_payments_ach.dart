// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch {const PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch({required this.requested});

factory PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch.fromJson(Map<String, dynamic> json) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch(
  requested: json['requested'] as bool,
); }

final bool requested;

Map<String, dynamic> toJson() { return {
  'requested': requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool; } 
PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch copyWith({bool? requested}) { return PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch(
  requested: requested ?? this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsFinancialAccountRequestFeaturesOutboundPaymentsAch(requested: $requested)'; } 
 }
