// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent_payment_method_options_us_bank_account.dart';import 'setup_intent_type_specific_payment_method_options_client.dart';
@immutable
final class SetupIntentPaymentMethodOptionsUsBankAccount2 {
  const SetupIntentPaymentMethodOptionsUsBankAccount2({this.setupIntentPaymentMethodOptionsUsBankAccount = const Omittable.absent(),
this.setupIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethodOptionsUsBankAccount2._({required this.rawValue, required this.setupIntentPaymentMethodOptionsUsBankAccount,
required this.setupIntentTypeSpecificPaymentMethodOptionsClient,});
  factory SetupIntentPaymentMethodOptionsUsBankAccount2.fromJson(Object? json) => SetupIntentPaymentMethodOptionsUsBankAccount2._(
    rawValue: Omittable(json),
    setupIntentPaymentMethodOptionsUsBankAccount: parseAnyOfVariant<SetupIntentPaymentMethodOptionsUsBankAccount>(json, (value) => SetupIntentPaymentMethodOptionsUsBankAccount.fromJson(value! as Map<String, dynamic>)),
setupIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<SetupIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => SetupIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SetupIntentPaymentMethodOptionsUsBankAccount> setupIntentPaymentMethodOptionsUsBankAccount;
final Omittable<SetupIntentTypeSpecificPaymentMethodOptionsClient> setupIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => setupIntentPaymentMethodOptionsUsBankAccount.isPresent || setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (setupIntentPaymentMethodOptionsUsBankAccount.isPresent) setupIntentPaymentMethodOptionsUsBankAccount.value?.toJson(),
if (setupIntentTypeSpecificPaymentMethodOptionsClient.isPresent) setupIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsUsBankAccount2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethodOptionsUsBankAccount2(${toJson()})';
}
