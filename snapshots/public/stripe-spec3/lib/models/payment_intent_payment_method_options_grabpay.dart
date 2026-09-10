// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';import 'payment_method_options_grabpay.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsGrabpay {
  const PaymentIntentPaymentMethodOptionsGrabpay({this.paymentMethodOptionsGrabpay = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsGrabpay._({required this.rawValue, required this.paymentMethodOptionsGrabpay,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsGrabpay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsGrabpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsGrabpay: parseAnyOfVariant<PaymentMethodOptionsGrabpay>(json, (value) => PaymentMethodOptionsGrabpay.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsGrabpay> paymentMethodOptionsGrabpay;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsGrabpay.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsGrabpay.isPresent) paymentMethodOptionsGrabpay.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsGrabpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsGrabpay(${toJson()})';
}
