// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_private_payment_methods_samsung_pay_payment_method_options.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsSamsungPay {
  const PaymentIntentPaymentMethodOptionsSamsungPay({this.paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsSamsungPay._({required this.rawValue, required this.paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsSamsungPay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsSamsungPay._(
    rawValue: Omittable(json),
    paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions: parseAnyOfVariant<PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions>(json, (value) => PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions> paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.isPresent) paymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsSamsungPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsSamsungPay(${toJson()})';
}
