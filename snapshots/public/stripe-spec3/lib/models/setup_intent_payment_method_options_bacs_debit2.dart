// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_bacs_debit.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';
@immutable
final class SetupIntentPaymentMethodOptionsBacsDebit2 {
  const SetupIntentPaymentMethodOptionsBacsDebit2({this.setupIntentPaymentMethodOptionsBacsDebit = const Omittable.absent(),
this.setupIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethodOptionsBacsDebit2._({required this.rawValue, required this.setupIntentPaymentMethodOptionsBacsDebit,
required this.setupIntentTypeSpecificPaymentMethodOptionsClient,});
  factory SetupIntentPaymentMethodOptionsBacsDebit2.fromJson(Object? json) => SetupIntentPaymentMethodOptionsBacsDebit2._(
    rawValue: Omittable(json),
    setupIntentPaymentMethodOptionsBacsDebit: parseAnyOfVariant<SetupIntentPaymentMethodOptionsBacsDebit>(json, (value) => SetupIntentPaymentMethodOptionsBacsDebit.fromJson(value! as Map<String, dynamic>)),
setupIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<SetupIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SetupIntentPaymentMethodOptionsBacsDebit> setupIntentPaymentMethodOptionsBacsDebit;
final Omittable<SetupIntentTypeSpecificPaymentMethodOptionsClient> setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => setupIntentPaymentMethodOptionsBacsDebit.isPresent || setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (setupIntentPaymentMethodOptionsBacsDebit.isPresent) setupIntentPaymentMethodOptionsBacsDebit.value?.toJson(),
if (setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent) setupIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsBacsDebit2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethodOptionsBacsDebit2(${toJson()})';
}
