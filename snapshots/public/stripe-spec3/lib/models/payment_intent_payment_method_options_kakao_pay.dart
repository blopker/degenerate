// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_kakao_pay_payment_method_options.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsKakaoPay {
  const PaymentIntentPaymentMethodOptionsKakaoPay({this.paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsKakaoPay._({required this.rawValue, required this.paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsKakaoPay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsKakaoPay._(
    rawValue: Omittable(json),
    paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions: parseAnyOfVariant<PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions>(json, (value) => PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions> paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions.isPresent) paymentFlowsPrivatePaymentMethodsKakaoPayPaymentMethodOptions.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsKakaoPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsKakaoPay(${toJson()})';
}
