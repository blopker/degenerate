// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bank_connections_resource_accountholder.dart';/// The account holder for whom accounts are collected in this session.
final class FinancialConnectionsSessionAccountHolder {const FinancialConnectionsSessionAccountHolder({this.bankConnectionsResourceAccountholder});

factory FinancialConnectionsSessionAccountHolder.fromJson(Map<String, dynamic> json) { return FinancialConnectionsSessionAccountHolder(
  bankConnectionsResourceAccountholder: BankConnectionsResourceAccountholder.canParse(json) ? BankConnectionsResourceAccountholder.fromJson(json) : null,
); }

final BankConnectionsResourceAccountholder? bankConnectionsResourceAccountholder;

/// At least one variant must be present.
bool get isValid { return bankConnectionsResourceAccountholder != null; } 
Map<String, dynamic> toJson() { return {
  ...?bankConnectionsResourceAccountholder?.toJson(),
}; } 
 }
