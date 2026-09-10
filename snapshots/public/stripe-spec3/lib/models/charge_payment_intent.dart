// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent.dart';/// ID of the PaymentIntent associated with this charge, if one exists.
@immutable
final class ChargePaymentIntent {
  const ChargePaymentIntent({this.string = const Omittable.absent(),
this.paymentIntent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ChargePaymentIntent._({required this.rawValue, required this.string,
required this.paymentIntent,});
  factory ChargePaymentIntent.fromJson(Object? json) => ChargePaymentIntent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntent: parseAnyOfVariant<PaymentIntent>(json, (value) => PaymentIntent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntent> paymentIntent;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || paymentIntent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntent.isPresent) paymentIntent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ChargePaymentIntent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ChargePaymentIntent(${toJson()})';
}
