// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payout.dart';/// If the payout reverses another, this is the ID of the original payout.
@immutable
final class PayoutOriginalPayout {
  const PayoutOriginalPayout({this.string = const Omittable.absent(),
this.payout = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PayoutOriginalPayout._({required this.rawValue, required this.string,
required this.payout,});
  factory PayoutOriginalPayout.fromJson(Object? json) => PayoutOriginalPayout._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
payout: parseAnyOfVariant<Payout>(json, (value) => Payout.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Payout> payout;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || payout.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (payout.isPresent) payout.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PayoutOriginalPayout && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PayoutOriginalPayout(${toJson()})';
}
