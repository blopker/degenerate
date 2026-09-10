// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_au_becs_debit.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsAuBecsDebit2 {
  const PaymentIntentPaymentMethodOptionsAuBecsDebit2({this.paymentIntentPaymentMethodOptionsAuBecsDebit = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsAuBecsDebit2._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsAuBecsDebit,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsAuBecsDebit2.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsAuBecsDebit2._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsAuBecsDebit: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsAuBecsDebit>(json, (value) => PaymentIntentPaymentMethodOptionsAuBecsDebit.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsAuBecsDebit> paymentIntentPaymentMethodOptionsAuBecsDebit;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsAuBecsDebit.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsAuBecsDebit.isPresent) paymentIntentPaymentMethodOptionsAuBecsDebit.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsAuBecsDebit2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsAuBecsDebit2(${toJson()})';
}
