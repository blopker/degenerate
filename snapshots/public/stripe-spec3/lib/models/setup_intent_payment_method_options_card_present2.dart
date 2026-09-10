// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_card_present.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';
@immutable
final class SetupIntentPaymentMethodOptionsCardPresent2 {
  const SetupIntentPaymentMethodOptionsCardPresent2({this.setupIntentPaymentMethodOptionsCardPresent = const Omittable.absent(),
this.setupIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethodOptionsCardPresent2._({required this.rawValue, required this.setupIntentPaymentMethodOptionsCardPresent,
required this.setupIntentTypeSpecificPaymentMethodOptionsClient,});
  factory SetupIntentPaymentMethodOptionsCardPresent2.fromJson(Object? json) => SetupIntentPaymentMethodOptionsCardPresent2._(
    rawValue: Omittable(json),
    setupIntentPaymentMethodOptionsCardPresent: parseAnyOfVariant<SetupIntentPaymentMethodOptionsCardPresent>(json, (value) => SetupIntentPaymentMethodOptionsCardPresent.fromJson(value! as Map<String, dynamic>)),
setupIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<SetupIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SetupIntentPaymentMethodOptionsCardPresent> setupIntentPaymentMethodOptionsCardPresent;
final Omittable<SetupIntentTypeSpecificPaymentMethodOptionsClient> setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => setupIntentPaymentMethodOptionsCardPresent.isPresent || setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (setupIntentPaymentMethodOptionsCardPresent.isPresent) setupIntentPaymentMethodOptionsCardPresent.value?.toJson(),
if (setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent) setupIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsCardPresent2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethodOptionsCardPresent2(${toJson()})';
}
