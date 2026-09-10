// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_payto.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsPayto2 {
  const PaymentIntentPaymentMethodOptionsPayto2({this.paymentIntentPaymentMethodOptionsPayto = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsPayto2._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsPayto,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsPayto2.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsPayto2._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsPayto: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsPayto>(json, (value) => PaymentIntentPaymentMethodOptionsPayto.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsPayto> paymentIntentPaymentMethodOptionsPayto;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsPayto.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsPayto.isPresent) paymentIntentPaymentMethodOptionsPayto.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsPayto2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsPayto2(${toJson()})';
}
