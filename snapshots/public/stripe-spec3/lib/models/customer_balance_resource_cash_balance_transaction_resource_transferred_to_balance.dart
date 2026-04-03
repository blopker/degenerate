// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';import 'customer_balance_resource_cash_balance_transaction_resource_transferred_to_balance_balance_transaction.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance {const CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance({required this.balanceTransaction});

factory CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance(
  balanceTransaction: OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),),
); }

/// The [Balance Transaction](https://docs.stripe.com/api/balance_transactions/object) that corresponds to funds transferred to your Stripe balance.
final CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction balanceTransaction;

Map<String, dynamic> toJson() { return {
  'balance_transaction': balanceTransaction.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('balance_transaction'); } 
CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance copyWith({CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction? balanceTransaction}) { return CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance(
  balanceTransaction: balanceTransaction ?? this.balanceTransaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance &&
          balanceTransaction == other.balanceTransaction; } 
@override int get hashCode { return balanceTransaction.hashCode; } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance(balanceTransaction: $balanceTransaction)'; } 
 }
