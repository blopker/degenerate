// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'refund.dart';/// ID of the refund responsible for the transfer reversal.
@immutable
final class TransferReversalSourceRefund {
  const TransferReversalSourceRefund({this.string = const Omittable.absent(),
this.refund = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TransferReversalSourceRefund._({required this.rawValue, required this.string,
required this.refund,});
  factory TransferReversalSourceRefund.fromJson(Object? json) => TransferReversalSourceRefund._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
refund: parseAnyOfVariant<Refund>(json, (value) => Refund.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Refund> refund;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || refund.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (refund.isPresent) refund.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TransferReversalSourceRefund && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TransferReversalSourceRefund(${toJson()})';
}
