// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_reversal.dart';/// This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
@immutable
final class RefundTransferReversal {
  const RefundTransferReversal({this.string = const Omittable.absent(),
this.transferReversal = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RefundTransferReversal._({required this.rawValue, required this.string,
required this.transferReversal,});
  factory RefundTransferReversal.fromJson(Object? json) => RefundTransferReversal._(
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
      other is RefundTransferReversal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RefundTransferReversal(${toJson()})';
}
