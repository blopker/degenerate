// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bank_connections_resource_balance_refresh.dart';/// The state of the most recent attempt to refresh the account balance.
final class FinancialConnectionsAccountBalanceRefresh {const FinancialConnectionsAccountBalanceRefresh({this.bankConnectionsResourceBalanceRefresh});

factory FinancialConnectionsAccountBalanceRefresh.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccountBalanceRefresh(
  bankConnectionsResourceBalanceRefresh: BankConnectionsResourceBalanceRefresh.canParse(json) ? BankConnectionsResourceBalanceRefresh.fromJson(json) : null,
); }

final BankConnectionsResourceBalanceRefresh? bankConnectionsResourceBalanceRefresh;

/// At least one variant must be present.
bool get isValid { return bankConnectionsResourceBalanceRefresh != null; } 
Map<String, dynamic> toJson() { return {
  ...?bankConnectionsResourceBalanceRefresh?.toJson(),
}; } 
 }
