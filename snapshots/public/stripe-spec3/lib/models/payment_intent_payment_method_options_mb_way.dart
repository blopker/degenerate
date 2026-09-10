// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';import 'payment_method_options_mb_way.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsMbWay {
  const PaymentIntentPaymentMethodOptionsMbWay({this.paymentMethodOptionsMbWay = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsMbWay._({required this.rawValue, required this.paymentMethodOptionsMbWay,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsMbWay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsMbWay._(
    rawValue: Omittable(json),
    paymentMethodOptionsMbWay: parseAnyOfVariant<PaymentMethodOptionsMbWay>(json, (value) => PaymentMethodOptionsMbWay.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsMbWay> paymentMethodOptionsMbWay;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsMbWay.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsMbWay.isPresent) paymentMethodOptionsMbWay.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsMbWay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsMbWay(${toJson()})';
}
