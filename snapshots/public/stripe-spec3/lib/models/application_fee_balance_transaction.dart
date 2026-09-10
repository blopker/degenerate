// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';/// Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
@immutable
final class ApplicationFeeBalanceTransaction {
  const ApplicationFeeBalanceTransaction({this.string = const Omittable.absent(),
this.balanceTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ApplicationFeeBalanceTransaction._({required this.rawValue, required this.string,
required this.balanceTransaction,});
  factory ApplicationFeeBalanceTransaction.fromJson(Object? json) => ApplicationFeeBalanceTransaction._(
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
      other is ApplicationFeeBalanceTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ApplicationFeeBalanceTransaction(${toJson()})';
}
