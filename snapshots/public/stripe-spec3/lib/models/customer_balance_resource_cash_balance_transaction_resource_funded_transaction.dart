// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_balance_resource_cash_balance_transaction_resource_funded_transaction_resource_bank_transfer.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction {const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction({required this.bankTransfer});

factory CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction(
  bankTransfer: CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer.fromJson(json['bank_transfer'] as Map<String, dynamic>),
); }

final CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer bankTransfer;

Map<String, dynamic> toJson() { return {
  'bank_transfer': bankTransfer.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bank_transfer'); } 
CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction copyWith({CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer? bankTransfer}) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction(
  bankTransfer: bankTransfer ?? this.bankTransfer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction &&
          bankTransfer == other.bankTransfer; } 
@override int get hashCode { return bankTransfer.hashCode; } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction(bankTransfer: $bankTransfer)'; } 
 }
