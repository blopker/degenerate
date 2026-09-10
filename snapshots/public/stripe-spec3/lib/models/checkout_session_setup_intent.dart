// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent.dart';/// The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://docs.stripe.com/api/checkout/sessions/expire) instead.
@immutable
final class CheckoutSessionSetupIntent {
  const CheckoutSessionSetupIntent({this.string = const Omittable.absent(),
this.setupIntent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CheckoutSessionSetupIntent._({required this.rawValue, required this.string,
required this.setupIntent,});
  factory CheckoutSessionSetupIntent.fromJson(Object? json) => CheckoutSessionSetupIntent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
setupIntent: parseAnyOfVariant<SetupIntent>(json, (value) => SetupIntent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<SetupIntent> setupIntent;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || setupIntent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (setupIntent.isPresent) setupIntent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CheckoutSessionSetupIntent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CheckoutSessionSetupIntent(${toJson()})';
}
