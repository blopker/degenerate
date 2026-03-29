// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_transaction_treasury.dart';/// [Treasury](https://docs.stripe.com/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
final class IssuingTransactionTreasury2 {const IssuingTransactionTreasury2({this.issuingTransactionTreasury});

factory IssuingTransactionTreasury2.fromJson(Map<String, dynamic> json) { return IssuingTransactionTreasury2(
  issuingTransactionTreasury: IssuingTransactionTreasury.canParse(json) ? IssuingTransactionTreasury.fromJson(json) : null,
); }

final IssuingTransactionTreasury? issuingTransactionTreasury;

/// At least one variant must be present.
bool get isValid { return issuingTransactionTreasury != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingTransactionTreasury?.toJson(),
}; } 
 }
