// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_card.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';
@immutable
final class SetupIntentPaymentMethodOptionsCard2 {
  const SetupIntentPaymentMethodOptionsCard2({this.setupIntentPaymentMethodOptionsCard = const Omittable.absent(),
this.setupIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethodOptionsCard2._({required this.rawValue, required this.setupIntentPaymentMethodOptionsCard,
required this.setupIntentTypeSpecificPaymentMethodOptionsClient,});
  factory SetupIntentPaymentMethodOptionsCard2.fromJson(Object? json) => SetupIntentPaymentMethodOptionsCard2._(
    rawValue: Omittable(json),
    setupIntentPaymentMethodOptionsCard: parseAnyOfVariant<SetupIntentPaymentMethodOptionsCard>(json, (value) => SetupIntentPaymentMethodOptionsCard.fromJson(value! as Map<String, dynamic>)),
setupIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<SetupIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SetupIntentPaymentMethodOptionsCard> setupIntentPaymentMethodOptionsCard;
final Omittable<SetupIntentTypeSpecificPaymentMethodOptionsClient> setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => setupIntentPaymentMethodOptionsCard.isPresent || setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (setupIntentPaymentMethodOptionsCard.isPresent) setupIntentPaymentMethodOptionsCard.value?.toJson(),
if (setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent) setupIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsCard2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethodOptionsCard2(${toJson()})';
}
