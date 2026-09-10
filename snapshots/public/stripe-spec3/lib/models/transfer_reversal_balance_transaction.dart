// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';/// Balance transaction that describes the impact on your account balance.
@immutable
final class TransferReversalBalanceTransaction {
  const TransferReversalBalanceTransaction({this.string = const Omittable.absent(),
this.balanceTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TransferReversalBalanceTransaction._({required this.rawValue, required this.string,
required this.balanceTransaction,});
  factory TransferReversalBalanceTransaction.fromJson(Object? json) => TransferReversalBalanceTransaction._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
balanceTransaction: parseAnyOfVariant<BalanceTransaction>(json, (value) => BalanceTransaction.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BalanceTransaction> balanceTransaction;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || balanceTransaction.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (balanceTransaction.isPresent) balanceTransaction.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TransferReversalBalanceTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TransferReversalBalanceTransaction(${toJson()})';
}
