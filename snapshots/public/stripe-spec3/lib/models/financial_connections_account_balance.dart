// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bank_connections_resource_balance.dart';/// The most recent information about the account's balance.
final class FinancialConnectionsAccountBalance {const FinancialConnectionsAccountBalance({this.bankConnectionsResourceBalance});

factory FinancialConnectionsAccountBalance.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccountBalance(
  bankConnectionsResourceBalance: BankConnectionsResourceBalance.canParse(json) ? BankConnectionsResourceBalance.fromJson(json) : null,
); }

final BankConnectionsResourceBalance? bankConnectionsResourceBalance;

/// At least one variant must be present.
bool get isValid { return bankConnectionsResourceBalance != null; } 
Map<String, dynamic> toJson() { return {
  ...?bankConnectionsResourceBalance?.toJson(),
}; } 
 }
