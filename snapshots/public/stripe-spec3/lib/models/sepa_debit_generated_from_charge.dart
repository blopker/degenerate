// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'charge.dart';/// The ID of the Charge that generated this PaymentMethod, if any.
@immutable
final class SepaDebitGeneratedFromCharge {
  const SepaDebitGeneratedFromCharge({this.string = const Omittable.absent(),
this.charge = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SepaDebitGeneratedFromCharge._({required this.rawValue, required this.string,
required this.charge,});
  factory SepaDebitGeneratedFromCharge.fromJson(Object? json) => SepaDebitGeneratedFromCharge._(
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
      other is SepaDebitGeneratedFromCharge && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SepaDebitGeneratedFromCharge(${toJson()})';
}
