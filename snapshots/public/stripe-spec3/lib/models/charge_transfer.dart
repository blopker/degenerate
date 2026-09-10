// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer.dart';/// ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
@immutable
final class ChargeTransfer {
  const ChargeTransfer({this.string = const Omittable.absent(),
this.transfer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ChargeTransfer._({required this.rawValue, required this.string,
required this.transfer,});
  factory ChargeTransfer.fromJson(Object? json) => ChargeTransfer._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
transfer: parseAnyOfVariant<Transfer>(json, (value) => Transfer.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Transfer> transfer;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || transfer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (transfer.isPresent) transfer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ChargeTransfer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ChargeTransfer(${toJson()})';
}
