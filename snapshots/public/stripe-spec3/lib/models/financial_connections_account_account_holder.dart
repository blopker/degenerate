// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bank_connections_resource_accountholder.dart';/// The account holder that this account belongs to.
final class FinancialConnectionsAccountAccountHolder {const FinancialConnectionsAccountAccountHolder({this.bankConnectionsResourceAccountholder});

factory FinancialConnectionsAccountAccountHolder.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccountAccountHolder(
  bankConnectionsResourceAccountholder: BankConnectionsResourceAccountholder.canParse(json) ? BankConnectionsResourceAccountholder.fromJson(json) : null,
); }

final BankConnectionsResourceAccountholder? bankConnectionsResourceAccountholder;

/// At least one variant must be present.
bool get isValid { return bankConnectionsResourceAccountholder != null; } 
Map<String, dynamic> toJson() { return {
  ...?bankConnectionsResourceAccountholder?.toJson(),
}; } 
 }
