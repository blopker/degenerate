// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction.dart';/// The transaction being disputed.
@immutable
final class IssuingDisputeTransaction {
  const IssuingDisputeTransaction({this.string = const Omittable.absent(),
this.issuingTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingDisputeTransaction._({required this.rawValue, required this.string,
required this.issuingTransaction,});
  factory IssuingDisputeTransaction.fromJson(Object? json) => IssuingDisputeTransaction._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingTransaction: parseAnyOfVariant<IssuingTransaction>(json, (value) => IssuingTransaction.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingTransaction> issuingTransaction;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || issuingTransaction.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingTransaction.isPresent) issuingTransaction.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingDisputeTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingDisputeTransaction(${toJson()})';
}
