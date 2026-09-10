// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_cash_balance_transaction.dart';/// The [Cash Balance Transaction](https://docs.stripe.com/api/cash_balance_transactions/object) that brought the customer balance negative, triggering the clawback of funds.
@immutable
final class CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction {
  const CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction({this.string = const Omittable.absent(),
this.customerCashBalanceTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction._({required this.rawValue, required this.string,
required this.customerCashBalanceTransaction,});
  factory CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction.fromJson(Object? json) => CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
customerCashBalanceTransaction: parseAnyOfVariant<CustomerCashBalanceTransaction>(json, (value) => CustomerCashBalanceTransaction.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CustomerCashBalanceTransaction> customerCashBalanceTransaction;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || customerCashBalanceTransaction.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customerCashBalanceTransaction.isPresent) customerCashBalanceTransaction.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraftLinkedTransaction(${toJson()})';
}
