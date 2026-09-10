// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'charge.dart';/// ID of the latest [Charge object](https://docs.stripe.com/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
@immutable
final class PaymentIntentLatestCharge {
  const PaymentIntentLatestCharge({this.string = const Omittable.absent(),
this.charge = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentLatestCharge._({required this.rawValue, required this.string,
required this.charge,});
  factory PaymentIntentLatestCharge.fromJson(Object? json) => PaymentIntentLatestCharge._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
charge: parseAnyOfVariant<Charge>(json, (value) => Charge.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Charge> charge;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || charge.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (charge.isPresent) charge.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentLatestCharge && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentLatestCharge(${toJson()})';
}
