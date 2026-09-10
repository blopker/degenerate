// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_transaction.dart';/// The Transaction associated with this object.
@immutable
final class TreasuryOutboundPaymentsResourceReturnedStatusTransaction {
  const TreasuryOutboundPaymentsResourceReturnedStatusTransaction({this.string = const Omittable.absent(),
this.treasuryTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TreasuryOutboundPaymentsResourceReturnedStatusTransaction._({required this.rawValue, required this.string,
required this.treasuryTransaction,});
  factory TreasuryOutboundPaymentsResourceReturnedStatusTransaction.fromJson(Object? json) => TreasuryOutboundPaymentsResourceReturnedStatusTransaction._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
treasuryTransaction: parseAnyOfVariant<TreasuryTransaction>(json, (value) => TreasuryTransaction.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TreasuryTransaction> treasuryTransaction;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || treasuryTransaction.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (treasuryTransaction.isPresent) treasuryTransaction.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TreasuryOutboundPaymentsResourceReturnedStatusTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TreasuryOutboundPaymentsResourceReturnedStatusTransaction(${toJson()})';
}
