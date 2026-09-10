// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';import 'payment_method_options_giropay.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsGiropay {
  const PaymentIntentPaymentMethodOptionsGiropay({this.paymentMethodOptionsGiropay = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsGiropay._({required this.rawValue, required this.paymentMethodOptionsGiropay,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsGiropay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsGiropay._(
    rawValue: Omittable(json),
    paymentMethodOptionsGiropay: parseAnyOfVariant<PaymentMethodOptionsGiropay>(json, (value) => PaymentMethodOptionsGiropay.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsGiropay> paymentMethodOptionsGiropay;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsGiropay.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsGiropay.isPresent) paymentMethodOptionsGiropay.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsGiropay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsGiropay(${toJson()})';
}
