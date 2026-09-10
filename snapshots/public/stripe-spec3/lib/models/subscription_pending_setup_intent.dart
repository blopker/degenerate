// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent.dart';/// You can use this [SetupIntent](https://docs.stripe.com/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication#scenario-2).
@immutable
final class SubscriptionPendingSetupIntent {
  const SubscriptionPendingSetupIntent({this.string = const Omittable.absent(),
this.setupIntent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionPendingSetupIntent._({required this.rawValue, required this.string,
required this.setupIntent,});
  factory SubscriptionPendingSetupIntent.fromJson(Object? json) => SubscriptionPendingSetupIntent._(
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
      other is SubscriptionPendingSetupIntent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionPendingSetupIntent(${toJson()})';
}
