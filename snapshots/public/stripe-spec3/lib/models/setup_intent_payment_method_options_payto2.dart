// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_payto.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';
@immutable
final class SetupIntentPaymentMethodOptionsPayto2 {
  const SetupIntentPaymentMethodOptionsPayto2({this.setupIntentPaymentMethodOptionsPayto = const Omittable.absent(),
this.setupIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethodOptionsPayto2._({required this.rawValue, required this.setupIntentPaymentMethodOptionsPayto,
required this.setupIntentTypeSpecificPaymentMethodOptionsClient,});
  factory SetupIntentPaymentMethodOptionsPayto2.fromJson(Object? json) => SetupIntentPaymentMethodOptionsPayto2._(
    rawValue: Omittable(json),
    setupIntentPaymentMethodOptionsPayto: parseAnyOfVariant<SetupIntentPaymentMethodOptionsPayto>(json, (value) => SetupIntentPaymentMethodOptionsPayto.fromJson(value! as Map<String, dynamic>)),
setupIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<SetupIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SetupIntentPaymentMethodOptionsPayto> setupIntentPaymentMethodOptionsPayto;
final Omittable<SetupIntentTypeSpecificPaymentMethodOptionsClient> setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => setupIntentPaymentMethodOptionsPayto.isPresent || setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (setupIntentPaymentMethodOptionsPayto.isPresent) setupIntentPaymentMethodOptionsPayto.value?.toJson(),
if (setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent) setupIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsPayto2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethodOptionsPayto2(${toJson()})';
}
