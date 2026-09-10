// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_reversal.dart';/// The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
@immutable
final class RefundSourceTransferReversal {
  const RefundSourceTransferReversal({this.string = const Omittable.absent(),
this.transferReversal = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RefundSourceTransferReversal._({required this.rawValue, required this.string,
required this.transferReversal,});
  factory RefundSourceTransferReversal.fromJson(Object? json) => RefundSourceTransferReversal._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
transferReversal: parseAnyOfVariant<TransferReversal>(json, (value) => TransferReversal.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TransferReversal> transferReversal;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || transferReversal.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (transferReversal.isPresent) transferReversal.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RefundSourceTransferReversal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RefundSourceTransferReversal(${toJson()})';
}
