// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_financial_accounts_resource_closed_status_details.dart';/// 
@immutable final class TreasuryFinancialAccountsResourceStatusDetails {const TreasuryFinancialAccountsResourceStatusDetails({this.closed});

factory TreasuryFinancialAccountsResourceStatusDetails.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceStatusDetails(
  closed: json['closed'] != null ? TreasuryFinancialAccountsResourceClosedStatusDetails.fromJson(json['closed'] as Map<String, dynamic>) : null,
); }

/// Details related to the closure of this FinancialAccount
final TreasuryFinancialAccountsResourceClosedStatusDetails? closed;

Map<String, dynamic> toJson() { return {
  if (closed != null) 'closed': closed?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'closed'}.contains(key)); } 
TreasuryFinancialAccountsResourceStatusDetails copyWith({TreasuryFinancialAccountsResourceClosedStatusDetails? Function()? closed}) { return TreasuryFinancialAccountsResourceStatusDetails(
  closed: closed != null ? closed() : this.closed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceStatusDetails &&
          closed == other.closed; } 
@override int get hashCode { return closed.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceStatusDetails(closed: $closed)'; } 
 }
